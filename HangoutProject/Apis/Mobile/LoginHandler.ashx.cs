using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HangoutProject.JsonDATA;
using Newtonsoft.Json;
using System.Data;

namespace HangoutProject.Apis.Mobile
{
    /// <summary>
    /// Summary description for LoginHandler
    /// </summary>
    public class LoginHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //JsonConvert.SerializeObject(p);
            string request = HttpUtility.UrlDecode(context.Request.Params["json"]);
            try
            {
                JsonLogin login = JsonConvert.DeserializeObject<JsonLogin>(request);
                bool? success = false;
                
                var data= BLL.dsClient.ClientTableAdapter.Instance.Login(login.Country, login.Mobile, login.Token, ref success);

                if (data.Rows.Count > 0)
                {
                    DataRow r = data.Rows[0];
                    string name = r["Name"].ToString();
                    context.Response.Write(name+":");
                }
                context.Response.ContentType = "text/plain";
                context.Response.Write(success);
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