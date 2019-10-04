using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsClient
{
    public class ClientsSelectByClientTableAdapter : DAL.dsClientTableAdapters.ClientsSelectByClientTableAdapter
    {
        private static ClientsSelectByClientTableAdapter _instance;

        public static  ClientsSelectByClientTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new ClientsSelectByClientTableAdapter();
                return  _instance;
            }
        }
    }
}
