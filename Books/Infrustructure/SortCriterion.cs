using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Markup;

namespace Books.Infrustructure
{
    public class SortCriterion : MarkupExtension
    {
        public string Field { get; set; }
        public bool Descending { get; set; }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return this;
        }
    }
}
