using System;

public partial class Customer_updatecustomerpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CommDB mydb = new CommDB();
        string mysql;
        int i;
        mysql = "SELECT * FROM Customers WHERE 用户名='" + Session["uname"] + "' AND 密码='" + TextBox1.Text.Trim() + "'";
        i = mydb.Rownum(mysql);
        if (i == 0)
            Server.Transfer("~/dispinfo.aspx?info=原密码输入错误!");
        else
        {
            mysql = "UPDATE Customers SET 密码='" + TextBox2.Text.Trim() + "' WHERE 用户名='" + Session["uname"] + "'";
            mydb.ExecuteNonQuery(mysql);
            Server.Transfer("~/dispinfo.aspx?info=密码修改成功!");
        }
    }
}