<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="qiyemenu.aspx.cs" 
    Inherits="operatormenu" Title="欢迎使用在线商品销售系统"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
     
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="仿宋"
                    Font-Size="11pt">
                    <Nodes>
                        <asp:TreeNode Target="Iframe1" Text="招聘信息管理" Value="招聘信息管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统">
                            <asp:TreeNode Target="Iframe1" Text="添加的招聘信息" Value="添加新的招聘信息" 
                                NavigateUrl="~/qiye/addnewJob.aspx"></asp:TreeNode>
                            <asp:TreeNode Target="Iframe1" Text="修改招聘信息" Value="修改招聘信息" 
                                NavigateUrl="~/Operator/updateoldProduct.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="简历管理" Value="简历管理" Target="Iframe1" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统">
                            <asp:TreeNode NavigateUrl="~/Operator/dispnewod.aspx" Target="Iframe1" 
                                Text="查看新投递简历" Value="查看新投递简历"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Operator/newodpross.aspx" Target="Iframe1" 
                                Text="简历处理" Value="简历处理"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="我的密码管理" Value="我的密码管理" Target="Iframe1" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统">
                            <asp:TreeNode NavigateUrl="~/qiye/updateqiyepass.aspx" Target="Iframe1" Text="更改我的密码"
                                Value="更改我的密码"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" style="font-family:黑体; 
                    font-weight:bold;font-size:16px;color:#009900"                    
                    NavigateUrl="~/Default.aspx" Target="_self">退出本系统</asp:HyperLink>
                <td>
                 <div style="text-align:center">
                   <iframe name = "Iframe1" style=" height:450px; width:99%;text-align:center" id="Iframe1" 
                       src="dispinfo.aspx?info=欢迎使用本系统">               
                   </iframe>
               </div>
            </td>
        </tr>
    </table>
</asp:Content>

