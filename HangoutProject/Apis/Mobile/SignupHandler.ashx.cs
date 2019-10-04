using HangoutProject.JsonDATA;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HangoutProject.Api.Mobile
{
    /// <summary>
    /// Summary description for SignupHandler
    /// </summary>
    public class SignupHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //JsonConvert.SerializeObject(p);
            try
            {
                string request = HttpUtility.UrlDecode(context.Request.Params["json"]);
                JsonSignup signup = JsonConvert.DeserializeObject<JsonSignup>(request);
                int? id = 0;
                BLL.dsClient.ClientTableAdapter.Instance.Save(ref id, signup.Name, signup.Email, signup.Mobile, signup.Country, signup.Mac_Address, signup.Token);

                context.Response.ContentType = "text/plain";
                if (id != 0)
                    context.Response.Write(true);
                else
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