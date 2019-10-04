
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HangoutProject.JsonDATA;
using Newtonsoft.Json;

namespace HangoutProject.Apis.Mobile
{
    /// <summary>
    /// Summary description for WallHandler
    /// </summary>
    /// 

    public class RefreshHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {


            string request = HttpUtility.UrlDecode(context.Request.Params["json"]);
            try
            {

                JsonMethod jsmethod = JsonConvert.DeserializeObject<JsonMethod>(request);
                if (jsmethod.Method.Equals("RefreshWall") && jsmethod.Token != null &&
                !jsmethod.Token.Equals(Utils.GetHashString("0")))
                {
                    bool? isValid = false;
                    int? id = 0;
                    BLL.dsClient.ClientsSelectByClientTableAdapter.Instance.AuthenticateUser(jsmethod.Token, ref isValid, ref id);
                    if (isValid.Value)
                    {
                        int index = Convert.ToInt32(jsmethod.Params.DATA);
                        object walls;
                        walls = BLL.dsWall.WallSelectByTableAdapter.Instance.SelectAll(jsmethod.Token, id, index).AsEnumerable().Select(row => new JsonWall
                        {
                            ID = Convert.ToInt32(row["ID"].ToString()),
                            Name = row["Name"].ToString(),
                            ClientID = Convert.ToInt32(row["ClientID"].ToString()),
                            Photo = row["Photo"].ToString(),
                            Date = row["Date"].ToString()
                        });
                        context.Response.Write(JsonConvert.SerializeObject(walls));
                        return;
                    }
                }

                if (jsmethod.Method.Equals("RefreshShcedule") && jsmethod.Token != null &&
               !jsmethod.Token.Equals(Utils.GetHashString("0")))
                {
                    bool? isValid = false;
                    int? id = 0;
                    BLL.dsClient.ClientsSelectByClientTableAdapter.Instance.AuthenticateUser(jsmethod.Token, ref isValid, ref id);
                    if (isValid.Value)
                    {
                        string[] data = jsmethod.Params.DATA.ToString().Split('-');
                        int month = Convert.ToInt32(data[0]), year = Convert.ToInt32(data[1]);
                        object schedules;
                        schedules = BLL.dsSchedule.ScheduleSelectByTableAdapter.Instance.SchedulesSelectAllByClientDate(jsmethod.Token, id, month, year).AsEnumerable().Select(row => new JsonSchedule
                        {
                            ID = Convert.ToInt32(row["ID"].ToString()),
                            Name = row["Name"].ToString(),
                            ClientID = Convert.ToInt32(row["ClientID"].ToString()),
                            Hangout = row["Hangout"].ToString(),
                            Date = row["Date"].ToString()
                        });
                        context.Response.Write(JsonConvert.SerializeObject(schedules));
                        return;
                    }
                }

                context.Response.Write("[]");



            }
            catch (Exception e)
            {
                context.Response.Write("[]");
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