using System;
using System.Web.UI;
using System.Data;

public partial class addnewProduct : System.Web.UI.Page
{
    CommDB mydb = new CommDB();                     //创建CommDB类对象
    DataSet myds = new DataSet();
    string mysql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)    //在网页首发时执行
        {
            mysql = "SELECT distinct 分类 FROM ProdType";
            myds = mydb.ExecuteQuery(mysql, "ProdType");       //执行SELECT语句
            DataRow nrow = myds.Tables["ProdType"].NewRow();   //插入一个空行
            nrow["分类"] = "";
            myds.Tables["ProdType"].Rows.InsertAt(nrow, 0);
            DropDownList1.DataSource = myds.Tables["ProdType"]; //设置分类下拉列表的数据源
            DropDownList1.DataTextField = "分类";               //设置分类下拉列表的绑定字段
            DropDownList1.DataBind();                           //数据绑定
            DropDownList2.Enabled = false;
            DropDownList3.Enabled = false;
        }
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Enabled = true;
        mysql = "SELECT distinct 子类 FROM ProdType WHERE 分类='" + DropDownList1.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "ProdType");       //执行SELECT语句
        DataRow nrow = myds.Tables["ProdType"].NewRow();   //插入一个空行
        nrow["子类"] = "";
        myds.Tables["ProdType"].Rows.InsertAt(nrow, 0);
        DropDownList2.DataSource = myds.Tables["ProdType"];   //设置子类下拉列表的数据源
        DropDownList2.DataTextField = "子类";                 //设置子类下拉列表的绑定字段
        DropDownList2.DataBind();                             //数据绑定
        DropDownList3.Items.Clear();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Enabled = true;
        mysql = "SELECT distinct 品牌 FROM ProdType WHERE 子类='" + DropDownList2.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "ProdType");       //执行SELECT语句
        DataRow nrow = myds.Tables["ProdType"].NewRow();   //插入一个空行
        nrow["品牌"] = "";
        myds.Tables["ProdType"].Rows.InsertAt(nrow, 0);
        DropDownList3.DataSource = myds.Tables["ProdType"];   //设置品牌下拉列表的数据源
        DropDownList3.DataTextField = "品牌";                 //设置品牌下拉列表的绑定字段
        DropDownList3.DataBind();                             //数据绑定
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int i;
            mysql = "SELECT * FROM Products WHERE 商品编号='" + bhTextBox.Text + "'";
            i = mydb.Rownum(mysql);
            if (i > 0)
                Label1.Text="商品编号重复,不能添加该商品记录!";
            else
            {
                string filestr;                                 //商品图片文件名
                if (FileUpload1.HasFile)
                {
                    filestr = Server.MapPath("/") + "\\Picture\\" + FileUpload1.PostedFile.FileName;
                    try
                    {
                        FileUpload1.PostedFile.SaveAs(filestr);
                        Label1.Text = "提示：文件成功上传到" + FileUpload1.PostedFile.FileName;
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "提示：文件上传失败，" + ex.Message;
                    }
                }
                else
                {
                    Label1.Text = "提示：没有指定任何要上传的图片文件";
                    return;
                }
                mysql = "INSERT INTO Products(商品编号,分类,子类,品牌,型号,单价,库存数量,图片,有效否,星数,评论数) VALUES('"
                    + bhTextBox.Text.Trim() + "','"
                    + DropDownList1.SelectedValue.ToString().Trim() + "','"
                    + DropDownList2.SelectedValue.ToString().Trim() + "','"
                    + DropDownList3.SelectedValue.ToString().Trim() + "','"
                    + xhTextBox.Text.Trim() + "',"
                    + priceTextBox.Text.Trim() + ","
                    + numTextBox.Text.Trim() + ",'"
                    + "~//Picture//" + FileUpload1.PostedFile.FileName.Trim() + "','"
                    + "1',0,0)";
                //Label1.Text = "图片：" + FileUpload1.PostedFile.FileName.Trim();
                mydb.ExecuteNonQuery(mysql);
                Response.Redirect("~/dispinfo.aspx?info=新型号商品已成功添加!");
            }
        }
        else
            Label1.Text = "提示：商品信息错误，不能添加";
    }
}