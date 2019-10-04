using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsContacts
{
    public class ContactsTableAdapter : DAL.dsContactsTableAdapters.ContactsTableAdapter
    {
        private static ContactsTableAdapter _instance;

        public static  ContactsTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new ContactsTableAdapter();
                return _instance;
            }
        }
    }
}
