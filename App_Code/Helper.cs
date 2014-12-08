using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Web.UI;

/// <summary>
/// Summary description for Helper
/// </summary>
public class Helper
{
	public Helper()
    {
	}

    public static string GetCon()
    {
        return ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
    }

    public static void Show(string message)
    {
        string cleanMessage = message.Replace("'", "\'");
        Page page = HttpContext.Current.CurrentHandler as Page;
        string script = string.Format("alert('{0}');", cleanMessage);
        if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
        {
            page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script, true /* addScriptTags */);
        }
    } 

    public static string CreateSHAHash(string Phrase)
    {
        SHA512Managed HashTool = new SHA512Managed();
        Byte[] PhraseAsByte = System.Text.Encoding.UTF8.GetBytes(string.Concat(Phrase));
        Byte[] EncryptedBytes = HashTool.ComputeHash(PhraseAsByte);
        HashTool.Clear();
        return Convert.ToBase64String(EncryptedBytes);
    }

    public static void ValidateUser()
    {
        if (HttpContext.Current.Session["userid"] == null)
            HttpContext.Current.Response.Redirect("~/Default.aspx");
    }

    public static void SendEmail(string email, string subject, string message)
    {
        MailMessage emailMessage = new MailMessage();
        emailMessage.From = new MailAddress("calemph@gmail.com", "The Administrator");
        emailMessage.To.Add(new MailAddress(email));
        emailMessage.Subject = subject;
        emailMessage.Body = message;
        emailMessage.IsBodyHtml = true;
        emailMessage.Priority = MailPriority.Normal;
        SmtpClient MailClient = new SmtpClient("smtp.gmail.com", 587);
        MailClient.EnableSsl = true;
        MailClient.Credentials = new System.Net.NetworkCredential("calemph@gmail.com", "crimeawareness");
        MailClient.Send(emailMessage);
    }
}