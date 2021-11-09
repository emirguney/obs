using System;
using System.Data.SqlClient;
using System.Data.Sql;

namespace ogrBilgiSistemi
{
    public partial class ogiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection bgl = new SqlConnection(@"Data Source=EMIRHAN\SQLEXPRESS; Initial Catalog=ogrBilgSist; Integrated Security=True");

            string ID, sifre;

            ID = KulAdi.Text;
            sifre = Sif.Text;

            SqlCommand cmd = new SqlCommand();
            string sorgu = "select * from ogrenciTbl where ID=@id and Sifre=@sifre";

            cmd = new SqlCommand(sorgu, bgl);
            cmd.Parameters.AddWithValue("@id", ID);
            cmd.Parameters.AddWithValue("@sifre", sifre);

            bgl.Open();

            SqlDataReader oku;
            oku = cmd.ExecuteReader();

            if (oku.Read())
            {
                Session.Add("ogrenciTbl", ID);
                Response.Redirect("omenu.aspx");

            }
            else
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "GİRİŞ BAŞARISIZ!", "<script>alert('Giriş başarısız.');</script>");


            bgl.Close();


            
        }
    }
}