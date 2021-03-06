<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户登录</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
	</head>
<body class="bg-primary">
<div class="top">
    <nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a href="" class="navbar-brand"><i class="fa fa-home fa-fw"></i>校园虚拟社区</a>
			</div>
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>
			        <a href="question.html">技术研讨</a>
			        </li>
			        <li>
			        <a href="video.html">精彩视频</a>
			        </li>
			        <li>
			        <a href="announce.html">校园公告</a>
			        </li>
			        <li>
			        <a href="weibo.html">趣味微博</a>
			        </li>
			        <li>
			        <a href="index.html#program">创意项目</a>
			        </li>
				</ul>
			</div>
		</div>
	</nav>
</div>
<!-- end of navbar -->
<div class="bg">
	<div class="container">
		<div class="row">
			<div class="col-sm-7 col-md-7">
				<div class="type_strings f21">
					
				</div>
				<div class="description">
					<p class="f15">突破了单纯的文字交流、功能少和性能差的局面，是一款高度综合性的虚拟社区</p>
				</div>
				<div class="img">
					<img class="img-responsive img-rounded" src="https://classycoffeecream.files.wordpress.com/2012/07/1-university_campus_cartoon.jpg" alt="Smart Campus">
				</div>
			</div>
			<div class="col-sm-5">
				<div class="form-top">
					<div class="form-top-left float-left text-center">
						<h3>注册，开启新篇章...</h3>
					</div>
					<div class="form-top-right">
						
					</div>
				</div>
				<div class="form" role="form">
				
					<div class="form-group">
						<label class="sr-only" for="form-email">Email</label>
						<input type="email" name="email" placeholder="Email..." 
	                        class="form-email form-control input-lg" id="form-email" data-parsley-type="email" data-parsley-trigger="blur" data-parsley-required>
					</div>
	                    <!-- 学生注册 -->
	                    <a href=" javascript:void(0)" onclick="stu_sign()"><button type="submit" class="btn btn-block stu-sign-up btn-success"><strong>学生入口</strong></button></a>
				
					<span class="float-right"><small>已有账号? <strong><a href="login.jsp" id="stu">快速登录</a></strong></small></span>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
						<!-- 教师注册 -->
						 <a href=" javascript:void(0)" onclick="tech_sign()"><button type="submit" class="btn btn-block teacher-sign-up btn-success"><strong>教师入口</strong></button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
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
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
    <script src="js/typed.js"></script>
    <script>
	  $(function(){
	      $(".type_strings").typed({
	      	strings: ["<p><strong>校园虚拟社区</strong>给师生提供一个综合性的虚拟环境，<p>师生可以在这里交友，娱乐，分享技术...</p><p>极大地方便校园内各种信息的交流</p><p>加强校园内师生的凝聚力</p>"],
		    contentType: 'html',
		    typeSpeed: 0,
		    showCursor: false
	      });
	  });
	</script>
	<script type="text/javascript">
		function stu_sign(){
               var email = $("#form-email").val();
               var url = "stu_register.jsp?email=" + email;
               window.location.href = url;
		}
		function tech_sign(){
               var email = $("#form-email").val();
               var url = "tech_register.html?email=" + email;
               window.location.href = url;
		}
	</script>
</body>
</html>