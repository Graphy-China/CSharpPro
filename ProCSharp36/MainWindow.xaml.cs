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

namespace ProCSharp36
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
	    // TODO
        }

        private int createTab(string tabName)
        {                
            int itemIndex = -1;
            if (true)
            {
                object contentUI = null;
                switch (tabName)
                {
                    case "Book":
                        contentUI = new BooksUC();
                        break;
                    case "Books":
                    case "XML Books":
                        contentUI = new BooksUC();
                        break;
                    default:
                        break;

                }

                if (contentUI != null)
                {
                    itemIndex = this.BookTab.Items.Add(new TabItem() { Header = tabName, Content = contentUI });
                }
            } 

            return itemIndex;
        }

        private void OnShowBook(object sender, RoutedEventArgs e)
        {
            var bookUI = new BookUC();
            /*
            bookUI.DataContext = new Data.Book
            {
                Title = "Professional C# 2012",
                Publisher = "APPress.Wrox",
                Isbn = "978-0-470-19173-8"
            };
             * */

            this.BookTab.SelectedIndex = this.BookTab.Items.Add(new TabItem() {Header="Book", Content=bookUI});
        }

        private void OnShowBooks(object sender, RoutedEventArgs e)
        {
            this.BookTab.SelectedIndex = createTab("Books");
            /*
            var booksUI = new BooksUC();
            this.BookTab.SelectedIndex = this.BookTab.Items.Add(new TabItem() { Header = "Books", Content = booksUI });
             * */
        }

        private void OnShowXMLBooks(object sender, RoutedEventArgs e)
        {
            var booksUI = new XmlBooksUI();
            this.BookTab.SelectedIndex = this.BookTab.Items.Add(new TabItem() { Header = "XML Books", Content = booksUI });
        }

        private void OnClose(object sender, ExecutedRoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void OnShowBook(object sender, ExecutedRoutedEventArgs e)
        {

        }

        private void OnShowBooks(object sender, ExecutedRoutedEventArgs e)
        {

        }

        private void OnShowAuthors(object sender, ExecutedRoutedEventArgs e)
        {

        }
        
        
    }
}
