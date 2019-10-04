using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.dsClientTableAdapters;

namespace BLL.dsClient
{
    public class ClientTableAdapter : DAL.dsClientTableAdapters.ClientTableAdapter
    {
        private static ClientTableAdapter _instance;

        public static  ClientTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new ClientTableAdapter();
                return  _instance;
            }
        }
    }
}
