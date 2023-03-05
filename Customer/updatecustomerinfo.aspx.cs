using System;
using System.Web.UI;
using System.Data;

public partial class Customer_updatecustomerinfo : System.Web.UI.Page
{
    CommDB mydb = new CommDB();                             //创建CommDB类对象
    DataSet myds = new DataSet();
    string mysql;                                           //存放SQL语句
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)    //在网页首发时执行
        {

            mysql = "SELECT 学历 FROM Education";
            myds = mydb.ExecuteQuery(mysql, "Education");       //执行SELECT语句
            DataRow nrow = myds.Tables["Education"].NewRow();   //插入一个空行
            nrow["学历"] = "";
            myds.Tables["Education"].Rows.InsertAt(nrow, 0);
            DropDownList1.DataSource = myds.Tables["Education"];  //设置学历下拉列表的数据源
            DropDownList1.DataTextField = "学历";               //设置学历下拉列表的绑定字段
            DropDownList1.DataBind();                           //数据绑定
            mysql = "SELECT distinct 地区 FROM Area";
            myds = mydb.ExecuteQuery(mysql, "Area");            //执行SELECT语句
            DataRow nrow1 = myds.Tables["Area"].NewRow();       //插入一个空行
            nrow1["地区"] = "";
            myds.Tables["Area"].Rows.InsertAt(nrow1, 0);
            DropDownList2.DataSource = myds.Tables["Area"];     //设置地区下拉列表的数据源
            DropDownList2.DataTextField = "地区";               //设置地区下拉列表的绑定字段
            DropDownList2.DataBind();                           //数据绑定

            mysql = "SELECT distinct 省份 FROM Area";
            myds = mydb.ExecuteQuery(mysql, "Area");            //执行SELECT语句
            //DataRow nrow1 = myds.Tables["Area"].NewRow();       //插入一个空行
            //nrow1["省份"] = "";
            //myds.Tables["Area"].Rows.InsertAt(nrow1, 0);
            DropDownList3.DataSource = myds.Tables["Area"];     //设置省份下拉列表的数据源
            DropDownList3.DataTextField = "省份";               //设置地区下拉列表的绑定字段
            DropDownList3.DataBind();                           //数据绑定

            mysql = "SELECT distinct 市 FROM Area";
            myds = mydb.ExecuteQuery(mysql, "Area");            //执行SELECT语句
            //DataRow nrow1 = myds.Tables["Area"].NewRow();       //插入一个空行
            //nrow1["市"] = "";
            //myds.Tables["Area"].Rows.InsertAt(nrow1, 0);
            DropDownList4.DataSource = myds.Tables["Area"];     //设置市下拉列表的数据源
            DropDownList4.DataTextField = "市";               //设置地区下拉列表的绑定字段
            DropDownList4.DataBind();                           //数据绑定

            mysql = "SELECT distinct 县 FROM Area";
            myds = mydb.ExecuteQuery(mysql, "Area");            //执行SELECT语句
            //DataRow nrow1 = myds.Tables["Area"].NewRow();       //插入一个空行
            //nrow1["县"] = "";
            //myds.Tables["Area"].Rows.InsertAt(nrow1, 0);
            DropDownList5.DataSource = myds.Tables["Area"];     //设置县下拉列表的数据源
            DropDownList5.DataTextField = "县";               //设置地区下拉列表的绑定字段
            DropDownList5.DataBind();                           //数据绑定

            DropDownList3.Enabled = false;
            DropDownList4.Enabled = false;
            DropDownList5.Enabled = false;
            mysql = "SELECT 姓名,年龄,学历,地区,省份,市,县,住址,邮箱,电话 "
                + " FROM Customers "
                + " WHERE 用户名='" + Session["uname"] + "'";
            myds = mydb.ExecuteQuery(mysql, "Customers");       //执行SELECT语句
            DataRow mydr = myds.Tables["Customers"].Rows[0];    //获取查询结果集的第1行（查询结果集只有1行）
            usernameTextBox.Text = Session["uname"].ToString().Trim();
            xmTextBox.Text = mydr["姓名"].ToString().Trim();
            ageTextBox.Text = mydr["年龄"].ToString().Trim();
            DropDownList1.SelectedIndex =
                DropDownList1.Items.IndexOf(DropDownList1.Items.FindByText(mydr["学历"].ToString()));
            DropDownList2.SelectedIndex =
                DropDownList2.Items.IndexOf(DropDownList2.Items.FindByText(mydr["地区"].ToString()));
            DropDownList3.SelectedIndex =
                DropDownList3.Items.IndexOf(DropDownList3.Items.FindByText(mydr["省份"].ToString()));
            DropDownList4.SelectedIndex =
                DropDownList4.Items.IndexOf(DropDownList4.Items.FindByText(mydr["市"].ToString()));
            DropDownList5.SelectedIndex =
                DropDownList5.Items.IndexOf(DropDownList5.Items.FindByText(mydr["县"].ToString()));
            placeTextBox.Text = mydr["住址"].ToString().Trim();
            EmailTextBox.Text = mydr["邮箱"].ToString().Trim();
            TelTextBox.Text = mydr["电话"].ToString().Trim();
        }       
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Enabled = true;
        mysql = "SELECT distinct 省份 FROM Area WHERE 地区='" + DropDownList2.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "Area");       //执行SELECT语句
        DataRow nrow = myds.Tables["Area"].NewRow();   //插入一个空行
        nrow["省份"] = "";
        myds.Tables["Area"].Rows.InsertAt(nrow, 0);
        DropDownList3.DataSource = myds.Tables["Area"];//设置省份下拉列表的数据源
        DropDownList3.DataTextField = "省份";          //设置省份下拉列表的绑定字段
        DropDownList3.DataBind();                      //数据绑定
        DropDownList4.Items.Clear();
        DropDownList5.Items.Clear();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList4.Enabled = true;
        mysql = "SELECT distinct 市 FROM Area WHERE 省份='" + DropDownList3.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "Area");       //执行SELECT语句
        DataRow nrow = myds.Tables["Area"].NewRow();   //插入一个空行
        nrow["市"] = "";
        myds.Tables["Area"].Rows.InsertAt(nrow, 0);
        DropDownList4.DataSource = myds.Tables["Area"];//设置市下拉列表的数据源
        DropDownList4.DataTextField = "市";            //设置市下拉列表的绑定字段
        DropDownList4.DataBind();                      //数据绑定
        DropDownList5.Items.Clear();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList5.Enabled = true;
        mysql = "SELECT distinct 县 FROM Area WHERE 市='" + DropDownList4.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "Area");       //执行SELECT语句
        DataRow nrow = myds.Tables["Area"].NewRow();
        nrow["县"] = "";
        myds.Tables["Area"].Rows.InsertAt(nrow, 0);
        DropDownList5.DataSource = myds.Tables["Area"];//设置县下拉列表的数据源
        DropDownList5.DataTextField = "县";            //设置县下拉列表的绑定字段
        DropDownList5.DataBind();                      //数据绑定
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            mysql = "UPDATE Customers SET "
                + "姓名='" + xmTextBox.Text.Trim() + "',"
                 + "年龄=" + ageTextBox.Text + ","
                 + "学历='" + DropDownList1.SelectedValue.ToString().Trim() + "',"
                 + "地区='"+ DropDownList2.SelectedValue.ToString().Trim() + "',"
                 + "省份='" + DropDownList3.SelectedValue.ToString().Trim() + "',"
                 + "市='" + DropDownList4.SelectedValue.ToString().Trim() + "',"
                 + "县='"+ DropDownList5.SelectedValue.ToString().Trim() + "',"
                 + "住址='"+ placeTextBox.Text.Trim() + "',"
                 + "邮箱='" + EmailTextBox.Text.Trim() + "',"
                 + "电话='" + TelTextBox.Text.Trim() + "'"
                 + " WHERE 用户名='" + Session["uname"].ToString().Trim() + "'";
            mydb.ExecuteNonQuery(mysql);
            Response.Redirect("~/dispinfo.aspx?info=你的个人信息修改完毕!");
        }
    }
}