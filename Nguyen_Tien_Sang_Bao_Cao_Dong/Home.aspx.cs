using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Nguyen_Tien_Sang_Bao_Cao_Dong
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Select name from sys.tables";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            CheckBoxList1.DataSource = dt;
            CheckBoxList1.DataTextField = "name";
            CheckBoxList1.DataValueField = "name";
            CheckBoxList1.DataBind();
            sqlconn.Close();
        }
    }
}