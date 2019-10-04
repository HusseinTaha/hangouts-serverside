using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HangoutProject.JsonDATA
{
    public class JsonMethod
    {

        public string Method { get; set; }
        public string Token { get; set; }
        public JsonParams Params { get; set; }
        
    }


    public class JsonParams
    {
        public Object DATA { get; set; }
    }


    public class ChangePass
    {
        
          public string NEW_TOKEN {get;set;}
          public string OLD_TOKEN {get;set;}
        
    }
}