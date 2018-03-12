using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{
    private string Baglan = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    Data _clsData = new Data();
    DataTable _dtAyar;
    DataTable _dtLisanslama;
    TimeSpan fark;
    string Url;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["YoneticiID"] == null)
            {
                Response.Redirect("Giris.aspx");
            }
           // _fncLisanslama();
            Label1.Text = Session["KullaniciAdi"].ToString();
        }
    }
    private void _fncLisanslama()
    {
        string GetUrl = HttpContext.Current.Request.Url.Host.ToString();
        DataTable _dtLisanslama = new DataTable();
        try
        {

             net.mercanyazilim.LisansSorgulama webservis = new net.mercanyazilim.LisansSorgulama();
           _dtLisanslama = webservis._fncLisansSorgulama(GetUrl);
        }
        catch (IndexOutOfRangeException ex)
        {
            _pnlKapat.Visible = false;
            Mail._fncLisansMailGonder(_dtLisanslama.Rows[0]["WebAdres"].ToString(), HttpContext.Current.Request.Url.Host.ToString(), Request.ServerVariables["REMOTE_ADDR"].ToString());
            Response.Write("<br><br><br><br><br><br><br><br><br><center><font size='5'>Lisanssız Kullanım!</font></center>");
        }
        catch (WebException ex)
        {
            //Mesaj.Body = "Lisanslanan Domain : " + LisanslananDomain.ToString() + " <br><br>Kullanılan Domain : " + KullanilanDomain.ToString() + " <br><br>IP Adres : " + IPAdres.ToString() + "<br><br> Tarih :" + DateTime.Now.ToLongTimeString();
            //  Mail._fncMailGonder("yavuz@mercanyazilim.net","Lisans Hata Robotu",HttpContext.Current.Request.Url.Host.ToString() +" Adresinden Hata alındı. <br><br> Çözüm ; <br> 1-| Web Servisinizin Çalışıp Çalışmadığını Kontrol Ediniz.<br> 2-| Lisansın <br>"+ex.Message.ToString());
            //Response.Write("<br><br><br><br><br><br><br><br><br><center><font size='5'>Hata! : " + ex.Message.ToString() + "</font></center>");
        }
        finally
        {

        }

        try
        {
            DateTime BitisTarih = Convert.ToDateTime(_dtLisanslama.Rows[0]["BitisTarihi"]);
            fark = BitisTarih - DateTime.Now;
            Url = _dtLisanslama.Rows[0]["WebAdres"].ToString();
        }
        catch (Exception)
        {

        }
        if (_dtLisanslama.Rows.Count != null)
        {
            if (Url != GetUrl)
            {
                try
                {
                    _pnlKapat.Visible = false;
                    Mail._fncLisansMailGonder(_dtLisanslama.Rows[0]["WebAdres"].ToString(), HttpContext.Current.Request.Url.Host.ToString(), Request.ServerVariables["REMOTE_ADDR"].ToString());
                }
                catch (Exception)
                {

                }
                Response.Write("<br><br><br><br><br><br><br><br><br><center><font size='5'>Lisanssız Kullanım!</font></center>");

            }
            else
            {
                if (fark.Hours < 1)
                {
                    _pnlKapat.Visible = false;
                    Mail._fncLisansMailGonder(_dtLisanslama.Rows[0]["WebAdres"].ToString(), HttpContext.Current.Request.Url.Host.ToString(), Request.ServerVariables["REMOTE_ADDR"].ToString());
                    Response.Write("<br><br><br><br><br><br><br><br><br><center><font size='5'>Lisans Süreniz Doldu!</font></center>");
                }
            }
        }

    }
}