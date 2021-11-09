using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


namespace ogrBilgiSistemi
{
    public partial class ogrenciIslem : System.Web.UI.Page
    {
        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }       
      
        SqlConnection bgl = new SqlConnection(@"Data Source=EMIRHAN\SQLEXPRESS;Initial Catalog=ogrBilgSist;Integrated Security=True");
        

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            bgl.Open();
            string kayit = "insert into ogrenciTbl(Tc_kimlik_no,Adı,Soyadı,Telefon_Numarası,Sifre,Kur_Bilgisi) values (@tc,@adi,@sadi,@telno,@sifre,@kurbil)";
            SqlCommand cmd = new SqlCommand(kayit, bgl);
            cmd.Parameters.AddWithValue("@tc", TextBox1.Text);
            cmd.Parameters.AddWithValue("@adi", TextBox2.Text);
            cmd.Parameters.AddWithValue("@sadi", TextBox3.Text);
            cmd.Parameters.AddWithValue("@telno", TextBox4.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBox5.Text);
            cmd.Parameters.AddWithValue("@kurbil", TextBox6.Text);
            bgl.Close();
            cmd.ExecuteNonQuery();
            
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "Öğrenci EKLENDİ!", "<script>alert('Öğrenci Eklendi.');</script>");
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            bgl.Open();
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            int tc = Convert.ToInt32(row.Cells[1].Text);
            SqlCommand komut = new SqlCommand("delete from ogrenciTbl where @tc=Tc_kimlik_no", bgl);
            komut.Parameters.Add("@tc", tc);
            komut.ExecuteNonQuery();
            bgl.Close();
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            bgl.Open();
            string kayit = "insert into ogrenciTbl(Tc_kimlik_no,Adı,Soyadı,Telefon_Numarası,Sifre,Kur_Bilgisi) values (@tc,@adi,@sadi,@telno,@sifre,@kurbil)";
            SqlCommand cmd = new SqlCommand(kayit, bgl);
            cmd.Parameters.AddWithValue("@tc", TextBox1.Text);
            cmd.Parameters.AddWithValue("@adi", TextBox2.Text);
            cmd.Parameters.AddWithValue("@sadi", TextBox3.Text);
            cmd.Parameters.AddWithValue("@telno", TextBox4.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBox5.Text);
            cmd.Parameters.AddWithValue("@kurbil", TextBox6.Text);
            cmd.ExecuteNonQuery();

            Page.ClientScript.RegisterClientScriptBlock(GetType(), "Öğrenci EKLENDİ!", "<script>alert('Öğrenci Eklendi.');</script>");
            bgl.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bgl.Open();
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            int tc = Convert.ToInt32(row.Cells[1].Text);
            SqlCommand komut = new SqlCommand("delete from ogrenciTbl where @tc=Tc_kimlik_no", bgl);
            komut.Parameters.Add("@tc", tc);
            komut.ExecuteNonQuery();
            bgl.Close();
        }
        

        
    }
}