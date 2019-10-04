using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsSchedule
{
    public class ScheduleTableAdapter : DAL.dsScheduleTableAdapters.ScheduleTableAdapter
    {
        private static ScheduleTableAdapter _instance;

        public static ScheduleTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new ScheduleTableAdapter();
                return _instance;
            }
        }
    }
}
