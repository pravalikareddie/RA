using System;
using System.IO;
using System.Net;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Security;


public partial class FacultyLogin : System.Web.UI.Page
{
    string url = "";
    string client_secret = "idmappclient";

    string client_id = "@!270D.2F71.07C0.8008!0001!376D.E063!0008!C5C0.CEC4";
    string oidserver = "idp.gsu.edu";

    string strip = " ";
    string user_email = "";
    string redirect_url = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["state"] == null)
        {
            string path = Path.GetRandomFileName();
            path = path.Replace(".", ""); // Remove period.
            Session["state"] = path;
        }


        IPAddress[] array = Dns.GetHostAddresses("idp.gsu.edu");
        foreach (IPAddress ip in array)
        {

            strip += ip.ToString();
        }

        url = string.Format("https://" + oidserver + "/oxauth/restv1/authorize?response_type=code&scope=openid email gsupersonpantherid eduPersonAffiliation gsUser&nonce=2pwr1e&client_id={0}&redirect_uri=http://ipaweb.gsu.edu/search/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/FacultyLogin.aspx&state={1}",
                                                   @Uri.EscapeDataString(client_id),
                                                   @Uri.EscapeDataString(Session["state"].ToString()));

        if (Request.Params["code"] != null && (Session["state"].ToString() == Request.Params["state"].ToString()))
        {
            Response.Write(Request.Params["code"]);


            string code = Request.Params["code"];
            string session_state = Request.Params["session_state"];
            string state = Request.Params["state"];
            Response.Write(Request.Params["session_state"]);
            Response.Write(Request.Params["state"]);

            WebClient client = new WebClient();
            NetworkCredential credentials = new NetworkCredential(client_id, client_secret);
            client.Credentials = credentials;
            client.Headers.Add("Content-Type", "application/x-www-form-urlencoded");

            NameValueCollection formData = new System.Collections.Specialized.NameValueCollection();

            formData.Add("grant_type", "authorization_code");
            formData.Add("response_type", "id_token");
            formData.Add("code", code);
            formData.Add("client_id", client_id);
            formData.Add("scope", "openid+email+gsupersonpantherid");
            formData.Add("redirect_uri", "http://ipaweb.gsu.edu/search/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/FacultyForm.aspx");

            byte[] responseArray = client.UploadValues("https://" + oidserver + "/oxauth/restv1/token", "POST", formData);

            string result = System.Text.Encoding.UTF8.GetString(responseArray);

            Dictionary<string, string> json = new Dictionary<string, string>();
            string[] items = result.Split(',');
            char[] charsToTrim1 = { '"', '"', '{', '}' };

            foreach (string item in items)
            {
                string[] keyValue = item.Split(':');

                keyValue[0] = keyValue[0].Trim(charsToTrim1);
                keyValue[1] = keyValue[1].Trim(charsToTrim1);

                json.Add(keyValue[0], keyValue[1]);
            }

            string access_token = json["access_token"];
            string id_array_token = json["id_token"];

            string[] id_split_array_token = id_array_token.Split('.');

            string base64Url = id_split_array_token[1];
            string padded = base64Url.Length % 4 == 0 ? base64Url : base64Url + "====".Substring(base64Url.Length % 4);
            string base64 = padded.Replace("_", "/").Replace("-", "+");
            byte[] id_body = Convert.FromBase64String(base64);
            string bodystring = System.Text.Encoding.UTF8.GetString(id_body);

            Dictionary<string, string> json_id_token_body = new Dictionary<string, string>();
            string[] items1 = bodystring.Split(',');

            foreach (string item in items1)
            {
                string[] keyValue = item.Split(':');

                keyValue[0] = keyValue[0].Trim(charsToTrim1);
                keyValue[1] = keyValue[1].Trim(charsToTrim1);

                json_id_token_body.Add(keyValue[0], keyValue[1]);
            }

            string user_url = string.Format("https://" + oidserver + "/oxauth/restv1/userinfo?access_token={0}", @Uri.EscapeDataString(access_token));

            string responseJson = client.DownloadString(new Uri(user_url));

            Dictionary<string, string> json_user = new Dictionary<string, string>();
            string[] items2 = responseJson.Split(',');

            foreach (string item in items2)
            {
                string[] keyValue = item.Split(':');

                keyValue[0] = keyValue[0].Trim(charsToTrim1);
                keyValue[1] = keyValue[1].Trim(charsToTrim1);

                json_user.Add(keyValue[0], keyValue[1]);
            }
            Session["aid"] = json_user["email"];
            user_email = json_user["email"];

        }


        if (Session["aid"] != null)
        {

               
                Response.Redirect("http://ipaweb.gsu.edu/search/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/FacultyForm.aspx", false);


            
        }
        
    }

 

    protected void quickLinksBtn_Click(Object sender, EventArgs e)
    {
       
               
                Response.Redirect(url);
         
    }
}