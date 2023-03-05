<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customermenu.aspx.cs" 
    Inherits="customermenu" Title="欢迎使用在线商品销售系统"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table  style="width: 100%; height: 40px;">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 20%; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" style="text-align:center;font-family:仿宋;font-weight:bold;font-size: 16px">
                    <Nodes>
                        <asp:TreeNode Text="我的简历管理" Value="我的简历管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="创建个人简历" Value="创建个人简历"></asp:TreeNode>
                            <asp:TreeNode Text="修改我的简历" Value="修改我的简历"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="我的信息管理" Value="我的信息管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="更改我的信息" Value="更改我的信息" 
                                NavigateUrl="~/Customer/updatecustomerinfo.aspx" 
                                Target="Iframe1"></asp:TreeNode>
                            <asp:TreeNode Text="更改我的密码" Value="更改我的密码" 
                                NavigateUrl="~/Customer/updatecustomerpass.aspx" 
                                Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="职位信息检索" Value="职位信息检索"></asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" style="font-family:黑体; font-weight:bold;font-size:16px;color:#009900"                    
                    NavigateUrl="~/index.aspx" Target="_self">退出本系统</asp:HyperLink>
            </td>
            <td>
               <div style="text-align:center">
                   <iframe name = "Iframe1" style=" height:500px; width:99%;text-align:center" id = "Iframe1" 
                       src="dispinfo.aspx?info=欢迎使用本系统">               
                   </iframe>
               </div>
            </td>
        </tr>
    </table>
</asp:Content>

