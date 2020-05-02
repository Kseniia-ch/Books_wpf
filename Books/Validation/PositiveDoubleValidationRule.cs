using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Windows.Controls;

namespace Books.Validation
{
    class PositiveDoubleValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            string message = "";

            int curLang = Convert.ToInt32(App.Current.Properties["Language"]);

            switch (curLang)
            {
                case 0:
                    message = "Введите десятичную дробь!";
                    break;
                case 1:
                    message = "Введіть десятковий дріб!";
                    break;
                case 2:
                    message = "Enter a decimal number!";
                    break;
            }

            double result;
            if (Double.TryParse((string)value, NumberStyles.AllowDecimalPoint, CultureInfo.CurrentCulture, out result) && result >= 0)
                return new ValidationResult(true, null);
            return new ValidationResult(false, message);

        }
    }
}
