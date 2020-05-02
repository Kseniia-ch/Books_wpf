using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Books.Validation
{
    class PositiveIntValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            string message = "";

            int curLang = Convert.ToInt32(App.Current.Properties["Language"]);

            switch (curLang)
            {
                case 0:
                    message = "Введите число!";
                    break;
                case 1:
                    message = "Введіть число!";
                    break;
                case 2:
                    message = "Enter an number!";
                    break;
            }

            int result;
            if (Int32.TryParse((string)value, out result) && result >= 0)
                return new ValidationResult(true, null);
            return new ValidationResult(false, message);
        }
    }
}
