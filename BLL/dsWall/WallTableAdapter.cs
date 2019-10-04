using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsWall
{
    public class WallTableAdapter : DAL.dsWallTableAdapters.WallTableAdapter
    {
        private static WallTableAdapter _instance;

        public static WallTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new WallTableAdapter();
                return _instance;
            }
        }
    }
}
