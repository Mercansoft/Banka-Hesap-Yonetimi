using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ayar : System.Web.UI.Page
{
    Data _clsData = new Data();
    DataTable _dtAyar;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _fncYonetici();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
           // _clsData._Metot_SQL_Calistir("UPDATE Yonetici SET KullaniciAdi='"+Guvenlik._SqlBugKontrol(_txtKullaniciAdi.Text)+"', Sifre='"+Guvenlik._SqlBugKontrol(_txtSifre.Text)+"' WHERE YoneticiID=1");
            Label1.Text = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button><strong>Tebrikler! </strong> Yönetici Ayarlarınız Güncellendi.</div>";
        }
        catch (Exception)
        {
            
        }
    }
    private void _fncYonetici()
    {
        try
        {
            _dtAyar = _clsData._fncVeriGetir("SELECT * FROM Yonetici");
            _txtKullaniciAdi.Text = _dtAyar.Rows[0]["KullaniciAdi"].ToString();
            _txtSifre.Text = _dtAyar.Rows[0]["Sifre"].ToString();
        }
        catch (Exception)
        {
            
        }
    }
}