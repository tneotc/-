using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server = .;database = NewYear; integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text == "")
        {
            Label1.Text = "用户名为空！";
            if (TextBox2.Text == "")
            {
                Label2.Text = "密码为空！";
                if (TextBox3.Text == "")
                {
                    Label3.Text = "请再输入一次密码！";
                    return;
                }
            }
        }
        if(TextBox2.Text == "")
        {
            Label2.Text = "密码为空！";
            if (TextBox3.Text == "")
            {
                Label3.Text = "请再输入一次密码！";
                return;
            }
        }
        if(TextBox3.Text == "")
        {
            Label3.Text = "请再输入一次密码！";
            return;
        }
        else if (TextBox2.Text != TextBox3.Text)
        {
            Label3.Text = "两次输入密码不匹配！";
            return;
        }
        string sql = "select * from UserInfo where username=@id";
        SqlCommand cmd = new SqlCommand(sql,con);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            Label1.Text = "用户名已经被注册！";
            return;
        }
        con.Close();
        con.Open();
        sql = "Insert into UserInfo values(@id,@pwd)";
        cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }

}