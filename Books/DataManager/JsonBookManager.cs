using Books.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Books.DataManager
{
    class JsonBookManager
    {
        string filename = "books.json";

        public IEnumerable<Book> Load()
        {
            if (!File.Exists(filename))
            {
                return null;
            }
            string json = File.ReadAllText(filename);
            return JsonConvert.DeserializeObject<IEnumerable<Book>>(json);
        }

        public void Save(IEnumerable<Book> data)
        {
            string json = JsonConvert.SerializeObject(data, Formatting.Indented);
            File.WriteAllText(filename, json);
        }
    }
}
