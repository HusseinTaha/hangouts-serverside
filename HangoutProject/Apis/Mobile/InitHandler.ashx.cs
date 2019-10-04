using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HangoutProject.JsonDATA;
using Newtonsoft.Json;

namespace HangoutProject.Apis.Mobile
{
    /// <summary>
    /// Summary description for InitHandler
    /// </summary>
    public class InitHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            

            string request = HttpUtility.UrlDecode(context.Request.Params["json"]);
            try
            {
                JsonInit jsoninit =  new JsonInit();
                
                JsonMethod jsmethod = JsonConvert.DeserializeObject<JsonMethod>(request);
                if (jsmethod.Method.Equals("Countries") && jsmethod.Token!=null &&
                    jsmethod.Token.Equals(Utils.GetHashString("0")))
                {
                    jsoninit.Countries = BLL.dsContries.CountriesTableAdapter.Instance.GetData(0).AsEnumerable().Select(row=> new JsonCountry
                     {
                         ID= Convert.ToInt32(row["ID"].ToString()),
                          Name = row["Name"].ToString(),
                         Phone_ext = Convert.ToInt32(row["Phone_ext"].ToString())
                     });
                    jsoninit.isCountries = true;
                  
                }
                else
                    if (jsmethod.Method.Equals("AddContacts") && jsmethod.Token != null &&
                        !jsmethod.Token.Equals(Utils.GetHashString("0")))
                    {
                        bool? isValid = false;
                        int? id = 0;
                        BLL.dsClient.ClientsSelectByClientTableAdapter.Instance.AuthenticateUser(jsmethod.Token, ref isValid, ref id);
                        if (isValid.Value)
                        {
                            List<JsonContact> contacts = JsonConvert.DeserializeObject<List<JsonContact>>(jsmethod.Params.DATA.ToString());
                            int? i = 0;
                            foreach (JsonContact jc in contacts)
                            {
                                BLL.dsContacts.ContactsTableAdapter.Instance.AddContactsForClient(ref i, id, jc.Mobile, jc.ContactName, jc.Country);
                            }
                        }
                    }
                    else
                        if (jsmethod.Method.Equals("Init") && jsmethod.Token != null &&
                        !jsmethod.Token.Equals(Utils.GetHashString("0")))
                        {
                            bool? isValid = false;
                            int? id = 0;
                            BLL.dsClient.ClientsSelectByClientTableAdapter.Instance.AuthenticateUser(jsmethod.Token, ref isValid, ref id);
                            if (isValid.Value)
                            {
                                jsoninit.Walls = BLL.dsWall.WallSelectByTableAdapter.Instance.SelectAll(jsmethod.Token, id, 0).AsEnumerable().Select(row => new JsonWall
                                {
                                    ID = Convert.ToInt32(row["ID"].ToString()),
                                    Name = row["Name"].ToString(),
                                    ClientID = Convert.ToInt32(row["ClientID"].ToString()),
                                    Photo = row["Photo"].ToString(),
                                    Date = row["Date"].ToString()
                                });
                                jsoninit.isWalls = true;

                                int month = DateTime.Now.Month;
                                int year = DateTime.Now.Year;
                                jsoninit.Schedules = BLL.dsSchedule.ScheduleSelectByTableAdapter.Instance.SchedulesSelectAllByClientDate(jsmethod.Token, id, month, year).AsEnumerable().Select(row => new JsonSchedule
                                {
                                    ID = Convert.ToInt32(row["ID"].ToString()),
                                    Name = row["Name"].ToString(),
                                    ClientID = Convert.ToInt32(row["ClientID"].ToString()),
                                    Hangout = row["Hangout"].ToString(),
                                    Date = row["Date"].ToString()
                                });
                                jsoninit.isSchedules = true;
                            }
                            else //not valid Authentication failed
                            {
                                context.Response.Write(false);
                                return;
                            }
                        }

                        
                    context.Response.Write(JsonConvert.SerializeObject(jsoninit));
               
            }
            catch (Exception e)
            {
               // context.Response.Write(e.Message);
                context.Response.Write(false);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}