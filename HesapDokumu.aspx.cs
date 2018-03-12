using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HesapDokumu : System.Web.UI.Page
{
    Data _clsData = new Data();
    DataTable _dtHesap;
    DataTable _dtCikti;
    DataTable _dtGirdi;
    double kalan;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _fncHesaplar();
        }
        try
        {
            _fncHesapToplam(Guvenlik._SqlBugKontrol(Request.QueryString["myp"].ToString()));
        }
        catch (Exception)
        {
            
        }
    }
    private void _fncHesaplar()
    {
        _lstHesaplar.DataSource = _clsData._fncVeriGetir("SELECT * FROM Banka");
        _lstHesaplar.DataBind();
    }
    private void _fncHesapToplam(string BankaID)
    {
        try
        {
            _dtHesap = _clsData._fncVeriGetir("SELECT Islem.IslemID,Islem.BankaID,Banka.BankaAdi,Hareket.HareketAdi,Islem.Tutar,Islem.Tarih FROM Islem INNER JOIN Banka ON Islem.IslemID = Banka.BankaID INNER JOIN Hareket ON Islem.IslemID = Hareket.HareketID WHERE Islem.BankaID=" + BankaID.ToString());
            _lblBankaAdi.Text = _dtHesap.Rows[0]["BankaAdi"].ToString();
            _hypGirdi.NavigateUrl = "Detay.aspx?Girdi=" + _dtHesap.Rows[0]["BankaID"].ToString();
            _hypCikti.NavigateUrl = "Detay.aspx?Cikti=" + _dtHesap.Rows[0]["BankaID"].ToString();
            _hypHesapDokumu.NavigateUrl = "Detay.aspx?HesapDokum=" + _dtHesap.Rows[0]["BankaID"].ToString();
            _dtGirdi = _clsData._fncVeriGetir("SELECT Sonuc =SUM(Tutar) FROM Islem WHERE HareketID=1 AND BankaID=" + BankaID.ToString());
            _dtCikti = _clsData._fncVeriGetir("SELECT Sonuc =SUM(Tutar) FROM Islem WHERE HareketID=2 AND BankaID=" + BankaID.ToString());
            try
            {
                kalan = Convert.ToDouble(_dtGirdi.Rows[0]["Sonuc"]) - Convert.ToDouble(_dtCikti.Rows[0]["Sonuc"]);
            }
            catch (Exception)
            {
                
            }
            try
            {
                if (kalan == 0.0)
                {
                    _lblCikti.Text = string.Format("{0:0,0.00}", Convert.ToDouble(_dtCikti.Rows[0]["Sonuc"].ToString())) + " TL";
                    _lblKalanToplam.Text = "-"+_lblCikti.Text;
                }
                _lblCikti.Text = string.Format("{0:0,0.00}", Convert.ToDouble(_dtCikti.Rows[0]["Sonuc"].ToString())) + " TL";
            }
            catch (Exception)
            {
                
            }
            try
            {
                if (kalan == 0.0)
                {
                    _lblGirdi.Text = string.Format("{0:0,0.00}", Convert.ToDouble(_dtGirdi.Rows[0]["Sonuc"].ToString())) + " TL";
                    _lblKalanToplam.Text = _lblGirdi.Text;
                }
                _lblGirdi.Text = string.Format("{0:0,0.00}", Convert.ToDouble(_dtGirdi.Rows[0]["Sonuc"].ToString())) + " TL";
            }
            catch (Exception)
            {
                
            }
            if (kalan != 0.0)
            {
                _lblKalanToplam.Text = string.Format("{0:0,0.00}", Convert.ToDouble(kalan.ToString())) + " TL"; 
            }


        }
        catch (Exception)
        {
            
        }
    }
}