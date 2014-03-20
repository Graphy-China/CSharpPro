using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Diagnostics.Contracts;
using System.Windows.Data;
using System.Globalization;

namespace ProCSharp36.Utilities
{
    [ValueConversion(typeof(string[]), typeof(string))]
    class StringArrayConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            Contract.Requires(value is string[]);
            Contract.Requires(parameter is string);

            string[] stringCollection = (string[])value;
            string separator = (string)parameter;
            return String.Join(separator, stringCollection);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
