using System.Windows;
using System.Windows.Data;
using System.Windows.Controls;
using ProCSharp36.Data;

namespace ProCSharp36.Utilities
{
    class BookTemplateSelector : DataTemplateSelector
    {
        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item != null && item is Book)
            {
                var book = item as Book;
                switch (book.Publisher)
                {
                    case "Wrox Press":
                        return (container as FrameworkElement).FindResource("wroxTmpl") as DataTemplate;
                    case "For Dummies":
                        return (container as FrameworkElement).FindResource("dummyTmpl") as DataTemplate;
                    default:
                        return (container as FrameworkElement).FindResource("bookTmpl") as DataTemplate;
                }
            }

            return null;
        }
    }
}
