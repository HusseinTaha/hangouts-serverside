using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HangoutProject.JsonDATA
{
    public class JsonInit
    {
  

       
    public bool isCountries {get; set;}

    public bool isContacts   {get; set;}

    public bool isWalls { get; set; }

    public bool isSchedules  {get; set;}


    public object Countries { get; set; }

    public object Contacts {get; set;}

    public object Walls {get; set;}

    public object Schedules  {get; set;}


    public JsonInit()
    {
        isContacts = false;
        isCountries = false;
        isSchedules = false;
        isWalls = false;
    }
    }
}