using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Giris : System.Web.UI.Page
{
    Data _clsData = new Data();
    SqlConnection _cnn;
    SqlCommand _cmd;
    private string Baglan = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        _cnn = new SqlConnection(Baglan);
        _cmd = new SqlCommand("SELECT * FROM Yonetici WHERE KullaniciAdi=@KullaniciAdi AND Sifre=@Sifre", _cnn);
        _cnn.Open();
        _cmd.Parameters.AddWithValue("KullaniciAdi", Guvenlik._SqlBugKontrol(_txtKullaniciAdi.Text));
        _cmd.Parameters.AddWithValue("Sifre", Guvenlik._SqlBugKontrol(_txtSifre.Text));
        SqlDataReader _dr = _cmd.ExecuteReader();
        if (_dr.Read())
        {
            Session["YoneticiID"] = Convert.ToInt32(_dr["YoneticiID"]);
            Session["KullaniciAdi"] = _dr["KullaniciAdi"].ToString();
            Response.Redirect("Default.aspx");
        }
        else
        {
            Literal1.Text = "<div class='login_invalid'><span class='icon'></span>Şifre veya Kullanıcı Adı Yanlış</div>";

        }
    }
}