<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamOnLine.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Mystyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <div style="width: 688px; margin: auto;">
            <img src="Image/t1.png" style="height: 230px; width:688px; margin-top: 100px;" />
        </div>
        <div style="width: 688px; margin: auto; position: relative;">
            <img src="Image/t2.png" style="height: 45px; margin-top: 40px; width:688px;" />
            <div style="position:absolute;top:55px;left:10px;">
                <div style="float: left;">账 号：</div>
                <div style="float: left;">
                    <asp:TextBox ID="txtNum" runat="server" Height="13px" Width="85px"></asp:TextBox></div>
                <div style="float: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNum"
                        Display="Dynamic" ErrorMessage="请输入学生证号" ForeColor="DarkGray" Font-Size="10pt">*</asp:RequiredFieldValidator>
                </div>
                <div style="float: left; margin-left:5px;">密 码：</div>
                <div style="float: left;">
                    <asp:TextBox ID="txtPwd" runat="server" MaxLength="12" TextMode="Password" Width="85px" Height="13px"></asp:TextBox></div>
                <div style="float: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="密码不为空" ForeColor="DimGray" Font-Size="10pt">*</asp:RequiredFieldValidator>
                </div>
                <div style="float: left; margin-left:5px;">身 份：</div>
                <div style="float: left;">
                    <asp:DropDownList ID="ddlstatus" runat="server">
                        <asp:ListItem Selected="True">学生</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div style="float: left;margin-left:5px;">验证码：</div>
                <div style="float: left;">
                    <asp:TextBox ID="txtCode" runat="server" Height="13px" Width="60px"></asp:TextBox></div>
                <div style="float: left;">
                    <asp:Image ID="Image1" runat="server" Width="56px" BorderColor="Gray" BorderWidth="1px" Height="17px" ImageUrl="~/Image.aspx" /></div>
                <div style="float: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCode"
                        Display="Dynamic" ErrorMessage="请输入验证码" ForeColor="DimGray" Font-Size="10pt">*</asp:RequiredFieldValidator>
                </div>
                <div style="float: left;">
                    <asp:Button ID="btnlogin" runat="server" Text="登录" OnClick="btnlogin_Click" style="margin-left:15px;" /></div>
                 
                <div style="float: left;">
                    <asp:Button ID="btnconcel" runat="server" Text="取消" OnClick="btnconcel_Click" CausesValidation="False" style="margin-left:15px;" /></div>
                <div style="float: left;">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
                </div>

            </div>
             </div>
    </form>
</body>
</html>
