using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsSchedule
{
    public class ScheduleSelectByTableAdapter : DAL.dsScheduleTableAdapters.ScheduleSelectByTableAdapter
    {
        private static ScheduleSelectByTableAdapter _instance;

        public static ScheduleSelectByTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new ScheduleSelectByTableAdapter();
                return _instance;
            }
        }
    }
}
