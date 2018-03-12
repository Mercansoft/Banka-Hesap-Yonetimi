using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BankaList : System.Web.UI.Page
{
    Data _clsData = new Data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                _fncBanka();
            }
            catch (Exception)
            {
                
            }
        }
        try
        {
          //  _clsData._Metot_SQL_Calistir("DELETE FROM Banka WHERE BankaID="+Guvenlik._SqlBugKontrol(Request.QueryString["Sil"].ToString()));
            _fncBanka();
        }
        catch (Exception)
        {
            
        }
    }

    private void _fncBanka()
    {
        _lstBanka.DataSource = _clsData._fncVeriGetir("SELECT * FROM Banka");
        _lstBanka.DataBind();
    }

}