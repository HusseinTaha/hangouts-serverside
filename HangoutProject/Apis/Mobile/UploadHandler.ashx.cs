using HangoutProject.JsonDATA;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace HangoutProject.Apis.Mobile
{
    /// <summary>
    /// Summary description for UploadHandler
    /// </summary>
    public class UploadHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string request = HttpUtility.UrlDecode(context.Request.Params["json"]);
            try
            {

                JsonMethod jsmethod = JsonConvert.DeserializeObject<JsonMethod>(request);
                if (jsmethod.Method.Equals("AddPhoto") && jsmethod.Token != null )
                {
                    bool? isValid=false;
                    int? id = 0;
                    BLL.dsClient.ClientsSelectByClientTableAdapter.Instance.AuthenticateUser(jsmethod.Token,ref isValid,ref id);
                    if (isValid.Value)
                    {
                        string path = "~/Upload/"+id+"/";
                        HttpPostedFile x = context.Request.Files[0];
                        FileInfo fi = new FileInfo(x.FileName);
                        string ext = fi.Extension;
                        string url = DateTime.Now.Ticks.ToString() + fi.Extension;
                        CreateIfMissing(context, path);
                        x.SaveAs(context.Server.MapPath(path) + url);
                        int? wallid=0;
                        DateTime? dt = DateTime.ParseExact(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), "yyyy-MM-dd HH:mm:ss",
                                    System.Globalization.CultureInfo.InvariantCulture);
                          BLL.dsWall.WallTableAdapter.Instance.Save(ref wallid, id, url, dt);
                        context.Response.Write(true);
                        return;
                    }
                  
                }
                context.Response.Write(false);


            }
            catch (Exception e)
            {
                context.Response.Write(false);
            }
          
        }

        private void CreateIfMissing(HttpContext context,string path)
        {
            bool folderExists = Directory.Exists(context.Server.MapPath(path));
            if (!folderExists)
                Directory.CreateDirectory(context.Server.MapPath(path));
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