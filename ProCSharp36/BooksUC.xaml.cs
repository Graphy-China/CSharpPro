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
    /// Interaction logic for BooksUC.xaml
    /// </summary>
    public partial class BooksUC : UserControl
    {
        public BooksUC()
        {
            InitializeComponent();
        }

        private void OnAddBook(object sender, RoutedEventArgs e)
        {
            var books = (this.FindResource("theBooks") as ObjectDataProvider).Data as IList<Data.Book>;
            if (books != null)
            {
                books.Add(new Data.Book (
                    ".NET 3.5 Wrox Box", "Wrox Press","Wrox Press","978-0470-38799-3"
                ));
            }
        }
    }
}
