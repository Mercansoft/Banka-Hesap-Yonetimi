using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HesapHareketi : System.Web.UI.Page
{
    Data _clsData = new Data();
    SqlConnection _cnn;
    SqlCommand _cmd;
    private string Baglan = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _fncHesapHareketi();
            _fncBanka();
        }
    }
    private void _fncHesapHareketi()
    {
        _drpHesapHareket.DataSource = _clsData._fncVeriGetir("SELECT * FROM Hareket");
        _drpHesapHareket.DataValueField = "HareketID";
        _drpHesapHareket.DataTextField = "HareketAdi";
        _drpHesapHareket.DataBind();
    }
    private void _fncBanka()
    {

        _drpBanka.DataSource = _clsData._fncVeriGetir("SELECT * FROM Banka");
        _drpBanka.DataValueField = "BankaID";
        _drpBanka.DataTextField = "BankaAdi";
        _drpBanka.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            _cnn = new SqlConnection(Baglan);
            _cnn.Open();
            _cmd = new SqlCommand("INSERT INTO Islem (BankaID,HareketID,Tutar,Tarih) VALUES (@BankaID,@HareketID,@Tutar,@Tarih)", _cnn);
            _cmd.Parameters.AddWithValue("BankaID", Convert.ToInt32(_drpBanka.SelectedValue));
            _cmd.Parameters.AddWithValue("HareketID", Convert.ToInt32(_drpHesapHareket.SelectedValue));
            _cmd.Parameters.AddWithValue("Tutar", Convert.ToDouble(_txtMiktar.Text));
            _cmd.Parameters.AddWithValue("Tarih", Convert.ToDateTime(DateTime.Now));
            _cmd.ExecuteNonQuery();
            _cnn.Close();
            _lblDurum.Text = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button><strong>Tebrikler! </strong> "+_drpBanka.SelectedItem.Text+" Hesabınıza Miktar Eklendi.</div>";
        }
        catch (Exception)
        {
            _lblDurum.Text = "<div class='alert alert-error'><button type='button' class='close' data-dismiss='alert'>×</button><strong>Hata!</strong>Hesabınıza Miktar Eklenirken Hata Oluştu.</div>";
        }
    }

    protected void _txtMiktar_TextChanged(object sender, EventArgs e)
    {
        try
        {
            if (_txtMiktar.Text == "") _txtMiktar.Text = "0";

            decimal sayi = Convert.ToDecimal(_txtMiktar.Text);

            _txtMiktar.Text = string.Format("{0:0,0.00}", sayi);
        }
        catch (Exception)
        {
            _txtMiktar.Text = "";
        }

    }
}