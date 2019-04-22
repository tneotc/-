using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePwd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server = .;database = NewYear; integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        UserLabel.Text = Session["UserId"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label1.Text = "原密码为空！";
            if (TextBox2.Text == "")
            {
                Label2.Text = "新密码为空！";
                if (TextBox3.Text == "")
                {
                    Label3.Text = "请再输入一次新密码！";
                    return;
                }
            }
        }
        if (TextBox2.Text == "")
        {
            Label2.Text = "新密码为空！";
            if (TextBox3.Text == "")
            {
                Label3.Text = "请再输入一次新密码！";
                return;
            }
        }
        if (TextBox3.Text == "")
        {
            Label3.Text = "请再输入一次新密码！";
            return;
        }
        else if(TextBox2.Text != TextBox3.Text)
        {
            Label3.Text = "两次输入密码不匹配！";
            return;
        }
        string sql = "select * from UserInfo where username='" + Session["UserId"] + "' and password=@pwd";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@pwd", TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (!(dr.HasRows))
        {
            Label3.Text = "原密码不正确！";
        }
        con.Close();
        con.Open();
        sql = "update UserInfo set password = @pwd where username='" + Session["UserId"].ToString() + "'";
        cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {

            Label1.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}