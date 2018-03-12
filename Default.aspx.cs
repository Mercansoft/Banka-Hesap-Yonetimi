using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Data _clsData = new Data();
    DataTable _dtHesap;
    DataTable _dtGirdi;
    DataTable _dtCikti;
    DataTable _dtBuGunGirdi;
    DataTable _dtBuGunCikti;   
    DataTable _dtBuAyGirdi;
    DataTable _dtBuAyCikti;   
    DataTable _dtBuYilGirdi;
    DataTable _dtBuYilCikti;
    double kalan;
    double cikti;
    double girdi;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _fncGenelIstatistik();
            _fncAyIstatistik();
            _fncBugunIstatistik();
            _fncYilIstatistik();
        }
    }
    private void _fncGenelIstatistik()
    {
        try
        {
            _dtGirdi = _clsData._fncVeriGetir("SELECT Sonuc =SUM(Tutar) FROM Islem WHERE HareketID=1");
                girdi = Convert.ToDouble(_dtGirdi.Rows[0]["Sonuc"]);
                _lblGenelToplamTutar.Text = string.Format("{0:0,0.00}", girdi.ToString()) + " TL";
        }
        catch (Exception)
        {
            
        }
        try
        {
            _dtCikti = _clsData._fncVeriGetir("SELECT Sonuc =SUM(Tutar) FROM Islem WHERE HareketID=2");
             cikti = Convert.ToDouble(_dtCikti.Rows[0]["Sonuc"]);
            _lblGenelToplamCikti.Text = string.Format("{0:0,0.00}", cikti.ToString()) + " TL";
        }
        catch (Exception)
        {
            
        }
        try
        {
            _dtHesap = _clsData._fncVeriGetir("SELECT * FROM Banka");
            _lblToplamBankaHesapAdet.Text = _dtHesap.Rows.Count.ToString();
        }
        catch (Exception)
        {
            
        }
    }
    private void _fncBugunIstatistik()
    {

        try
        {
            _dtBuGunGirdi = _clsData._fncVeriGetir("Select Sonuc =SUM(Tutar) from Islem where HareketID=1 AND DAY(Tarih) = DAY(GETDATE())");

             girdi = Convert.ToDouble(_dtBuGunGirdi.Rows[0]["Sonuc"]);

        }
        catch (Exception)
        {
            girdi = 0;
        }
        try
        {
            _dtBuGunCikti = _clsData._fncVeriGetir("Select Sonuc =SUM(Tutar) from Islem where HareketID=2 AND DAY(Tarih) = DAY(GETDATE())");
            
             cikti = Convert.ToDouble(_dtBuGunCikti.Rows[0]["Sonuc"]);
        }
        catch (Exception)
        {
            cikti =0;
        }
        try
        {
            kalan = girdi - cikti;
            _lblBugun_Cekilen.Text = cikti.ToString();
            _lblBugun_Yatirilan.Text = girdi.ToString();
            _lblBugun_Toplam.Text = kalan.ToString();
        }
        catch (Exception)
        {
            
        }

    }
    private void _fncAyIstatistik()
    {
        try
        {
            _dtBuAyGirdi = _clsData._fncVeriGetir("Select Sonuc =SUM(Tutar) from Islem where HareketID=1 AND MONTH(Tarih) = MONTH(GETDATE())");
            girdi = Convert.ToDouble(_dtBuAyGirdi.Rows[0]["Sonuc"]);
        }
        catch (Exception)
        {
            girdi = 0;
        }
        try
        {
            
            _dtBuAyCikti = _clsData._fncVeriGetir("Select Sonuc =SUM(Tutar) from Islem where HareketID=2 AND MONTH(Tarih) = MONTH(GETDATE())");
             cikti = Convert.ToDouble(_dtBuAyCikti.Rows[0]["Sonuc"]);

        }
        catch (Exception)
        {
            cikti = 0;
        }
        try
        {
            kalan = girdi - cikti;
            _lblBuAy_Cekilen.Text = cikti.ToString();
            _lblBuAy_Yatirilan.Text = girdi.ToString();
            _lblBuAy_Toplam.Text = kalan.ToString();
        }
        catch (Exception)
        {
            
        }

    }
    private void _fncYilIstatistik()
    {
        try
        {
            _dtBuYilGirdi = _clsData._fncVeriGetir("Select Sonuc =SUM(Tutar) from Islem where HareketID=1 AND YEAR(Tarih) = YEAR(GETDATE())");
             girdi = Convert.ToDouble(_dtBuYilGirdi.Rows[0]["Sonuc"]); 

        }
        catch (Exception)
        {
            girdi = 0;
        }
        try
        {
            _dtBuYilCikti = _clsData._fncVeriGetir("Select Sonuc =SUM(Tutar) from Islem where HareketID=2 AND YEAR(Tarih) = YEAR(GETDATE())");
            cikti = Convert.ToDouble(_dtBuYilCikti.Rows[0]["Sonuc"]);
        }
        catch (Exception)
        {
            cikti = 0;
        }
        try
        {
            kalan = girdi - cikti;
            _lblBuYil_Cekilen.Text = cikti.ToString();
            _lblBuYil_Yatirilan.Text = girdi.ToString();
            _lblBuYil_Toplam.Text = kalan.ToString();
        }
        catch (Exception)
        {
            
        }

    }
}