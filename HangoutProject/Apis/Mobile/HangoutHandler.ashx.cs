using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HangoutProject.JsonDATA;
using Newtonsoft.Json;

namespace HangoutProject.Apis.Mobile
{
    /// <summary>
    /// Summary description for HangoutHandler
    /// </summary>
    public class HangoutHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string request = HttpUtility.UrlDecode(context.Request.Params["json"]);
            try
            {
                JsonHangout login = JsonConvert.DeserializeObject<JsonHangout>(request);

                  bool? isValid = false;
                    int? clid = 0;
                    BLL.dsClient.ClientsSelectByClientTableAdapter.Instance.AuthenticateUser(login.Token, ref isValid, ref clid);
                    if (isValid.Value)
                    {
                        int? id = 0;
                        DateTime? dt = DateTime.ParseExact(login.Date, "yyyy-MM-dd HH:mm:ss",
                                               System.Globalization.CultureInfo.InvariantCulture);
                        BLL.dsSchedule.ScheduleTableAdapter.Instance.SaveByToken(ref id, login.Token, dt, login.Hangout);

                        context.Response.ContentType = "text/plain";
                        if (id != 0)
                            context.Response.Write(true);
                        else
                            context.Response.Write(false);
                        return;
                    }
                    context.Response.Write(false);
               
            }
            catch (Exception e)
            {
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