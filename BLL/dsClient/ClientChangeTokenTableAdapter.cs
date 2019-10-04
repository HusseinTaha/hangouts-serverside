using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsClient
{
    public class ClientChangeTokenTableAdapter : DAL.dsClientTableAdapters.ClientChangeTokenTableAdapter
    {
        private static ClientChangeTokenTableAdapter _instance;

        public static  ClientChangeTokenTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new ClientChangeTokenTableAdapter();
                return _instance;
            }
        }
    }
}
