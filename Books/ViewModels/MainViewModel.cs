using AutoMapper;
using Books.DataManager;
using Books.Infrustructure;
using Books.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;

namespace Books.ViewModels
{
    class MainViewModel : NotifyPropertyChanged
	{	
        public JsonBookManager JsonManager { get; set; }
		ObservableCollection<BookDTO> books;
		BookDTO selectedBook;

		private int size;
		private int imageSize;
		private int fontSize;
		private int fontSizeMenu;

		private int themeIndex;
		private int language;

		public ObservableCollection<BookDTO> Books
		{
			get => books;
			set
			{
				books = value;
				Notify();
			}
		}

		public BookDTO SelectedBook
		{
			get => selectedBook;
			set
			{
				selectedBook = value;
				Notify();
			}
		}
		public int Size
		{
			get => size;
			set
			{
				size = value;
				Notify();
				ChangeSize();
			}
		}

		public int ImageSize
		{
			get => imageSize;
			set
			{
				imageSize = value;
				Notify();
			}
		}

		public int FontSize
		{
			get => fontSize;
			set
			{
				fontSize = value;
				Notify();
			}
		}

		public int FontSizeMenu
		{
			get => fontSizeMenu;
			set
			{
				fontSizeMenu = value;
				Notify();
			}
		}

		public int ThemeIndex
		{
			get => themeIndex;
			set
			{
				themeIndex = value;
				Notify();
				ChangeTheme();
			}
		}

		public int Language
		{
			get => language;
			set
			{
				language = value;
				Notify();
				ChangeLanguage();
			}
			
		}

		public MainViewModel()
        {
			Size = Convert.ToInt32(App.Current.Properties["Size"]);
			Language = Convert.ToInt32(App.Current.Properties["Language"]);
			ThemeIndex = Convert.ToInt32(App.Current.Properties["Theme"]);	

			LoadBooks();
			ConfiugureCommands();
		}

		~MainViewModel()
		{
			SaveBooks();
		}

		private void LoadBooks()
		{
			var config = new MapperConfiguration(cfg =>
			{
				cfg.CreateMap<Book, BookDTO>().ForMember("Image", x => x.MapFrom(y => Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Images\\", y.Image)));
			});
			var mapper = config.CreateMapper();

			JsonManager = new JsonBookManager();
			Books = mapper.Map<ObservableCollection<BookDTO>>(new ObservableCollection<Book>(this.JsonManager.Load() ?? new List<Book>()));
		}

		private void SaveBooks()
		{
			var config = new MapperConfiguration(cfg =>
			{
				cfg.CreateMap<BookDTO, Book>().ForMember("Image", x => x.MapFrom(y => (y.Image).Replace(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Images\\"), "")));
			});
			var mapper = config.CreateMapper();

			Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Id));
			JsonManager.Save(mapper.Map<ObservableCollection<Book>>(Books.ToList()));
		}

		private void ConfiugureCommands()
		{
			AddCommand = new RelayCommand(x =>
			{

				BookDTO newBook = new BookDTO();
				EditViewModel vm = new EditViewModel(newBook, (Window)x);

				if (vm.SaveChanges)
				{
					Books.Add(newBook);
				}

				SelectedBook = newBook;

			});

			EditCommand = new RelayCommand(x =>
			{
				if (SelectedBook != null)
				{
					EditViewModel vm = new EditViewModel(SelectedBook, (Window)x);
				}
			});

			RemoveCommand = new RelayCommand(x =>
			{
				if (SelectedBook != null)
				{
					Books.Remove(SelectedBook);
				}
			});

			SortCommand = new RelayCommand(x =>
			{
				var selectedSortCriterion = (SortCriterion)x;
				
					if (selectedSortCriterion.Descending)
					{
						switch (selectedSortCriterion.Field)
						{
							case "Id":
								Books = new ObservableCollection<BookDTO>(Books.OrderByDescending(i => i.Id));
								break;
							case "Title":
								Books = new ObservableCollection<BookDTO>(Books.OrderByDescending(i => i.Title));
								break;
							case "Author":
								Books = new ObservableCollection<BookDTO>(Books.OrderByDescending(i => i.Author));
								break;
							case "Year":
								Books = new ObservableCollection<BookDTO>(Books.OrderByDescending(i => i.Year));
								break;
							case "Publisher":
								Books = new ObservableCollection<BookDTO>(Books.OrderByDescending(i => i.Publisher));
								break;
							case "Pages":
								Books = new ObservableCollection<BookDTO>(Books.OrderByDescending(i => i.Pages));
								break;
							case "Price":
								Books = new ObservableCollection<BookDTO>(Books.OrderByDescending(i => i.Price));
								break;
						};
					}
					else
					{
						switch (selectedSortCriterion.Field)
						{
							case "Id":
								Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Id));
								break;
							case "Title":
								Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Title));
								break;
							case "Author":
								Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Author));
								break;
							case "Year":
								Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Year));
								break;
							case "Publisher":
								Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Publisher));
								break;
							case "Pages":
								Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Pages));
								break;
							case "Price":
								Books = new ObservableCollection<BookDTO>(Books.OrderBy(i => i.Price));
								break;
						};
					}
			});
		}

		public ICommand AddCommand { get; set; }
		public ICommand EditCommand { get; set; }
		public ICommand RemoveCommand { get; set; }
		public ICommand SortCommand { get; set; }

		void ChangeSize()
		{
			App.Current.Properties["Size"] = size;

			switch (size)
			{
				case 2:
					ImageSize = 300;
					FontSize = 22;
					FontSizeMenu = 20;
					break;
				case 1:
					ImageSize = 250;
					FontSize = 20;
					FontSizeMenu = 18;
					break;
				default:
					ImageSize = 200;
					FontSize = 18;
					FontSizeMenu = 16;
					break;		
			}
		}

		void ChangeTheme()
		{
			App.Current.Properties["Theme"] = themeIndex;

			App.Current.Resources.MergedDictionaries.RemoveAt(App.Current.Resources.MergedDictionaries.Count - 1);
			App.Current.Resources.MergedDictionaries.RemoveAt(1);
			if (themeIndex == 0)
			{
				App.Current.Resources.MergedDictionaries.Add(new ResourceDictionary { Source = new Uri("/Dictionaries/LightTheme.xaml", UriKind.Relative) });
				App.Current.Resources.MergedDictionaries.Insert(1, new ResourceDictionary { Source = new Uri("pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml", UriKind.Absolute) });
			}
			else
			{
				App.Current.Resources.MergedDictionaries.Add(new ResourceDictionary { Source = new Uri("/Dictionaries/DarkTheme.xaml", UriKind.Relative) });
				App.Current.Resources.MergedDictionaries.Insert(1, new ResourceDictionary { Source = new Uri("pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Dark.xaml", UriKind.Absolute) });
			}
		}

		void ChangeLanguage()
		{
			App.Current.Properties["Language"] = language;

			App.Current.Resources.MergedDictionaries.RemoveAt(0);
			switch (language)
			{
				case 0:
					App.Current.Resources.MergedDictionaries.Insert(0, new ResourceDictionary() { Source = new Uri("/Dictionaries/ru-RU.xaml", UriKind.Relative) });
					break;
				case 1:
					App.Current.Resources.MergedDictionaries.Insert(0, new ResourceDictionary() { Source = new Uri("/Dictionaries/uk-UA.xaml", UriKind.Relative) });
					break;
				default:
					App.Current.Resources.MergedDictionaries.Insert(0, new ResourceDictionary() { Source = new Uri("/Dictionaries/en-US.xaml", UriKind.Relative) });
					break;
			}
		}
	}
}
