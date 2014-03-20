using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;

namespace ProCSharp36.Data
{
    class Book : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private string title;
        public string Title 
        {
            get
            {
                return title;
            }

            set
            {
                this.title = value;
                
                if (PropertyChanged != null)
                    PropertyChanged(this, new PropertyChangedEventArgs("Title"));
                 
            }
        }

        private string publisher;
        public string Publisher 
        {
            get
            {
                return publisher;
            }

            set
            {
                this.publisher = value;
                
                if (PropertyChanged != null)
                    PropertyChanged(this, new PropertyChangedEventArgs("Publisher"));
                 

            }
        }

        private string isbn;
        public string Isbn
        {
            get
            {
                return isbn;
            }

            set
            {
                this.isbn = value;
                
                if (PropertyChanged != null)
                    PropertyChanged(this, new PropertyChangedEventArgs("Isbn"));
            }
            
        }
        

        private readonly List<string> authors = new List<string>();

        public string[] Authors
        {
            get
            {
                return authors.ToArray();
            }
        }

        public override string ToString()
        {
            return this.title;
        }

        public Book(string title, string publisher, string isbn, params string[] authors)
        {
            this.title = title;
            this.publisher = publisher;
            this.isbn = isbn;
            Isbn = isbn;
            this.authors.AddRange(authors);
        }

        public Book ()
        {
            this.title = "unknown";
            this.publisher = "unknown";
            this.isbn = "unknown";
        }


        
    }
}
