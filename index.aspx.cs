using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace peopleplumber


{
    public partial class index : System.Web.UI.Page

    {

        public string errMsg = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGetMortgage_Click(object sender, EventArgs e)
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

                    da.Dispose();


                }

            }
            catch (Exception ex)
            {
                this.errMsg = ex.Message;
            }

        }




    }
}