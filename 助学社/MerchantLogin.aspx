<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="MerchantLogin.aspx.cs" Inherits="助学社.MerchantLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        *{border:none;outline:none; margin:0px; padding:0px;}
        /******************************************手机号登录**********************************************/
       .login{position:absolute;left:1448px;top:75px;width:300px;height:350px;}
       .head-text{padding-left:18px;}
       .login-btn{border-bottom:2px solid #00CC66; margin-right:20px; text-align:center;text-decoration:none;color:#00CC66;}
       .login-btn2{text-align:center;text-decoration:none;color:black;}
       .login-btn2h{text-align:center;text-decoration:none;border-bottom:2px solid #00CC66;color:#00CC66;}
       .login-btnh{ margin-right:20px; text-align:center;text-decoration:none;color:black;}
       .username,.pass{width:90%;height:35px; margin-top:20px; background-color:white;border:1px solid white;border-radius:5px;overflow:hidden;margin-left:18px;}
        .use-img, .psd-img {
            width: 35px;
            height: 35px;
            background-repeat: no-repeat;
            background-size: 35px 35px;
            float: left;
        }
       .use-img{background-image:url('Images/伪类元素1.jpg');}
       .psd-img{background-image:url('Images/伪类元素2.jpg');}
        .auto-style2 {position: absolute;z-index: 2;left: 212px;top: 115px; width: 77px;}
        .submit{width:100%;height:37px; margin-top:50px;}
        .sub-btn{width:100%;height:37px;border-radius:5px;background-color:#00CC66;}
        .cut{margin-top:50px;height:8px;padding-left:40px;}
        .center-icon{float:left; color:#00CC66; margin-top:-10px;}
        .line{height:2px;border-bottom:1px solid #00CC66;float:left; width:40%;}
        */**********************************验证码登录***********************************************/
        .zhuce{ width:77px;line-height:20px; font-size:14px; color:#ada9a9; margin-left:80px;margin-top:0px;}
        .zc{position:absolute;z-index:2;}
        .auto-style3 {font-size:14px;cursor:pointer;}
        .auto-style4 { width: 77px;line-height: 20px;font-size: 14px;color: #ada9a9;margin-left: 80px;height: 25px;background-color: transparent }
        .Pone{position: absolute; z-index: 5;top:95px;left:0px;}
        .auto-style5 {width: 142px; height: 34px;float:left;outline:none;}
        .auto-style6 {
            position: absolute;
            z-index: 5;
            top: 85px;
            left: 0px;
            width: 300px;
            height: 243px;
        }
        .pass2{width:90%;height:35px; margin-top:20px;   background-color:white;border:1px solid white;border-radius:5px;overflow:hidden;margin-left:18px;}
        .submit2 { width: 100%;height: 37px;margin-top: 50px;}
        .sub-btn2 {width: 100%;height: 37px;border-radius: 5px;background-color: #00CC66;}
        .cut2{margin-top:50px;height:8px;padding-left:40px;}
        .center-icon2{float:left; color:#00CC66; margin-top:-10px;}
        .line2{height:2px;border-bottom:1px solid #00CC66;float:left; width:40%;}
        button{border: 0;background-color: transparent;outline: none}
        /****************************************注册***********************************************/
        .pl3 {
            position: absolute;
            z-index: 8;
            height: 343px;
            top: 0;
            left: 0px;
            width: 299px;
        }
        .use3{margin-left:18px; margin-top:20px;border-radius:5px;overflow:hidden}
        .pl3-div1-use{
            width: 234px;
            height: 35px;
            outline: none;
        }
        .pl3-subbtn {width: 263px;height: 43px;}
        .yanzhenma{margin-top:20px;margin-left:18px;border-radius:5px;overflow:hidden;background-color:white;}
        .sub {
            margin-top: 20px;
        }
        .l3-div2input {
            background-color: white;
            width: 200px;
            float:left;
            height:35px;
        }
        .pl3-div1 {
            margin-left: 18px;
            margin-top: 20px;
            border-radius: 5px;
            overflow: hidden;
            width: 270px;
        }
        .pl3-div2{
            margin-top: 20px;
            margin-left: 19px;
            width: 271px;
            height: 34px;
            border-radius: 5px;
            overflow: hidden;
        }
        .pl3-div2-yzm {
            width: 70px;
            float: left;
            height: 35px;
        }
        .pl3-sub {
            margin-left: 22px;
            margin-top: 20px;
            border-radius: 5px;
            overflow: hidden;
            width: 262px;
            color: #f0f0f0;
        }
        .pl3-div2-yzmbtn {
            width:70px;
            height:35px;
            float: left;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            font-size: 18px;
            text-align: center;
            font-style: italic;
            font-weight: bold;
            color: blue;
        }
        
        .auto-style9 {
            font-size:20px;
            height: 19px;
            width: 112px;
            height:35px;
            width: 141px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <div class="head-text">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="20px"  CssClass="login-btn"  Height="26px" Width="120px" OnClick="LinkButton1_Click">密码登录</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="20px"  CssClass="login-btn2" Height="26px" OnClick="LinkButton2_Click" Width="120px">验证码登录</asp:LinkButton>
        </div>        
            <div class="username">
                <div class="use-img"></div>
                <input id="use" type="text" runat="server" style="height:35px;" />
            </div>
        <asp:Panel ID="Panel1" runat="server" Visible="True">
            <div class="pass">
                    <div class="psd-img"></div>
                    <input id="psd" type="password" runat="server" value="手机号" style="height:35px;"/> 
                    <asp:Button ID="Button3" runat="server" Text="忘记密码？" CssClass="auto-style2" BackColor="White" ForeColor="#999999" />     
            </div>
            <div class="submit">
                <asp:Button ID="Button4" runat="server" Text="登录" CssClass="sub-btn" OnClick="Button4_Click"/>
            </div>
            <div class="cut">
                <div class="line"></div>
                <div class="center-icon">o</div>
                <div class="line"></div>
            </div>
            <div style="margin-top: 10px;">
                <input class="auto-style4" type="button" value="没有账号？" disabled="disabled"/>
                <asp:Button ID="Button5" runat="server" Text="立即注册" Height="29px" Width="68px" CssClass="auto-style3" Font-Bold="True" ForeColor="#00CC66" BackColor="transparent" OnClick="Button5_Click" />
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style6" Visible="False">
            <div class="pass2">
                    <div class="psd-img"></div>
                    <input id="psd2" type="text" runat="server" class="auto-style5" /> 
                    <asp:Button ID="Button6" runat="server" Text="获取验证码" BackColor="White" ForeColor="#00CC00" Width="81px" Font-Size="13px" Height="34px" />     
            </div>
            <div class="submit2">
                <asp:Button ID="Button7" runat="server" Text="登录" CssClass="sub-btn2" OnClick="Button7_Click"/>
            </div>    
            <div class="cut2">
                <div class="line2"></div>
                <div class="center-icon2">o</div>
                <div class="line2"></div>
            </div>
            <div style=" margin-top: 10px;">
                <input class="auto-style4" type="button" value="没有账号？" disabled="disabled" />
                <asp:Button ID="Button8" runat="server" Text="立即注册" Height="29px" Width="68px" CssClass="auto-style3" Font-Bold="True" ForeColor="#00CC66" BackColor="transparent" Enabled="True" OnClick="Button8_Click"/>
            </div>
       </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="pl3" BackColor="#f0f0f0" Visible="False">
            <div class="pl3-div1">
                <div class="use-img"></div>
                <input id="Text1" type="text" runat="server" class="pl3-div1-use" /> 
            </div>
            <div class="pl3-div2">
                <div class="l3-div2input">
         	    <input type = "text" id = "input" value=""  runat="server" class="auto-style9"/>   
                </div>
                <div class="pl3-div2-yzm">  
                    <asp:Button ID="Button10" runat="server" CssClass="pl3-div2-yzmbtn" />            
                </div>    
            </div>
            <div class="pass2">
                    <div class="psd-img"></div>
                    <input id="psd3" type="text" runat="server" class="auto-style5" /> 
                    <asp:Button ID="Button1" runat="server" Text="获取验证码" BackColor="White" ForeColor="#00CC00" Width="81px" Font-Size="13px" Height="34px" />     
            </div>
            <div class="pl3-sub">
                <asp:Button ID="Button9" runat="server" Text="确定" class="pl3-subbtn" style="background-color: #00CC00" OnClick="Button9_Click" OnClientClick="return tj()" />
            </div>
            <div style="margin-top:10px;">
                <input class="auto-style4" type="button" value="已有账号" disabled="disabled" />
                <asp:Button ID="Button2" runat="server" Text="立即登录" Height="29px" Width="68px" CssClass="auto-style3" Font-Bold="True" ForeColor="#00CC66" BackColor="transparent" OnClick="Button2_Click"/>
            </div>
        </asp:Panel>
    </div>
    <script src="bootstrap-3.3.7-dist/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        var code;
        var cold= document.getElementById('ContentPlaceHolder1_Button10');
        console.log(cold);
        function yzm() {
            code = '';
            var cd = 4;
            var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
            for (var i = 0; i < cd; i++) {
                var index = Math.floor(Math.random() * 36);
                code = random[index] + code;
            }
            cold.value = code;
        }   
        function tj() {
            var six = document.getElementById('ContentPlaceHolder1_input').value.toUpperCase();
            var usename = document.getElementById('ContentPlaceHolder1_Text1');
            var psd = document.getElementById('ContentPlaceHolder1_psd3');
            usename.value = usename.value.replace(/(^\s*)|(\s*$)/g, "");
            psd.value = psd.value.replace(/(^\s*)|(\s*$)/g, "");
            if (usename.value == "" || psd.value == ""){ alert("用户名或密码不能为空！"); return false; }
            if (six == 0) { alert("请输入验证码"); return false;}           
            else if (six != code) { alert('验证码错误，请重新输入'); yzm(); return false;}
            else if (six == code) { return true; }
        }
        window.onload = function () { yzm(); }
    </script>
</asp:Content>
