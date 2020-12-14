﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartExam.aspx.cs" Inherits="ExamOnLine.student.StartExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script language="javascript" type="text/javascript">
        self.moveTo(0, 0);
        self.resizeTo(screen.availWidth, screen.availHeight);
        function keydown() {
            if (event.keyCode == 8)//屏蔽退格键
            {
                event.keyCode = 0;
                event.returnValue = false;
            }
            if (event.keyCode == 13)//屏蔽回车键
            {
                event.keyCode = 0;
                event.returnValue = false;
            }
            if (event.keyCode == 116)//屏蔽F5刷新键
            {
                event.keyCode = 0;
                event.returnValue = false;
            }
        }

        function showtime() {
            var now = new Date();
            years = now.getFullYear();
            month = now.getMonth() + 1;
            dates = now.getDate();
            hours = now.getHours();
            Minutes = now.getMinutes();
            Seconds = now.getSeconds();
            if (hours < 10)
                hours = "0" + hours;
            if (Minutes < 10)
                Minutes = "0" + Minutes;
            if (Seconds < 10)
                Seconds = "0" + Seconds;
            var titletext = "当前日期时间为>>>" + years + "年" + month + "月" + dates + "日" + hours + ":" + Minutes + ":" + Seconds;
            setTimeout("showtime()", 1000);
            document.title = titletext;
        }

    </script>
    <link href="../Mystyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            width: 168px;
        }
    </style>
</head>
<body onkeydown="keydown()" onload="showtime()" oncontextmenu="return false" onselectstart="return false" background="../Image/back_01.gif" id="bntOk">
    <form id="form1" runat="server">
<script language="javascript">
    var sec = 0;
    var min = 0;
    var hou = 0;
    flag = 0;
    idt = window.setTimeout("countDown();", 1000);
    function countDown() {
        sec++;
        if (sec == 60) { sec = 0; min += 1; }
        if (min == 60) { min = 0; hou += 1; }
        document.getElementById("lbltime").innerText = min + "分 " + sec + " 秒";
        idt = window.setTimeout("countDown();", 1000);
        if (min == 10) {
            document.getElementById("btnsubmit").click();
        }
    }
</script>
        <div style="text-align: left">
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
            <table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0"
                height="678" width="778">
                <tr>
                    <td colspan="7" height="8" style="position: relative;">
                        <img src="../Image/t3.png" style="width: 100%; height: 80px;" />
                        <font style="position: absolute; color: #fff; top: 35px; left: 30px; font-weight: 900; font-size: 15px;">铭成在线考试网</font>

                    </td>
                </tr>
                <tr>
                    <td height="457" style="border: 1px solid #cfcfcf;" rowspan="3" valign="top" class="auto-style3">
                        <div style="background-color: #b9b9b9; height: 23px; width: 168px; color: #fff; font-weight: 900; font-size: 13px; padding-top: 5px; padding-left: 20px;">
                            <font>学员信息</font>
                        </div>
                        <div style="width: 150px; margin-top: 20px;">
                            <font style="margin-left: 20px;">学号：</font><asp:Label ID="lblStuNum" runat="server"></asp:Label>
                        </div>
                        <div style="width: 150px; margin-top: 20px;">
                            <font style="margin-left: 20px;">学生姓名：</font><asp:Label ID="lblStuName" runat="server"></asp:Label>
                        </div>
                        <div style="width: 150px; margin-top: 20px;">
                            <font style="margin-left: 20px;">学生性别：</font><asp:Label ID="lblStuSex" runat="server"></asp:Label>
                        </div>
                        <div style="width: 150px; margin-top: 20px;">
                            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="交卷" UseSubmitBehavior="False" Style="background-color: rgb(58, 177, 255); border: none; width: 100px; height: 40px; color: #fff; border-radius: 10px; margin-left: 40px;" />
                        </div>

                    </td>
                    <td colspan="7" height="45" style="text-align: center">
                        <asp:Label ID="lblStuKM" runat="server" Font-Bold="True" Font-Size="18pt"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="7" height="36" style="text-align: center">
                        <asp:Label ID="lblEndtime" runat="server"></asp:Label>
                        <asp:Label ID="lbltime" runat="server" Font-Bold="True" ForeColor="#C04000"></asp:Label>
                        <font style="color: red;">考试总时间：</font><font style="color: red;">0:10:00</font>
                    </td>
                </tr>
                <tr>

                    <td colspan="6" height="457" valign="top">&nbsp;
                        <asp:Panel ID="Panel1" runat="server" Height="457px" Width="547px" style="overflow:auto;">
                        </asp:Panel>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="7" height="18">
                        &nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
