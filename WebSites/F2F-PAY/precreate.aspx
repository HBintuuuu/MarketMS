﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="precreate.aspx.cs" Inherits="F2FPay.PreCreate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>扫码支付请求API</title>
    <style>
*{
	margin:0;
	padding:0;
}
ul,ol{
	list-style:none;
}
.title{
    color: #ADADAD;
    font-size: 14px;
    font-weight: bold;
    padding: 8px 16px 5px 10px;
}
.hidden{
	display:none;
}

.new-btn-login-sp{
	border:1px solid #D74C00;
	padding:1px;
	display:inline-block;
}

.new-btn-login{
    background-color: transparent;
    background-image: url("images/new-btn-fixed.png");
    border: medium none;
}
.new-btn-login{
    background-position: 0 -198px;
    width: 82px;
	color: #FFFFFF;
    font-weight: bold;
    line-height: 28px;
    padding: 0 10px 3px;
}
.new-btn-login:hover{
	background-position: 0 -167px;
	width: 82px;
	color: #FFFFFF;
    font-weight: bold;
    height: 28px;
    line-height: 28px;
    padding: 0 10px 3px;
}
.bank-list{
	overflow:hidden;
	margin-top:5px;
}
.bank-list li{
	float:left;
	width:153px;
	margin-bottom:5px;
}

#main{
	width:750px;
	margin:0 auto;
	font-size:14px;
	font-family:'宋体';
}
#logo{
	background-color: transparent;
    background-image: url("images/new-btn-fixed.png");
    border: medium none;
	background-position:0 0;
	width:166px;
	height:35px;
    float:left;
}
.red-star{
	color:#f00;
	width:10px;
	display:inline-block;
}
.null-star{
	color:#fff;
}
.content{
	margin-top:5px;
}

.content dt{
	width:160px;
	display:inline-block;
	text-align:right;
	float:left;
	
}
.content dd{
	margin-left:100px;
	margin-bottom:5px;
}
#foot{
	margin-top:10px;
}
.foot-ul li {
	text-align:center;
}
.note-help {
    color: #999999;
    font-size: 12px;
    line-height: 130%;
    padding-left: 3px;
}

.cashier-nav {
    font-size: 14px;
    margin: 15px 0 10px;
    text-align: left;
    height:30px;
    border-bottom:solid 2px #CFD2D7;
}
.cashier-nav ol li {
    float: left;
}
.cashier-nav li.current {
    color: #AB4400;
    font-weight: bold;
}
.cashier-nav li.last {
    clear:right;
}
.alipay_link {
    text-align:right;
}
.alipay_link a:link{
    text-decoration:none;
    color:#8D8D8D;
}
.alipay_link a:visited{
    text-decoration:none;
    color:#8D8D8D;
}
</style>
</head>
<body>
    <form id="Form1" runat="server">
        <div id="main">
            <div id="head">
                <dl class="alipay_link">
                    <a target="_blank" href="http://www.alipay.com/"><span>支付宝首页</span></a>| <a target="_blank"
                        href="https://b.alipay.com/home.htm"><span>商家服务</span></a>| <a target="_blank" href="http://help.alipay.com/support/index_sh.htm">
                            <span>帮助中心</span></a>
                </dl>
                <span class="title">支付宝扫码支付API</span>
            </div>
            <div class="cashier-nav">
                <ol>
                    <li class="current">1、确认信息 →</li>
                    <li>2、点击确认 →</li>
                    <li class="last">3、确认完成</li>
                </ol>
            </div>
            <div id="body" style="clear: left">
                <dl class="content">
                    <dt>商户订单号：</dt>
                    <dd>
                        <span class="null-star">*</span>
                        <asp:TextBox ID="WIDout_request_no" name="WIDout_request_no" runat="server"></asp:TextBox>
                        <span><!--商户网站订单系统中唯一订单号，必填-->必填
</span>
                    </dd>
                    <dt>订单名称：</dt>
                    <dd>
                        <span class="null-star">*</span>
                        <asp:TextBox ID="WIDsubject" name="WIDsubject" runat="server"></asp:TextBox>
                        <span>必填
</span>
                    </dd>
                    <dt>付款金额：</dt>
                    <dd>
                        <span class="null-star">*</span>
                        <asp:TextBox ID="WIDtotal_fee" name="WIDtotal_fee" runat="server"></asp:TextBox>
                        <span>必填
</span>
                    </dd>

                    <li><font class="note-help">
                        如果您点击“提交”按钮，即表示您同意该次的执行操作。 </font></li>

                    <!--<dd>
                        <span class="null-star">*</span>
                    </dd>-->
                    <dt>
                        <font class="note-help">
                        <span class="new-btn-login-sp">
                            <asp:Button ID="BtnAlipay0" name="BtnAlipay" class="new-btn-login" Text="提交" Style="text-align: center;"
                                runat="server" OnClick="Alipay_RSA_Submit"/></span> </font></dt>
                    <dd>
                        </dd></dl>
            </div>
            <!--<div id="foot">
                <ul class="foot-ul">
                    <li><font class="note-help">
                        如果您点击“提交”按钮，即表示您同意该次的执行操作。 </font></li>
                    <li>&nbsp;</li>
                </ul>
                <ul>
            </div>-->
        </div>
        <p align="center">
            <asp:Image ID="Image1" runat="server" Height="255px" Width="249px" />
        </p>
    </form>
</body>
</html>