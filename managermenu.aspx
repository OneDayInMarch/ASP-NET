<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="managermenu.aspx.cs" 
    Inherits="managermenu" Title="欢迎使用在线商品销售系统" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%; height: 55px;">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 25%; height: 400px; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="仿宋"
                    Font-Size="11pt" Width="218px">
                    <Nodes>
                        <asp:TreeNode Text="用户（操作员/管理员）管理" Value="用户信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/adduser.aspx" Target="Iframe1" 
                                Text="添加新用户信息" Value="添加新用户">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Manager/edituser.aspx" Target="Iframe1" 
                                Text="编辑用户信息" Value="编辑用户信息" ToolTip="更改、临时封杀和删除用户">
                            </asp:TreeNode>
                        </asp:TreeNode>
                         <asp:TreeNode Text="顾客信息管理" Value="顾客信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/dispcustomer.aspx" Target="Iframe1" 
                                Text="查看顾客信息" Value="查看顾客信息">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Manager/killcustomer.aspx" Target="Iframe1" 
                                Text="临时封杀顾客信息" Value="临时封杀顾客信息">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Manager/dispOrderform.aspx" Target="Iframe1" 
                                Text="查看顾客订单信息" Value="查看顾客订单信息">
                            </asp:TreeNode>
                        </asp:TreeNode>
                         <asp:TreeNode Text="下架管理" Value="下架管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/Productdelete.aspx" Target="Iframe1" 
                                Text="招聘信息下架" Value="招聘信息下架">
                            </asp:TreeNode>
                         </asp:TreeNode>
                        <asp:TreeNode Text="我的密码管理" Value="我的密码管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="更改我的密码" Value="更改我的密码" Target="Iframe1" NavigateUrl="~/Manager/updatemanagerpass.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="系统操作" Value="系统操作" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" 
                            Target="Iframe1">
                            <asp:TreeNode Text="删除下架的招聘信息" Value="删除下架的招聘信息" ToolTip="删除的信息不能恢复！小心操作"
                                Target="Iframe1" NavigateUrl="~/Manager/deletexjproduct.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="系统初始化" Value="系统初始化" ToolTip="初始化会删除所有信息，小心操作"
                                Target="Iframe1" NavigateUrl="~/Manager/systeminit.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <asp:HyperLink ID="HyperLink1" runat="server" style="font-family:黑体; font-weight:bold;font-size:16px;color:#009900"                    
                    NavigateUrl="~/index.aspx" Target="_self">退出本系统</asp:HyperLink>
            </td>
            <td style="width: 99%; height: 450px">
                <iframe id="Iframe1" name="Iframe1" src="dispinfo.aspx?info=欢迎使用本系统" style="width: 99%;
                    height: 99%"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>

