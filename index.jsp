<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="com.db.DBManager,com.bean.Forum"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>校园虚拟社区</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/image-hover.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
	</head>
<body class="bg">
<div class="top">
    <nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container f21">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a href="" class="navbar-brand">校园虚拟社区</a>
				<!-- 判断登录状态 -->
				<%
				if(session.isNew())
					session.setAttribute("islogin", "false");
				if(null != session.getAttribute("islogin") && session.getAttribute("islogin").toString() == "true") {%>
				<!-- 已登录 用户名 相关消息数-->
				<span class="user">
				<a href=""><span class="item"><%=session.getAttribute("user") %></span></a>
				<a href="logout.jsp">登出 </a>
				</span>
				<%}%>
				<%
				if(null == session.getAttribute("islogin") || session.getAttribute("islogin").toString() == "false") {%>
				<!-- 未登录 -->
				<span class="login-in">
				<a href="login.jsp">登录 </a>
				<i class="icon iconfont">&#xe60c;</i>
				</span>
				<%}%>
				
			</div>
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>
					<a href="#technology">技术研讨</a>
					</li>
					<li>
					<a href="#video">精彩视频</a>
					</li>
					<li>
					<a href="#announcement">校园公告</a>
					</li>
					<li>
					<a href="#weibo">趣味微博</a>
					</li>
					<li>
					<a href="#program">创意项目</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</div>
<!-- end of navbar -->
<div id="technology">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<ul class="nav-menu clearfix unstyled">
					<li><a href="question.jsp" class="three-d">
						技术研讨
						<span class="three-d-box"><span class="front">技术研讨</span><span class="back">技术研讨</span></span>
					</a></li>
				</ul>
			</div>
			<div class="col-sm-12 col-md-12">
				<div class="col-sm-8 col-md-8">
				<div class="col-sm-12 col-md-12 ">
						<div class="last-article">
							<h3><i class="icon iconfont">&#xe60a;</i>最新文章</h3>
						</div>
						<div class="featured-article">
							<h4>Featured article</h4>
				<%
				int count=0;
				Forum forum = null;
				String forumSql = "SELECT * FROM forum ORDER BY f_id DESC";
				DBManager sql = DBManager.createInstance();
		        sql.connectDB();
		        ResultSet rs1 = sql.executeQuery(forumSql);
		        while(rs1.next()&&count < 5) {
		        	String userSql = "SELECT username FROM user WHERE u_id =" + rs1.getInt("u_id");
		        	//ResultSet rs2 = sql.executeQuery(userSql);
		        	forum = new Forum();
		        	forum.setTime(rs1.getString("time"));
		        	//if(rs2.next()) {
			        //	forum.setAuthor(rs2.getString("username"));
		        	//}
			        forum.setTitle(rs1.getString("title"));
			        forum.setContent(rs1.getString("content"));
			        DBManager sql1 = DBManager.createInstance();
			        sql1.connectDB();
			        ResultSet rs2 = sql1.executeQuery(userSql);
			        if(rs2.next()) {
				        	forum.setAuthor(rs2.getString("username"));
			        	}
			        count++;%>
		        	
							<div class="Thumbnail">
								<img src="https://lh4.ggpht.com/WtFP82fcc8w5SffEqSJNENBuk0ckAy65PAZr05yp8XPaqagyMDuKt48iTOGwZ5w2CU0=h310" alt="thumbnail">
								<!-- 缩略图 -->
							</div>
							<div class="describe">
								<h4><p><strong><a href="p-00001.html" target="_blank"><%=forum.getTitle() %></a></strong></p></h4>
								<!-- 标题 -->
								<p class="note"><span class="time">9-Jul-15 9:31am</span> by <span class="author"><%=forum.getAuthor() %> </span></p>
								<!-- 时间 发表人 -->
								<p class="outline"><%=forum.getContent() %></p>
							</div>
							<div class="clearfix"></div>
						
		        <%
		        }
				%>
					</div>
					</div>
					<div class="col-sm-12 col-md-12">
						<!-- 最新文章列表 -->
						
						<!-- next -->
						
						<!-- next -->
						
						<div class="more">
							<p><a href="question.jsp">more <i class="icon iconfont">&#xe60c;</i></a></p>
						</div>
					</div>
				</div>
				<!-- 技术社区热点列表 -->
				<div class="col-sm-4 col-md-4">
					<div class="col-sm-12 col-md-12">
						<div class="hot">
							<h3><i class="icon iconfont">&#xe60f;</i>社区热点</h3>
							<ol class="hot-list">
								<li><a href="p-00001.html" target="_blank">从零开始如何系统学好前端开发基础？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
								<li><a href="p-00001.html" target="_blank">从零开始如何系统学好前端开发基础？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
								<li><a href="p-00001.html" target="_blank">从零开始如何系统学好前端开发基础？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
							</ol>
						</div>
						<div class="more">
							<p><a href="">more <i class="icon iconfont">&#xe60c;</i></a></p>
						</div>
					</div>
					<!-- 最新问题列表 -->
					<div class="col-sm-12 col-md-12">
						<div class="question">
							<h3><i class="icon iconfont">&#xe60b;</i>最新问题</h3>
							<ol class="question-list">
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
								<li><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></li>
							</ol>
						</div>
						<div class="more">
							<p><a href="">more <i class="icon iconfont">&#xe60c;</i></a></p>
						</div>
					</div>
					<!-- 创业项目推广 -->
					<!-- <div class="col-sm-12 col-md-12 text-center ad">
						<a href="#"><img src="http://www.pucaotangsw.com/uploads/allimg/161024/1-16102414251I63.jpg" alt=""></a>
					</div> -->
					</div>
				</div>
			</div>
			</div>
	</div>
