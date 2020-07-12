using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using AccesData;

namespace AppWebShopFFF
{
    public partial class frmCatalogProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=FLAVIO-J;Initial Catalog=DbFFF;Persist Security Info=True;User ID=AppFFF;Password=Ucr2019");
        int codigo;
        String rb;
        String cb;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmDataSheet.aspx");
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            //codigo = Convert.ToInt32(Request.QueryString["codigo"].ToString());
            rb = Request.QueryString["tipoArticulo"];
            cb = Request.QueryString["calificacion"];
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select codigo From tblArticulo where calificacion = 'Electronofonos'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter dta = new SqlDataAdapter(cmd);
            dta.Fill(dt);
            //dtlCatalogo.DataSource = dt;
            dtlCatalogo.DataBind();

            con.Close();
        }
    }
}