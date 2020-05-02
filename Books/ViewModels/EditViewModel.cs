using Books.Infrustructure;
using Books.Models;
using Books.Views;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Books.ViewModels
{
    class EditViewModel : NotifyPropertyChanged
    {
        EditView view;

        BookDTO currentBook;

        int fontSize;
        int fontSizeValidatiov;

        string title;
        string author;
        int year;
        string publisher;
        int pages;
        double price;
        string image;

        public bool SaveChanges { get; set; } = false;

        public int FontSize
        {
            get => fontSize;
            set
            {
                fontSize = value;
                Notify();
            }
        }

        public int FontSizeValidatiov
        {
            get => fontSizeValidatiov;
            set
            {
                fontSizeValidatiov = value;
                Notify();
            }
        }

        public BookDTO CurrentBook 
        {
            get => currentBook;
            set
            {
                currentBook = value;
                Notify();
            }
        }
        
        public string Title
        {
            get => title;
            set
            {
                title = value;
                Notify();
            }
        }
        
        public string Author
        {
            get => author;
            set
            {
                author = value;
                Notify();
            }
        }
        
        public int Year
        {
            get => year;
            set
            {
                year = value;
                Notify();
            }
        }
    
        public string Publisher
        {
            get => publisher;
            set
            {
                publisher = value;
                Notify();
            }
        }

        public int Pages
        {
            get => pages;
            set
            {
                pages = value;
                Notify();
            }
        }

        public double Price
        {
            get => price;
            set
            {
                price = value;
                Notify();
            }
        }

        public string Image
        {
            get => image;
            set
            {
                image = value;
                Notify();
            }
        }

        public EditViewModel(BookDTO selectedBook, Window owner = null)
        {
            Configure();
            SetSize();

            CurrentBook = selectedBook;
            Title = selectedBook.Title;
            Author = selectedBook.Author;
            Year = selectedBook.Year;
            Publisher = selectedBook.Publisher;
            Pages = selectedBook.Pages;
            Price = selectedBook.Price;
            Image = selectedBook.Image;

            view = new EditView();
            view.Owner = owner;
            view.DataContext = this;
            view.Closing += EditView_Closing;      
            view.ShowDialog();
        }

        private void EditView_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (SaveChanges)
            {
                CurrentBook.Title       = Title;
                CurrentBook.Author      = Author;
                CurrentBook.Year        = Year;
                CurrentBook.Publisher   = Publisher;
                CurrentBook.Pages       = Pages;
                CurrentBook.Price       = Price;
                CurrentBook.Image       = Image;
            }
        }

        private void Configure()
        {
            ChangeImage = new RelayCommand(x =>
            {
                OpenFileDialog dialog = new OpenFileDialog();
                dialog.Filter = "Image Files(*.BMP;*.JPG;*.GIF;*.PNG)|*.BMP;*.JPG; *.JPEG; *.GIF; *.PNG";
                dialog.InitialDirectory = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Images\\");
                dialog.RestoreDirectory = true;

                if (dialog.ShowDialog() == true)
                {
                    Image = dialog.FileName;
                }
               
            });

            SaveCommand = new RelayCommand(x =>
            {
                SaveChanges = true;
                view.Close();
            });

            СancelCommand = new RelayCommand(x =>
            {
                view.Close();
            });
        }

        void SetSize()
        {
            switch (Convert.ToInt32(App.Current.Properties["Size"]))
            {
                case 0:
                    FontSize = 18;
                    FontSizeValidatiov = 14;
                    break;
                case 1:
                    FontSize = 20;
                    FontSizeValidatiov = 16;
                    break;
                case 2:
                    FontSize = 22;
                    FontSizeValidatiov = 18;
                    break;
            }
        }

        public ICommand ChangeImage { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand СancelCommand { get; set; }

    }
}