</div>
<div class="or-spacer">
    <div class="mask"></div>
    <span><i>wow</i></span>
</div>
<!-- end of technology -->
<div id="video">
	<div class="container">
		<div class="row">
		    <ul class="nav-menu clearfix unstyled">
				<li><a href="#" class="three-d">
					精彩视频
					<span class="three-d-box"><span class="front">精彩视频</span><span class="back">精彩视频</span></span>
				</a></li>
			</ul>
			<div class="col-sm-12 col-md-12">
				<div class="row">
					<div class="col-sm-5 col-md-5">
						<div class="preview-list">
							<ul>
								<li>
                                <a href=""><img src="http://images.17173.com/2012/news/2012/08/26/lj0826dm30s.jpg" alt=""></a>
								</li>
								<li>
								<a href=""><img src="http://i0.hdslb.com/bfs/archive/65089d306ddf3d92a1f31ff7b1ab6575835d7798.jpg" alt=""></a>
								</li>
								<li>
								<a href=""><img src="http://i0.hdslb.com/bfs/archive/ed58ff87e8139346e1da668884a738fb7b8d99df.jpg" alt=""></a>
								</li>
								<li><a href=""><img src="http://i0.hdslb.com/bfs/archive/aea1866919699dedb0d6ab8de02606c2690361eb.jpg" alt=""></a>
								</li>
								<li><a href=""><img src="http://i0.hdslb.com/bfs/archive/2f2c6adf9b645c5d08a535c5333669533532c8bd.jpg" alt=""></a>
								</li>
							</ul>
						</div>
						<div class="clear"></div>
						<div class="list-dot">
						    <span class="onselect">1</span>
					        <span>2</span>
					        <span>3</span>
					        <span>4</span>
					        <span>5</span>
						</div>
					</div>
					<!-- end of big -->
					<div class="col-sm-7 col-md-7">
						<div class="col-sm-12 col-md-12">
							<div class="video-list main">
								<ul>
									<li class="img-hover view">
	                                <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
	                                <span class="img-info">海鸟与鱼的相爱只是一场意外 </span>
	                                <div class="mask">
				                        <h2>海鸟与鱼</h2>
				                        <p>海鸟与鱼的相爱只是一场意外</p>
				                        <a href="v-00001.html" target="_blank" class="info">Watch</a>
				                    </div>
									</li>
									<li class="img-hover view">
	                                <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
	                                <span class="img-info">海鸟与鱼的相爱只是一场意外 </span>
	                                <div class="mask">
				                        <h2>海鸟与鱼</h2>
				                        <p>海鸟与鱼的相爱只是一场意外</p>
				                        <a href="v-00001.html" target="_blank" class="info">Watch</a>
				                    </div>
									</li>
									<li class="img-hover view">
	                                <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
	                                <span class="img-info">海鸟与鱼的相爱只是一场意外 </span>
	                                <div class="mask">
				                        <h2>海鸟与鱼</h2>
				                        <p>海鸟与鱼的相爱只是一场意外</p>
				                        <a href="v-00001.html" target="_blank" class="info">Watch</a>
				                    </div>
									</li>
									<li class="img-hover view">
	                                <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
	                                <span class="img-info">海鸟与鱼的相爱只是一场意外 </span>
	                                <div class="mask">
				                        <h2>海鸟与鱼</h2>
				                        <p>海鸟与鱼的相爱只是一场意外</p>
				                        <a href="v-00001.html" target="_blank" class="info">Watch</a>
				                    </div>
									</li>
									<li class="img-hover view">
	                                <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
	                                <span class="img-info">海鸟与鱼的相爱只是一场意外 </span>
	                                <div class="mask">
				                        <h2>海鸟与鱼</h2>
				                        <p>海鸟与鱼的相爱只是一场意外</p>
				                        <a href="v-00001.html" target="_blank" class="info">Watch</a>
				                    </div>
									</li>
									<li class="img-hover view">
	                                <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
	                                <span class="img-info">海鸟与鱼的相爱只是一场意外 </span>
	                                <div class="mask">
				                        <h2>海鸟与鱼</h2>
				                        <p>海鸟与鱼的相爱只是一场意外</p>
				                        <a href="v-00001.html" target="_blank" class="info">Watch</a>
				                    </div>
									</li>
								</ul>
						    </div>
						</div>
						<!-- end -->
				    </div>
				</div>
					
				<div class="col-sm-12 col-md-12 new-video">
				    <span class="video-icon"><i class="icon iconfont">&#xe678;</i></span>
				    <h2>最新视频</h2>
			    </div>
			    <div class="col-sm-9 col-md-9">
			    	<div class="video-list">
						<ul>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
							<li>
                            <a href="v-00001.html" target="_blank"><img src="http://p3.wmpic.me/article/2015/12/25/1451032814_QDiWYSeX.jpg" alt=""></a>
                            <a href="v-00001.html" target="_blank" class="img-info"><span>海鸟与鱼的相爱只是一场意外 </span></a>
							</li>
						</ul>
					</div>
					<!-- end of list -->
			    </div>
			    <!-- end -->
			    <div class="col-sm-3 col-md-3 video-rank">
			        <span class="video-icon"><i class="icon iconfont">&#xe654;</i></span>
				    <h3>视频排行榜</h3>
			    	<ul>
			    		<li><i class="number hot-num">1</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number hot-num">2</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number hot-num">3</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number">4</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number">5</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number">6</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number">7</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number">8</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    		<li><i class="number">9</i><a href="v-00001.html" target="_blank">海鸟与鱼的相爱只是一场意外</a></li>
			    	</ul>
			    </div>
			</div>
	</div>
