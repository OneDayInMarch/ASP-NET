using System;

public partial class adduser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButton1.Checked = true;    //默认勾选操作员
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
        CommDB mydb = new CommDB();     //创建CommDB类对象
        string mysql;
        mysql = "SELECT * FROM Users WHERE 用户名='" + TextBox1.Text + "'";
        i = mydb.Rownum(mysql);
        if (i > 0)
            Response.Redirect("~/dispinfo.aspx?info=用户名重复,不能添加该用户记录!");
        else
        {
            string lx;
            if (RadioButton1.Checked) lx = "操作员";
            else lx = "管理员";
            mysql = "INSERT INTO Users(用户名,密码,类型,有效否) VALUES('" +
                TextBox1.Text + "','" + TextBox2.Text + "','" + lx + "','1')";
            mydb.ExecuteNonQuery(mysql);
            Response.Redirect("~/dispinfo.aspx?info=新用户已成功添加!");
        }
    }
}
