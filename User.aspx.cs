using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    static SqlConnection con = new SqlConnection("server = .;database = NewYear; integrated security=true"); 
    protected void Page_Load(object sender, EventArgs e)
    {
        string isThisUser = Session["UserId"].ToString();
        Label1.CssClass = "thespan";
        con.Open();
        string sql = "select * from UserMessage";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable table = new DataTable();
        ad.Fill(table);
        for (int i = 0; i < table.Rows.Count; i++)
        {
            string id = table.Rows[i]["messageID"].ToString().Trim();
            string name = table.Rows[i]["username"].ToString().Trim();
            string content = table.Rows[i]["leaveMessage"].ToString().Trim();
            msgCon.InnerHtml += "<div class='msgBox' id='tdiv" +
                                id +
                                "'><dl><dt><img src='images/tx.jpg' width='50' height='50'/></dt><dd>" +
                                name +
                                "</dd></dl><div class='msgTxt'>" +
                                content;
            if (isThisUser == name)
            {
                msgCon.InnerHtml += "<p>" + "&nbsp;&nbsp;&nbsp;&nbsp;<a id='" +
                                    id +
                                    "'  title='删除这条信息'>删除</a></p></div></div>";
            }
            else
            {
                msgCon.InnerHtml += "<p>" + "&nbsp;&nbsp;&nbsp;&nbsp;</p></div></div>";
            }
        }
        con.Close();
        return;
    }
    [WebMethod]
    public static void delete(int id)
    {
        int useid = id;
        con.Open();
        string sql = "delete from UserMessage where messageID = @id";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@id", useid);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return;
    }
}