</div>
<div class="or-spacer">
    <div class="mask"></div>
    <span><i>wow</i></span>
</div>
<!-- end of video -->
<div id="announcement">
	<div class="container">
		<div class="row">
		    <ul class="nav-menu clearfix unstyled">
				<li><a href="#" class="three-d">
					校园公告
					<span class="three-d-box"><span class="front">校园公告</span><span class="back">校园公告</span></span>
				</a></li>
			</ul>
		    <div class="col-sm-12 col-md-12 anno">
		    	<div class="row">
		    		<div class="col-sm-8 col-md-8 community-anno ">
		    		    <div class="row big">
		    		    	<div class="col-sm-6 col-md-6  big-info text-center">
			    				<img src="http://www.staff.chu.edu.tw/high_school/images/CHU_12_A_01_s.jpg" alt="">
			    				<h3>社团招新了！</h3>
	                            <p>为充分发挥学生社团凝聚青年学生、繁荣校园文化、全面拓展大学生综合素质的积极作用，使我院各社团永葆活力，为更多同学提供展示和锻炼自我的空间，构建“一体两翼”的团学工作格局，经研究，定于近期统一组织各学生社团开展2016年招新工作<a href="a-00001.html" target="_blank">更多>></a></p>
		    			    </div>
			    			<div class="col-sm-5 col-md-5 big-info text-center">
			    				<img src="http://gl.fdzcxy.com/admin/editor/UploadFile/201671211245153.jpg" alt="">
			    				<h3>“三下乡”社会实践活动启动</h3>
	                            <p>为深入学习贯彻党的十八大和十八届三中、四中全会精神，贯彻落实习近平总书记系列讲话精神，推动落实培育和践行社会主义核心价值观的根本任务，充分发挥社会实践的育人作用，进一步引导青年学生在实践中受教育、长才干、作贡献，学校将继续组织开展2015年大学生暑期科技文化卫生“三下乡”社会实践活动<a href="a-00002.html" target="_blank">更多>></a></p>
			    			</div>
		    		    </div>
		    			<div class="row middle">
		    		    	<div class="col-sm-3 col-md-3 middle-info text-center">
			    				<h3>第八届蓝桥杯通知</h3>
	                            <p>大赛报名（2016年10月——2016年12月15日）<br />学校及选手登陆大赛官方网站（<a href="http://www.lanqiao.org/">进入</a>）在线报名，大赛的报名、交费、下载准考证等工作全部通过蓝桥杯官网在线报名系统完成<a href="">更多>></a></p>
		    			    </div>
			    			<div class="col-sm-4 col-md-4 middle-info text-center">
			    				<h3>关于开展“六有青年”团日活动</h3>
	                            <p>为了进一步推动“四进四信”活动的深入开展，，引导帮助广大团员青年争做有理想、有追求、有担当、有作为、有品质、有修养的“六有青年”，校团委决定开展“深化四进四信、争做六有青年”的主题团日活动<a href="javascript:return false;">更多>></a></p>
			    			</div>
			    			<div class="col-sm-3 col-md-3 middle-info text-center">
			    				<h3>“中国梦 我的梦”主题演讲比赛</h3>
	                            <p>为了锻炼大学生演讲能力，增进思想交流，丰富校园文化，营造浓厚学习氛围，经院领导批示，校图书馆拟四月上旬举办演讲比赛<a href="javascript:return false;">更多>></a></p>
			    			</div>
		    		    </div>
		    		</div>
		    		<div class="col-sm-4 col-md-4">
		    			<div class="news">
		    			    <span class="news-icon"><i class="icon iconfont">&#xe62e;</i></span>
		    				<h2>最新通知</h2>
		    				<div class="news-list">
		    					<ul>
		    						<li><a href="http://jwc.xust.edu.cn/news.asp?id=4&bh=1216" target="_blank">关于公布西安科技大学首届“九歌杯”文学创作大赛获奖结果的通知</a></li>
		    						<li><a href="http://jwc.xust.edu.cn/news.asp?id=4&bh=1208" target="_blank">关于举办西安科技大学第一届“水艺”主题创意科技竞赛的通知</a></li>
		    						<li><a href="http://jwc.xust.edu.cn/news.asp?id=4&bh=1212" target="_blank">关于公布2016年“外研社杯”全国英语阅读、写作大赛西安科技大学初赛获奖名单的通知</a></li>
		    						<li><a href="http://jwc.xust.edu.cn/news.asp?id=4&bh=1200" target="_blank">关于公布西安科技大学第九届大学生网络检索知识竞赛获奖名单的通知</a></li>
		    						<li><a href="http://jwc.xust.edu.cn/news.asp?id=4&bh=1204" target="_blank">关于开展2016年度校级教材建设立项工作的通知</a></li>
		    						<li><a href="http://jwc.xust.edu.cn/news.asp?id=4&bh=1206" target="_blank">关于对2016届本科毕业设计（论文）工作进行验收评比的通知</a></li>
		    						<li><a href="http://jwc.xust.edu.cn/materials.asp?id=17&bh=1118" target="_blank">关于公布2016年度校级优秀教材评选结果的通知</a></li>
		    						<li><a href="http://jwc.xust.edu.cn/materials.asp?id=17&bh=1042" target="_blank">关于开展2016年度校级优秀教材申报及评选工作的通知</a></li>
		    					</ul>
		    				</div>
		    			</div>
		    		</div>
		    	</div>
		    </div>	
		</div>
	</div>
