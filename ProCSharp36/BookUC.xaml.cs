using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using ProCSharp36.Data;

namespace ProCSharp36
{
    /// <summary>
    /// Interaction logic for BookUC.xaml
    /// </summary>
    public partial class BookUC : UserControl
    {
        public BookUC()
        {
            InitializeComponent();
        }

        private void OnShowBook(object sender, RoutedEventArgs e)
        {
            FrameworkElement elt = sender as FrameworkElement;
            if (elt != null)
            {
                var book = CheckModel(elt.DataContext);
                if (book != null)
                {
                    MessageBox.Show(book.Title, book.Isbn);
                }
            }
        }

        private void OnChangeBook(object sender, RoutedEventArgs e)
        {
            FrameworkElement elt = sender as FrameworkElement;
            if (elt != null)
            {
                var book = CheckModel(elt.DataContext);
                if (book != null)
                {
                    book.Title = "Start Up of You";
                    book.Isbn = "978-0-470-19173-9";
                }
            }
        }

        private Book CheckModel(object dataContext)
        {
            Book book = dataContext as Book;
            if (book == null)
            {
                if (dataContext as ObjectDataProvider != null)
                    book = (dataContext as ObjectDataProvider).Data as  Book;
            }

            return book;
        }
    }
}
