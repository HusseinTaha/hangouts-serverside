using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HangoutProject.JsonDATA
{
    public class JsonSchedule
    {


        public int ID { get; set; }
        public int ClientID { get; set; }
        public String Name { get; set; }
        public String Date { get; set; }
        public String Hangout { get; set; }

    }
}