</div>
<div class="or-spacer">
    <div class="mask"></div>
    <span><i>wow</i></span>
</div>
<!-- end of announcement -->
<div id="weibo">
	<div class="container">
		<div class="row">
		    <ul class="nav-menu clearfix unstyled">
				<li><a href="#" class="three-d">
					趣味微博
					<span class="three-d-box"><span class="front">趣味微博</span><span class="back">趣味微博</span></span>
				</a></li>
			</ul>
		    <div class="col-sm-12 col-md-12">
		    	<div class="row">
		    		<div class="col-sm-8 col-md-8 col-sm-offset-1 col-md-offset-1 weibo-list">
		    			<ul>
		    			<!-- list of weibo -->
		    				<li class="weibo-desc">
		    					<p class="weibo-content">冠军终归西科！别人在魔兽世界里尽情厮杀时,你们在训练;别人在花前月下你侬我侬时,你们在训练;别人在各大商城血拼“11.11”时,你们在训练;别人在翘首企盼血拼战利品时,你们在等待着检录;别人在收到快递一拆为快时,你们在搏得金牌振臂一吼,冠军终归这里！年复一年的积累,只为今日的凤凰涅槃;阴晴圆缺、寒来暑往,不变的是你们挥汗训练的身影;礼仪廉耻、忍耐克己、百折不屈.你们用行动诠释着跆拳道精神。加油，西科未赢够！</p>
		    					<ul class="img-list">
		    						<li class="pic"><img src="http://ww3.sinaimg.cn/mw690/006CfKhMgw1f9t7lhz744j30k00k9dhz.jpg" alt=""></li>
		    						<li class="pic"><img src="http://ww1.sinaimg.cn/mw690/006CfKhMgw1f9t7ll4e5kj30zj0qothq.jpg" alt=""></li>
		    						<li class="pic"><img src="http://ww2.sinaimg.cn/mw690/006CfKhMgw1f9t7llxpaej30k00f0dhk.jpg" alt=""></li>
		    					</ul>
		    					<div class="clear"></div>
		    					<div class="weibo-info">
		    						<div class="left">
		    							<img src="http://tva3.sinaimg.cn/crop.0.0.996.996.180/006CfKhMjw8f9kqzvs4laj30ro0roacs.jpg" alt="" class="little-head">
		    							<a href="">@西科跆拳道</a>
		    							<span class="time">11月15日 23:31</span>
		    						</div>
		    						<div class="right">
		    							<span class="send"><i class="icon iconfont">&#xe613;</i><span class="send-num">45</span></span>
		    							
		    							<span class="remark"><i class="icon iconfont">&#xe612;</i><span class="remark-num">200</span></span>
		    							<span class="love"><i class="icon iconfont">&#xe610;</i><span class="love-num">300</span></span>
		    						</div>
		    					</div>	
		    				</li>
		    				<li class="weibo-desc">
		    					<p class="weibo-content">冠军终归西科！别人在魔兽世界里尽情厮杀时,你们在训练;别人在花前月下你侬我侬时,你们在训练;别人在各大商城血拼“11.11”时,你们在训练;别人在翘首企盼血拼战利品时,你们在等待着检录;别人在收到快递一拆为快时,你们在搏得金牌振臂一吼,冠军终归这里！年复一年的积累,只为今日的凤凰涅槃;阴晴圆缺、寒来暑往,不变的是你们挥汗训练的身影;礼仪廉耻、忍耐克己、百折不屈.你们用行动诠释着跆拳道精神。加油，西科未赢够！</p>
		    					<ul class="img-list">
		    						<li class="pic"><img src="http://ww3.sinaimg.cn/mw690/006CfKhMgw1f9t7lhz744j30k00k9dhz.jpg" alt=""></li>
		    						<li class="pic"><img src="http://ww1.sinaimg.cn/mw690/006CfKhMgw1f9t7ll4e5kj30zj0qothq.jpg" alt=""></li>
		    						<li class="pic"><img src="http://ww2.sinaimg.cn/mw690/006CfKhMgw1f9t7llxpaej30k00f0dhk.jpg" alt=""></li>
		    					</ul>
		    					<div class="clear"></div>
		    					<div class="weibo-info">
		    						<div class="left">
		    							<img src="http://tva3.sinaimg.cn/crop.0.0.996.996.180/006CfKhMjw8f9kqzvs4laj30ro0roacs.jpg" alt="" class="little-head">
		    							<a href="">@西科跆拳道</a>
		    							<span class="time">11月15日 23:31</span>
		    						</div>
		    						<div class="right">
		    							<span class="send"><i class="icon iconfont">&#xe613;</i><span class="send-num">45</span></span>
		    							
		    							<span class="remark"><i class="icon iconfont">&#xe612;</i><span class="remark-num">200</span></span>
		    							<span class="love"><i class="icon iconfont">&#xe610;</i><span class="love-num">300</span></span>
		    						</div>
		    					</div>	
		    				</li>
		    				<li class="weibo-desc">
		    					<p class="weibo-content">冠军终归西科！别人在魔兽世界里尽情厮杀时,你们在训练;别人在花前月下你侬我侬时,你们在训练;别人在各大商城血拼“11.11”时,你们在训练;别人在翘首企盼血拼战利品时,你们在等待着检录;别人在收到快递一拆为快时,你们在搏得金牌振臂一吼,冠军终归这里！年复一年的积累,只为今日的凤凰涅槃;阴晴圆缺、寒来暑往,不变的是你们挥汗训练的身影;礼仪廉耻、忍耐克己、百折不屈.你们用行动诠释着跆拳道精神。加油，西科未赢够！</p>
		    					<ul class="img-list">
		    						<li class="pic"><img src="http://ww3.sinaimg.cn/mw690/006CfKhMgw1f9t7lhz744j30k00k9dhz.jpg" alt=""></li>
		    						<li class="pic"><img src="http://ww1.sinaimg.cn/mw690/006CfKhMgw1f9t7ll4e5kj30zj0qothq.jpg" alt=""></li>
		    						<li class="pic"><img src="http://ww2.sinaimg.cn/mw690/006CfKhMgw1f9t7llxpaej30k00f0dhk.jpg" alt=""></li>
		    					</ul>
		    					<div class="clear"></div>
		    					<div class="weibo-info">
		    						<div class="left">
		    							<img src="http://tva3.sinaimg.cn/crop.0.0.996.996.180/006CfKhMjw8f9kqzvs4laj30ro0roacs.jpg" alt="" class="little-head">
		    							<a href="">@西科跆拳道</a>
		    							<span class="time">11月15日 23:31</span>
		    						</div>
		    						<div class="right">
		    							<span class="send"><i class="icon iconfont">&#xe613;</i><span class="send-num">45</span></span>
		    							
		    							<span class="remark"><i class="icon iconfont">&#xe612;</i><span class="remark-num">200</span></span>
		    							<span class="love"><i class="icon iconfont">&#xe610;</i><span class="love-num">300</span></span>
		    						</div>
		    					</div>	
		    				</li>
		    			</ul>
		    		</div>
		    		<!-- end if weibo-list -->
		    		<div class="col-sm-3 col-md-3 hot-user">
		    			<h3>社区人气用户</h3>
		    			<ul>
		    				<li>
		    					<i class="num">1</i>
		    					<img src="http://img.zcool.cn/community/01b5bc563cc76e6ac7259e0f9e9284.jpg" alt="">
		    					<a href="" class="nickname">萌小鹿</a>
		    					<span class="user-rank">9.7</span>
		    				</li>
		    				<li>
		    					<i class="num">2</i>
		    					<img src="http://img.zcool.cn/community/01c5bf563cc76e6ac7259e0f2f4cb5.jpg" alt="">
		    					<a href="" class="nickname">繆蘇</a>
		    					<span class="user-rank">9.5</span>
		    				</li>
		    				<li>
		    					<i class="num">3</i>
		    					<img src="http://www.qqxoo.com/uploads/allimg/161105/22335AE8-3.jpg" alt="">
		    					<a href="" class="nickname">橘絡</a>
		    					<span class="user-rank">9.1</span>
		    				</li>
		    				<li>
		    					<i class="num">4</i>
		    					<img src="http://www.poluoluo.com/qq/UploadFiles_7828/201611/2016110420035680.jpg" alt="">
		    					<a href="" class="nickname">歆久</a>
		    					<span class="user-rank">8.5</span>
		    				</li>
		    				<li>
		    					<i class="num">5</i>
		    					<img src="http://img1.2345.com/duoteimg/qqTxImg/2013/12/ns/18-024824_754.jpg" alt="">
		    					<a href="" class="nickname">絕里花</a>
		    					<span class="user-rank">7.6</span>
		    				</li>
		    				<li>
		    					<i class="num">6</i>
		    					<img src="http://tupian.enterdesk.com/2015/xll/02/27/1/zhuobielin8.jpg" alt="">
		    					<a href="" class="nickname">木吉他</a>
		    					<span class="user-rank">7.5</span>
		    				</li>
		    				<li>
		    					<i class="num">7</i>
		    					<img src="http://tva2.sinaimg.cn/crop.0.0.996.996.1024/0069vPH6jw8f1hsi0n3n4j30ro0rota3.jpg" alt="">
		    					<a href="" class="nickname">虹之間</a>
		    					<span class="user-rank">7.0</span>
		    				</li>
		    				<li>
		    					<i class="num">8</i>
		    					<img src="http://tva4.sinaimg.cn/crop.0.0.640.640.50/4cfa62f8jw8ee9j6mpqn3j20hs0hs0sz.jpg" alt="">
		    					<a href="" class="nickname">璃茉</a>
		    					<span class="user-rank">6.9</span>
		    				</li>
		    				<li>
		    					<i class="num">9</i>
		    					<img src="http://tva3.sinaimg.cn/crop.0.0.750.750.50/e1b3af7bjw8eyhsvh9nvvj20ku0kuwff.jpg" alt="">
		    					<a href="" class="nickname">貓言</a>
		    					<span class="user-rank">6.8</span>
		    				</li>
		    				<li>
		    					<i class="num">10</i>
		    					<img src="http://tva4.sinaimg.cn/crop.0.0.996.996.180/005OexWwjw8f5ibu0fzrgj30ro0rpjtc.jpg" alt="">
		    					<a href="" class="nickname">涼音</a>
		    					<span class="user-rank">6.5</span>
		    				</li>
		    			</ul>
		    		</div>
		    		<!-- end of user-rank -->
		    	</div>
		    </div>	
		</div>
	</div>
