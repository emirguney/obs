using System;
using System.Web.UI;
using System.Data.SqlClient;

namespace ogrBilgiSistemi
{
    public partial class ygiris1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection bgl = new SqlConnection(@"Data Source=EMIRHAN\SQLEXPRESS; Initial Catalog=ogrBilgSist; Integrated Security=True");

            string kAdi, sifre;

            kAdi = TextBox3.Text;
            sifre = TextBox2.Text;

            SqlCommand cmd = new SqlCommand();
            string sorgu = "select * from yonTbl where Kadi=@id and Sifre=@sifre";

            cmd = new SqlCommand(sorgu, bgl);
            cmd.Parameters.AddWithValue("@id", kAdi);
            cmd.Parameters.AddWithValue("@sifre", sifre);

            bgl.Open();

            SqlDataReader oku;
            oku = cmd.ExecuteReader();

            if (oku.Read())
            {
                Session.Add("yonTbl", kAdi);
                Response.Redirect("ymenu.aspx");

            }
            else

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "GİRİŞ BAŞARISIZ!", "<script>alert('Giriş başarısız.');</script>");


            bgl.Close();
        }
    }
}