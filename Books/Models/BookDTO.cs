using Books.Infrustructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Books.Models
{
    class BookDTO: NotifyPropertyChanged
    {
        static int idmax = 0;
        int id;
        string title;
        string author;
        int year;
        string publisher;
        int pages;
        double price;
        string image;

        public int Id 
        {
            get => id;
            set
            {
                id = value;
                if(idmax < value)
                {
                    idmax = value;
                }
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

        public BookDTO()
        {
            Id = ++idmax;
        }
    }
}