</div>
<div class="or-spacer">
    <div class="mask"></div>
    <span><i>wow</i></span>
</div>
<!-- end of  weibo-->
<div id="program">
	<div class="container">
		<div class="row">
		    <ul class="nav-menu clearfix unstyled">
				<li><a href="#" class="three-d">
					创意项目
					<span class="three-d-box"><span class="front">创意项目</span><span class="back">创意项目</span></span>
				</a></li>
			</ul>
		    <div class="col-sm-12 col-md-12">
		    	<div class="box">
					<div class="picbox">
						<ul class="piclist mainlist">
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/65773.html" target="_blank"><img src="http://img.cy.ncss.cn//project/101301/20160824/472610ca777046b5b023fffdc2307a41.jpg" width="220" height="105" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/215281.html" target="_blank"><img src="http://img.cy.ncss.cn//project/265007/20160914/ee767ea9d8af4bddad6ec0859a0049a6.jpg" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/209309.html" target="_blank"><img src="http://img.cy.ncss.cn//project/190476/20160812/bc11d20d7a294d47a1ef7fa7ac8f6af4.png" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/76929.html" target="_blank"><img src="http://img.cy.ncss.cn//project/83570/20160915/752cea0f7d0f4fb291405120e620537a.png" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/96513.html" target="_blank"><img src="http://img.cy.ncss.cn/project/93427/20160529/d5754d72177f43ee8a78bb3a9c17ac24.png" /></a></li>
				            <li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/78775.html" target="_blank"><img src="http://img.cy.ncss.cn//project/99556/20160915/09dd761c8ba14625a9fe011748793183.png" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/60203.html" target="_blank"><img src="http://img.cy.ncss.cn/project/89709/20160511/333d9a035cfb45889663099f612c135f.png" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/79436.html" target="_blank"><img src="http://img.cy.ncss.cn/project/115750/20160524/a1dd98d5eb114b39906ae209e161e646.png" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/146727.html" target="_blank"><img src="http://img.cy.ncss.cn//project/3398/20160914/2478290d68934b1ca4d53c0f7457fea0.jpg" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/131809.html" target="_blank"><img src="http://img.cy.ncss.cn/project/167456/20160613/b0b72ef03c1f4abfb895cdcab97532eb.png" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/185470.html" target="_blank"><img src="http://img.cy.ncss.cn/project/91419/20160713/b6c545274e52412d8d4c1e44c23ae795.jpg" /></a></li>
							<li><a href="http://cy.ncss.org.cn/CYDS_2TH/project/info/211022.html" target="_blank"><img src="http://img.cy.ncss.cn//project/259342/20160815/9a21950a34b04f1bbc066870ec4bcbbd.png" /></a></li>
						</ul>
				        <ul class="piclist swaplist"></ul>
					</div>
					<div class="og_prev"></div>
					<div class="og_next"></div>
				</div>
		    </div>	
		</div>
	</div>
