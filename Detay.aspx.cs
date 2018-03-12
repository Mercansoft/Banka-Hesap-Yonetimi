using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detay : System.Web.UI.Page
{
    Data _clsData = new Data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Session["GeldigiSayfa"] = Request.UrlReferrer.AbsoluteUri.ToString();
        }
        try
        {
            _fncHesapDetayGirdi(Guvenlik._SqlBugKontrol(Request.QueryString["Girdi"].ToString()));
            Session["Girdi"] = Guvenlik._SqlBugKontrol(Request.QueryString["Girdi"].ToString());
        }
        catch (Exception)
        {
            
        }
        try
        {
            _fncHesapDetayCikti(Guvenlik._SqlBugKontrol(Request.QueryString["Cikti"].ToString()));
            Session["Cikti"] = Guvenlik._SqlBugKontrol(Request.QueryString["Cikti"].ToString());
        }
        catch (Exception)
        {

        }
        try
        {
            _fncHesapDetayHesapDokum(Guvenlik._SqlBugKontrol(Request.QueryString["HesapDokum"].ToString()));
            Session["HesapDokum"] = Guvenlik._SqlBugKontrol(Request.QueryString["HesapDokum"].ToString());
        }
        catch (Exception)
        {

        }
        try
        {
            _clsData._Metot_SQL_Calistir("DELETE FROM Islem WHERE HesapID="+Guvenlik._SqlBugKontrol(Request.QueryString["Sil"].ToString()));
            Response.Redirect(Session["GeldigiSayfa"].ToString());
        }
        catch (Exception)
        {
            
        }
    }
    private void _fncHesapDetayGirdi(string BankaID)
    {
        try
        {
            Repeater1.DataSource = _clsData._fncVeriGetir("SELECT Islem.IslemID,Islem.BankaID,Banka.BankaAdi,Hareket.HareketAdi,Islem.Tutar,Islem.Tarih FROM Islem INNER JOIN Banka ON Islem.BankaID = Banka.BankaID INNER JOIN Hareket ON Islem.HareketID = Hareket.HareketID WHERE Islem.HareketID=1 AND Islem.BankaID=" + BankaID.ToString());
            Repeater1.DataBind();
        }
        catch (Exception)
        {

        }
    }
    private void _fncHesapDetayCikti(string BankaID)
    {
        try
        {
            Repeater1.DataSource = _clsData._fncVeriGetir("SELECT Islem.IslemID,Islem.BankaID,Banka.BankaAdi,Hareket.HareketAdi,Islem.Tutar,Islem.Tarih FROM Islem INNER JOIN Banka ON Islem.BankaID = Banka.BankaID INNER JOIN Hareket ON Islem.HareketID = Hareket.HareketID WHERE Islem.HareketID=2 AND Islem.BankaID=" + BankaID.ToString());
            Repeater1.DataBind();
        }
        catch (Exception)
        {

        }
    }
    private void _fncHesapDetayHesapDokum(string BankaID)
    {
        try
        {
            Repeater1.DataSource = _clsData._fncVeriGetir("SELECT Islem.IslemID,Islem.BankaID,Banka.BankaAdi,Hareket.HareketAdi,Islem.Tutar,Islem.Tarih FROM Islem INNER JOIN Banka ON Islem.BankaID = Banka.BankaID INNER JOIN Hareket ON Islem.HareketID = Hareket.HareketID WHERE Islem.BankaID=" + BankaID.ToString());
            Repeater1.DataBind();
        }
        catch (Exception)
        {

        }
    }
}