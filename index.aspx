<%@ Page Language="C#" AutoEventWireup="false" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" type ="text/css" href ="css/index.css" />
<script type="text/javascript" src="js/index.js"></script>    
</head>
<body>
    <form id="form1" runat="server">
    <div id="Top">
        <div id="Top2">欢迎来到橘子招聘网！免费咨询服务热线：<span>025-98765432</span></div>
    <!--banner开始-->
       <div id="Header">
           <div id ="banner"><a href ="#"><img  src="images/logo.png"/></a></div>
                     </div>
        <!--banner结束-->
        <div id="nav">
            <!--导航开始-->
        <ul>
        <li><a href ="#"  class ="nav_href">首页</a></li>
        <li><a href ="#" class ="nav_href">招聘</a></li>
        <li><a href ="#" class ="nav_href">求职</a></li>
        <li><a href ="#" class ="nav_href">新闻中心</a></li>
        <li><a href ="#"class ="nav_href" >用户中心</a></li>
        <li><a href ="#"class ="nav_href" >企业中心</a></li>
        <li><a href ="login.aspx" class ="nav_href">登录</a></li>
        <li><a href ="zuce.aspx"   class ="nav_href">注册</a></li>
        <li><a href ="#" class ="nav_href">退出</a></li>
        </ul>
        </div>
        <!--导航结束-->
        <!--搜索开始-->
        <!--搜索结束-->
        <!--网站头部结束-->
        <!--滚动图片开始-->
        <div id="content">
           <div id="left">
               <!--选项卡按钮开始-->
           <ul class ="select_but">
               <li class ="hover ">招聘公告</li>
               <li>招聘会</li>
                <li>全职岗位</li>
               <li>实习岗位</li>
           </ul>
                <!--选项卡按钮结束-->
               <!--内容区开始-->
               <div class ="select_con">
                      <div class ="select_content">
                           <ul class ="news_1">
                           <li><span >2018-02-02</span><a href="#">长城物业集团股份有限公司</a></li>
                           <li><span >2018-02-02</span><a href="#">长城物业集团股份有限公司</a></li>
                           <li><span >2018-02-02</span><a href="#">长城物业集团股份有限公司</a></li>
                           <li><span >2018-02-02</span><a href="#">长城物业集团股份有限公司</a></li>
                           <li><span >2018-02-02</span><a href="#">长城物业集团股份有限公司</a></li>
                           <li><span >2018-02-02</span><a href="#">长城物业集团股份有限公司</a></li>
                           <li><span >2018-02-02</span><a href="#">长城物业集团股份有限公司</a></li>
                      </ul>                 
                      </div>
                      <div class ="select_content">22</div>
                      <div class ="select_content">33</div>
                       <div class ="select_content">44</div>
               </div>
               <!--内容区结束-->
           </div>
         <div id="Adv">
             <!--图片列表-->
        <div class ="ImgList" style ="background :url('images/011.jpg') center "></div>
        <div class ="ImgList" style ="background :url('images/021.jpg') center "></div>
        <div class ="ImgList" style ="background :url('images/031.jpg') center "></div>
        <div class ="ImgList" style ="background :url('images/041.jpg') center "></div>
        <!--滚动图片结束-->
             <!--轮播的按钮-->
             <ul class="button">
                 <li class ="hover"></li>
                 <li></li>
                 <li></li>
                 <li></li>
             </ul>
             </div>
             <div id="c_center"></div>
            <div id ="bom">
                 <div class ="bom_left" >
                     &nbsp;<img  src="images/fangdajing.jpg" style="height: 191px; width: 194px"/>
                 </div>

             <div class="bom_right">
                 <div class ="b_r_top">
                     <img  src="images/logo02.png" style="width: 117px; height: 40px"/>
                     </div>
                 <div class ="b_r_con">
                     <ul class="jiqiao">
                         <li><a href ="#">服装礼仪</a></li>
                         <li><a href ="#">面试技巧</a></li>
                         <li><a href ="#">5555</a></li>
                         <li><a href ="#">44</a></li>
                         <li><a href ="#">444</a></li>
                         <li><a href ="#">444</a></li>
                     </ul>
                 </div>
             </div>
            </div>
           
          
            </div>
          <div id="bom_top">
              <div class ="bom_con"><span>CopyRight &copy; 2018-2019</span> </div>
          </div>
        <script type ="text/javascript" src ="js/jquery.js"></script>
        <script type ="text/javascript"src="js/index.js" ></script>
     
       
    </div>
        
    </form>
</body>
</html>
