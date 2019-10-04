using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HangoutProject.JsonDATA;
using Newtonsoft.Json;
using System.Data;
using System.IO;

namespace HangoutProject.Apis.Mobile
{
    /// <summary>
    /// Summary description for SettingsHandler
    /// </summary>
    public class SettingsHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {


            string request = HttpUtility.UrlDecode(context.Request.Params["json"]);
            try
            {
               
                JsonMethod jsmethod = JsonConvert.DeserializeObject<JsonMethod>(request);
                if (jsmethod.Token != null &&
                       !jsmethod.Token.Equals(Utils.GetHashString("0")))
                {

                    bool? isValid = false;
                    int? id = 0;
                    BLL.dsClient.ClientsSelectByClientTableAdapter.Instance.AuthenticateUser(jsmethod.Token, ref isValid, ref id);
                    if (isValid.Value)
                    {

                        if (jsmethod.Method.Equals("ChangePassword"))
                        {
                            bool? success=false;
                            ChangePass cp = JsonConvert.DeserializeObject<ChangePass>(jsmethod.Params.DATA.ToString());
                            BLL.dsClient.ClientChangeTokenTableAdapter.Instance.ChangePass(cp.OLD_TOKEN, cp.NEW_TOKEN, ref success);
                            if(success.Value)
                                context.Response.Write(true);
                            else
                                context.Response.Write(false);

                        }else
                            if (jsmethod.Method.Equals("ChangeName"))
                            {
                                 bool? success=false;
                                string name= jsmethod.Params.DATA.ToString();
                                BLL.dsClient.ClientTableAdapter.Instance.ChangeName(ref success, jsmethod.Token, name);
                                context.Response.Write(success.Value);
                            }
                            else
                                if (jsmethod.Method.Equals("AddContacts"))
                                {
                                   
                                    List<JsonContact> contacts = JsonConvert.DeserializeObject<List<JsonContact>>(jsmethod.Params.DATA.ToString());
                                    int? i = 0;
                                    foreach (JsonContact jc in contacts)
                                    {
                                        BLL.dsContacts.ContactsTableAdapter.Instance.AddContactsForClient(ref i, id, jc.Mobile, jc.ContactName, jc.Country);
                                    }
                                    context.Response.Write(true);
                                }
                                else
                                    if (jsmethod.Method.Equals("DeleteAccount"))
                                    {
                                        string path = "~/Upload/" + id + "/";
                                        deleteIfExists(context, path);
                                        bool? success = false;
                                        BLL.dsClient.ClientTableAdapter.Instance.AccountDelete(ref success, jsmethod.Token);
                                        context.Response.Write(success.Value);
                                    }

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

        private void deleteIfExists(HttpContext context, string folder)
        {
            bool folderExists = Directory.Exists(context.Server.MapPath(folder));
            if (folderExists)
            {
                string path = context.Server.MapPath(folder);
                string[] files = Directory.GetFiles(path, "*", SearchOption.AllDirectories);
                foreach (string file in files)
                {
                    File.Delete(file);
                }
                //then delete folder
                Directory.Delete(path);
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