</div>
<!-- end of program -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center contact" id="contact">
				<a href="" target='_blank'><i class="icon iconfont">&#xe600;</i></a>
				<a href="" target='_blank'><i class="icon iconfont">&#xe601;</i></a>
				<a href="" target='_blank'><i class="icon iconfont">&#xe602;</i></a>
                <a href="" target='_blank'><i class="icon iconfont">&#xe603;</i></a>
                <a href="" target='_blank'><i class="icon iconfont">&#xe605;</i></a>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 text-center text-muted">
				<p>Made by Ivan in Shanxi, China. All text, design and video are copyrighted. Copyright © 2016 SmartCampus.com. All Rights Reserved.</p>
			</div>
		</div>
	</div>
</footer>
<!-- end of footer-->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/multiGraphScrolling.js"></script>
	<script>
		$(document).ready(function(){
			var time = "";
	        var index = 1;
			showimg(index);
             //鼠标移入移出
             $(".list-dot span").hover(function () {
                clearTimeout(time);
                var icon=$(this).text();
                $(".list-dot span").removeClass("onselect").eq(icon-1).addClass("onselect");
                $(".preview-list li").hide().stop(true,true).eq(icon-1).fadeIn("slow");
             }, function () {
                index=$(this).text()> 4 ? 1 :parseInt($(this).text())+1;
                time = setTimeout("showimg(" + index + ")", 3000);
             });
         });

         function showimg(num) {
             index = num;
             $(".list-dot span").removeClass("onselect").eq(index-1).addClass("onselect");
             $(".preview-list li").hide().stop(true,true).eq(index-1).fadeIn("slow");
             index = index + 1 > 5 ? 1 : index + 1;
             time = setTimeout("showimg(" + index + ")", 3000);
         }
         
	</script>
</body>
</html>