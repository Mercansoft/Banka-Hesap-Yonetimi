using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Banka : System.Web.UI.Page
{
    SqlConnection _cnn;
    SqlCommand _cmd;
    private string Baglan = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            _cnn = new SqlConnection(Baglan);
            _cnn.Open();
            _cmd = new SqlCommand("INSERT INTO Banka (BankaAdi) VALUES (@BankaAdi)",_cnn);
            _cmd.Parameters.AddWithValue("BankaAdi", Guvenlik._SqlBugKontrol(_txtBankaAdi.Text));
           _cmd.ExecuteNonQuery();
            _cmd.Dispose();
            _cnn.Close();
            _txtBankaAdi.Text = "";
        }
        catch (Exception)
        {
            
        }
    }
}