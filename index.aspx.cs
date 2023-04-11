using MimeKit;
using System;
using MailKit.Net.Smtp;
using MailKit;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.Net;
using System.IO;

namespace peopleplumber
{
    public partial class index : System.Web.UI.Page

    {

        public string errMsg = "";

        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void BtnGetMortgage_Click(object sender, EventArgs e)
        {

            if (IsReCaptchValid())
            {
                try
                {

                    this.errMsg = "";

                    if (Request.Form.Count > 0)
                    {
                    string fullname = "";
                    string email = "";
                    string Mobile = "";
                    string pcode = "";
                    string mortgagetype = "";


                    int keyNo = 0;

                    foreach (string k in Request.Form.AllKeys)
                    {
                        switch (k)
                        {
                            case "fullname":

                                fullname = Request.Form[keyNo].ToString();

                                break;

                            case "email":

                                email = Request.Form[keyNo].ToString();

                                break;

                            case "Mobile":

                                Mobile = Request.Form[keyNo].ToString();

                                break;

                            case "pcode":

                                pcode = Request.Form[keyNo].ToString();

                                break;

                            case "mortgagetype":
                                mortgagetype = Request.Form[keyNo].ToString();

                                break;

                            default:
                                break;
                        }

                        keyNo++;
                    }

                    string connString = @"Data Source=209.159.148.122;Initial Catalog=peoplemortgage;User ID=ftp_admin;Password=Crypto1971paul!!";

                    string cmdText = @"INSERT INTO dbo.mortgage_stage
                                        (fullname,email,Mobile,pcode,mortgagetype)
                                        VALUES
                                        (@fullname,@email,@Mobile,@pcode,@mortgagetype);";

                    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmdText, connString);

                    da.SelectCommand.Parameters.Add("@fullname", System.Data.SqlDbType.VarChar, 250).Value = fullname;
                    da.SelectCommand.Parameters.Add("@email", System.Data.SqlDbType.VarChar, 250).Value = email;
                    da.SelectCommand.Parameters.Add("@Mobile", System.Data.SqlDbType.VarChar, 250).Value = Mobile;
                    da.SelectCommand.Parameters.Add("@pcode", System.Data.SqlDbType.VarChar, 250).Value = pcode;
                    da.SelectCommand.Parameters.Add("@mortgagetype", System.Data.SqlDbType.VarChar, 250).Value = mortgagetype;


                        da.Fill(new System.Data.DataTable());

                        Response.Write("<script>aalert(`Thank you`);</script>");

                        var emailsend = new MimeMessage();
                        emailsend.From.Add(new MailboxAddress("People Profit", "info@peopleprofit.info"));
                        emailsend.To.Add(new MailboxAddress("paul Butler", "paul@credma.co.uk"));

                        emailsend.Subject = "PeopleProfit Sign Up";
                        emailsend.Body = new TextPart(MimeKit.Text.TextFormat.Plain)
                        {
                            Text = "New member sign up\n\n" + @fullname + "\n" + @email + "\n" + @Mobile + "\n" + @pcode + "\n" + @mortgagetype
                        };
                        using (var smtp = new SmtpClient())
                        {
                            smtp.Connect("peopleprofit.info", 465, true);

                            // Note: only needed if the SMTP server requires authentication
                            smtp.Authenticate("paul@peopleprofit.info", "Lapt0p99!!");

                            smtp.Send(emailsend);
                            smtp.Disconnect(true);
                        }

                        da.Dispose();


                    }

                }
                catch (Exception ex)
                {
                    this.errMsg = ex.Message;
                }

            }

            else
            {
                lblMessage1.Text = "this is invalid";
            }

        }


        public bool IsReCaptchValid()
        {
            var result = false;
            var captchaResponse = Request.Form["g-recaptcha-response"];
            var secretKey = "6Ld8bnUlAAAAAPrNgj8QSED2pJhmPdUM2Y0tHAdI";
            var apiUrl = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            var requestUri = string.Format(apiUrl, secretKey, captchaResponse);
            var request = (HttpWebRequest)WebRequest.Create(requestUri);

            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    JObject jResponse = JObject.Parse(stream.ReadToEnd());
                    var isSuccess = jResponse.Value<bool>("success");
                    result = (isSuccess) ? true : false;
                }
            }
            return result;
        }


    }


}