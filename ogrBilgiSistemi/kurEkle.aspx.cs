using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace ogrBilgiSistemi
{
    public partial class kurEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection bgl = new SqlConnection(@"Data Source=EMIRHAN\SQLEXPRESS;Initial Catalog=ogrBilgSist;Integrated Security=True");

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            bgl.Open();
            string kayit = "insert into kurlar(Kur_Bilgisi,togtadi,yogtadi,starih,ftarih) values (@kb,@tadi,@yadi,@starih,@ftarih)";
            SqlCommand cmd = new SqlCommand(kayit, bgl);
            cmd.Parameters.AddWithValue("@kb", TextBox1.Text);
            cmd.Parameters.AddWithValue("@tadi", TextBox2.Text);
            cmd.Parameters.AddWithValue("@yadi", TextBox3.Text);
            cmd.Parameters.AddWithValue("@starih", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ftarih", TextBox5.Text);
            
            bgl.Close();
            cmd.ExecuteNonQuery();

            Page.ClientScript.RegisterClientScriptBlock(GetType(), "Kur EKLENDİ!", "<script>alert('Kur Eklendi.');</script>");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            bgl.Open();
            int secili;
            secili = GridView2.SelectedIndex;
            GridViewRow row = GridView2.Rows[secili];
            int tc = Convert.ToInt32(row.Cells[1].Text);
            SqlCommand komut = new SqlCommand("delete from kur where @id=ID", bgl);
            komut.Parameters.Add("@id", ID);
            komut.ExecuteNonQuery();
            bgl.Close();
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        
    }
}