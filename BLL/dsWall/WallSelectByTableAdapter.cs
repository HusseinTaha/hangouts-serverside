using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.dsWall
{
    public class WallSelectByTableAdapter : DAL.dsWallTableAdapters.WallSelectByTableAdapter
    {
        private static WallSelectByTableAdapter _instance;

        public static WallSelectByTableAdapter Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new WallSelectByTableAdapter();
                return _instance;
            }
        }
    }
}
