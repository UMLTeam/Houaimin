<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%
	String path=request.getParameter("path");
	request.setAttribute("path", path);
 %>
<head>
    <title>教学资源-教学录像</title>
    <meta charset="utf-8">
    <link rel="icon" href="/images/dgut.jpg">
    <link rel="stylesheet" type="text/css" href="../style/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/teachResDetail.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/teachResDetail-2.css">
    <script type="text/javascript" src="../js/normal.js"></script>

    <!--dplayer-->
    <link href="https://cdn.bootcss.com/dplayer/1.25.0/DPlayer.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>
	<script src="https://cdn.bootcss.com/flv.js/1.5.0/flv.js"></script>
    <style>
        .detailContent .column_2{
            width: 620px;
        }
        /*.dplayer_wrap{*/
            /*!*position: relative;*!*/
			/*!*max-width:700px;*!*/
			/*!*height:500px;*!*/
			/*!*margin:0 auto;*!*/
		/*}*/
	</style>
</head>
<body onload="Rendering();">
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="top"></div>

<article class="content">

    <section id="banner">
        <img src="../images/index/abouttop_03.jpg">
    </section>
    <section class="mainWrap relative">
        <div class="detailContent">
            <div class="column_1">
                <section class="leftNav">
                    <h3>教学资源</h3>
                    <ul>
                        <li><a href="/courseWareServlet?type=show&page=1&pageSize=3">课程课件</a></li>
                        <li class="current"><a href="/videoServlet?type=show&page=1&pageSize=3">教学录像</a></li>
                        <li><a href="teachResDetail-3.jsp">习题库</a></li>
                        <li><a href="teachResDetail-4.html">案例库</a></li>
                        <li><a href="teachResDetail-5.html">实验任务</a></li>
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="/html/index.jsp">首页</a>·
                            <a href="/courseWareServlet?type=show&page=1&pageSize=3">教学资源</a>·
                            <a href="/videoServlet?type=show&page=1&pageSize=3">教学录像</a>
                        </nav>
                        <h1>教学录像</h1>
                    </header>
                   <div id="resource">
                        <a href="teachResDetail-2.html"><img src="/images/teachResource/返回.png">返回</a><br><br>
                      	<div class="dplayer_wrap">
                            <div id="dplayer"></div>
                        </div>
						<script src="https://cdn.bootcss.com/dplayer/1.25.0/DPlayer.min.js"></script>
						<script>
							//console.log('${path}');
							var dp = new DPlayer({
								container: document.getElementById('dplayer'),
    							screenshot: true,
                                allowfullscreen: true,
    							video: {
        							url: '${path}',
    							},
    							//pic: '/resource/teachResDetail-2/picture/1.png',
       	 						//thumbnails:'/resource/teachResDetail-2/picture/1.png',
							});
					 </script>  
                   </div>
                </article>
            </div>         
        </div>
    </section>
</article>

<!-- 通过js渲染，js代码在normal.js里 -->
<div id="bottom"></div>
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="copyrights"></div>
</body>
</html>