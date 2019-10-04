using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsContries
{
    public class CountriesTableAdapter : DAL.dsContriesTableAdapters.CountriesTableAdapter
    {
        private static CountriesTableAdapter _instance;

        public static  CountriesTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new CountriesTableAdapter();
                return _instance;
            }
        }
    }
}
