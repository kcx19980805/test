using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 助学社
{
    public partial class MerchantLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //跳转至验证码登录
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if(Panel1.Visible == true)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                LinkButton2.CssClass = "login-btn2h";
                LinkButton1.CssClass = "login-btnh";
            }
               
            
        }
        //跳转至密码登录
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible == true)
            {
                Panel2.Visible = false;
                Panel1.Visible = true;
                LinkButton1.CssClass = "login-btn";
                LinkButton2.CssClass = "login-btn2";
            }
            
        }
       //注册跳转至登录
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel1.Visible = true;
            Panel2.Visible = false;
            LinkButton1.CssClass = "login-btn";
            LinkButton2.CssClass = "login-btn2";
        }
        //密码登录跳转至注册
        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;                      
            LinkButton1.CssClass = "login-btnh";
            LinkButton2.CssClass = "login-btn2";
        }
        //验证码登录跳转至注册
        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            LinkButton1.CssClass = "login-btnh";
            LinkButton2.CssClass = "login-btn2";
        }
        //注册按钮
        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('注册成功')</script>");
            Panel3.Visible = false;
            Panel1.Visible = true;
            Panel2.Visible = false;
            LinkButton1.CssClass = "login-btn";
            LinkButton2.CssClass = "login-btn2";
        }
        //密码登录
        protected void Button4_Click(object sender, EventArgs e)
        {
           if(use.Value!=""&&psd.Value!="")
            {
                
                //string s = Request["TextArea1"].ToString();//无条件，简化版
                //Session["txt"] = s;
               Response.Redirect("MerchantMainInterface.aspx");//重定向页面
              //  Response.Write("<script>alert('登录成功')</script>");
            }
        }
        //验证码登录
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (use.Value != "" && psd2.Value != "")
            {
                
               Response.Redirect("MerchantMainInterface.aspx");//重定向页面
              //  Response.Write("<script>alert('登录成功')</script>");
            }
        }
    }
}