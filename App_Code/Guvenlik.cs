using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Guvenlik
/// </summary>
public class Guvenlik
{
    const string letters = "23456789abcdefghijkmnpqrstuvwxwz";
	public Guvenlik()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string _SqlBugKontrol(string Str)
    {
        Str = Str.Replace("'", "`");
        Str = Str.Replace("--", " ");
        Str = Str.Replace(";", " ");
        Str = Str.Replace("(", "[");
        Str = Str.Replace(")", "]");
        Str = Str.Replace("WAITFOR", " ");
        Str = Str.Replace("DELAY", " ");
        Str = Str.Replace("waitfor", " ");
        Str = Str.Replace("delay", " ");
        Str = Str.Replace("=", ":");
        return Str;
    }
    public static char randLetter(Random rnd)
    {
        return letters[rnd.Next(letters.Length)];
    }
    public static string SifreUretici()
    {
        Random rnd = new System.Random(unchecked((int)DateTime.Now.Ticks));
        string ret = "";
        for (int i = 0; i < 6; i++)
        {
            ret += randLetter(rnd);
        }
        return ret;
    }
}