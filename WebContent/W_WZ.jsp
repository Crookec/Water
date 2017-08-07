<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-more.js"></script>
<script src="js/grid.js"></script>
<script src="js/main.js"></script>
<script src="scrollPic.js"></script>

<style type="text/css">

a:link {text-decoration: none}
*{margin:0;padding:0;}
    ul{list-style:none;}
    img{border:0;}
    .scroll{width:1316px;height:254px;}
    .scroll_left,.scroll_right{width:30px; height:50px; background:url(img/icon.png) no-repeat; background:url(img/icon_ie6.png) no-repeat\9; position:absolute; top:33px; z-index:99; cursor:pointer;filter:alpha(opacity=70); opacity:0.7;}
    .scroll_left{background-position:0 -60px; left:4px;}
    .scroll_right{background-position:0 0; left:1330px;}
   
    .pic{width:1256px;height:254px;float:left;}
    .pic ul{display:block;}
    .pic li{float:left;display:inline;width:1256px;text-align:center;}

#choose td{text-align: center;width:80px;font-weight:bold;color:white}
#choose  td:hover{ 
background-color:white;
color:#00008B; 
} 

#fifth{
height:20px;width:1320px;
background-color:	#4169E1;
text-align: center;
margin-left: auto;
margin-right: auto;
float:left;
}

</style>
</head>
<body>
<div id="Layer" style="position:absolute; width:1366px; height:400px; z-index:-1">    
<img src="img/back05.jpg" height="400px" width="1366px"/>    
</div> 
<div style="width:1316px;margin-left:50px;">
    <div class="scroll">
        <div class="scroll_left" id="LeftArr"></div>
        <div class="pic" id="scrollPic">
        <ul>
            <li><img src="img/banner01.jpg" width="1256" height="254" alt="" /></li>
            <li><img src="img/banner02.jpg" width="1256" height="254" alt="" /></li>
            
        </ul>
        </div>
        <div class="scroll_right" id="RightArr"></div>
    </div>
</div>
<!-- 滚动 -->

<table id="ALL">
<tr id="first"><td style="width:180px;height:40px"></td>
<td style="width:980px;background-color:#6495ED;">
<table id="choose">
<tr style="height:38px"><td><a href="Main.jsp">首页</a> </td>
<td style="width:100px;background-color:white;"> <span style="color:#00008B;font-weight:bold;">乌镇观测点 </span></td>
<td style="width:160px"><a href="W_NL.jsp">浙江农林大学观测点</a></td> 
<td style="width:78px "><a href="Message.jsp">相关知识</a></td> 
<td><a href="W_NL.jsp">手机版</a></td></tr></table>
</td></tr>
</table>

<div id="fifth" name="第五块" style="font-weight:bold;color:white;"> 
    
浙江农林大学

 </div><!-- 第五块 -->
</body>
<script type="text/javascript">
//图片滚动
window.onload = function(){
    scrollPic();
}
function scrollPic() {
    var scrollPic = new ScrollPic();
    scrollPic.scrollContId   = "scrollPic"; //内容容器ID
    scrollPic.arrLeftId      = "LeftArr";//左箭头ID
    scrollPic.arrRightId     = "RightArr"; //右箭头ID

    scrollPic.frameWidth     = 1256;//显示框宽度
    scrollPic.pageWidth      = 1256; //翻页宽度

    scrollPic.speed          = 100; //移动速度(单位毫秒，越小越快)
    scrollPic.space          = 100; //每次移动像素(单位px，越大越快)
    scrollPic.autoPlay       = true; //自动播放
    scrollPic.autoPlayTime   = 3; //自动播放间隔时间(秒)

    scrollPic.initialize(); //初始化
}
</script>
</html>