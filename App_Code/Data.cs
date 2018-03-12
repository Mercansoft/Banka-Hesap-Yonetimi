using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Data
/// </summary>
public class Data
{
    private string Baglan = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    bool deger;
    public DataTable _fncVeriGetir(string _sTrSQL)
    {
        DataTable _dtVeriGetir = new DataTable();


        try
        {
            SqlConnection _SqlCnnBaglan = new SqlConnection(Baglan);
            _SqlCnnBaglan.Open();
            SqlCommand _SqlCmdBaglan = new SqlCommand(_sTrSQL, _SqlCnnBaglan);
            SqlDataAdapter _SqlDAdapter = new SqlDataAdapter(_SqlCmdBaglan);
            _SqlDAdapter.Fill(_dtVeriGetir);
            _SqlCnnBaglan.Close();
        }
        catch (Exception ex)
        {
            return null;
        }

        return _dtVeriGetir;


    }
    public string _fncVeriGetir(string _sTrSQL, string KolonAdi)
    {
        DataTable _dtVeriGetir = new DataTable();
        try
        {
            SqlConnection _SqlCnnBaglan = new SqlConnection(Baglan);
            _SqlCnnBaglan.Open();
            SqlCommand _SqlCmdBaglan = new SqlCommand(_sTrSQL, _SqlCnnBaglan);
            SqlDataAdapter _SqlDAdapter = new SqlDataAdapter(_SqlCmdBaglan);
            _SqlDAdapter.Fill(_dtVeriGetir);
            _SqlCnnBaglan.Close();
        }
        catch (Exception ex)
        {
            return null;
        }

        return _dtVeriGetir.Rows[0][KolonAdi].ToString();
    }
    public bool _Metot_Bool_VeriGetir(string _sTrSQL)
    {
        DataTable _dtVeriGetir = new DataTable();
        try
        {
            SqlConnection _SqlCnnBaglan = new SqlConnection(Baglan);
            _SqlCnnBaglan.Open();
            SqlCommand _SqlCmdBaglan = new SqlCommand(_sTrSQL, _SqlCnnBaglan);
            SqlDataAdapter _SqlDAdapter = new SqlDataAdapter(_SqlCmdBaglan);
            _SqlDAdapter.Fill(_dtVeriGetir);
            _SqlCnnBaglan.Close();
            deger = Convert.ToBoolean(_dtVeriGetir.Rows[0]["Serit"].ToString());
        }
        catch (Exception)
        {

        }
        return deger;
    }
    public int _fncSQLCalistir(string _sTrSQL)
    {
        int _intSayi;

        SqlConnection _SqlCnnBaglan = new SqlConnection(Baglan);
        _SqlCnnBaglan.Open();
        SqlCommand _SqlCmdBaglan = new SqlCommand(_sTrSQL, _SqlCnnBaglan);
        _intSayi = _SqlCmdBaglan.ExecuteNonQuery();
        _SqlCnnBaglan.Close();

        return _intSayi;
    }

    public string _fncSQLCalistir_String(string _sTrSQL)
    {
        string _intSayi;

        SqlConnection _SqlCnnBaglan = new SqlConnection(Baglan);
        _SqlCnnBaglan.Open();
        SqlCommand _SqlCmdBaglan = new SqlCommand(_sTrSQL, _SqlCnnBaglan);
        _intSayi = _SqlCmdBaglan.ExecuteNonQuery().ToString();
        _SqlCnnBaglan.Close();

        return _intSayi;
    }
    public void _Metot_SQL_Calistir(string _sTrSQL)
    {
        SqlConnection _SqlCnnBaglan = new SqlConnection(Baglan);
        _SqlCnnBaglan.Open();
        SqlCommand _SqlCmdBaglan = new SqlCommand(_sTrSQL, _SqlCnnBaglan);
        _SqlCmdBaglan.ExecuteNonQuery();
        _SqlCnnBaglan.Close();
    }
}