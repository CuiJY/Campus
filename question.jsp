<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>问题研讨——技术专区</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/question.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
</head>
<body>
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
        <a href="index.html" class="navbar-brand">校园虚拟社区</a>
        <!-- 判断登录状态 -->
        <!-- 未登录 -->
        <span class="login-in "><a href="login.html" >登录 </a><i class="icon iconfont">&#xe60c;</i></span>
        <!-- 已登录 用户名 相关消息数-->
        <span class="user"><a href="#">用户名</a><a href=""><span class="item">4</span></a><a href="#">登出 </a><i class="icon iconfont">&#xe607;</i></span>
      </div>
      <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li>
          <a href="#">技术研讨</a>
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
    <div class="container">
        <div class="row">
	        <div class="col-sm-12 col-md-12 text-center f25">
				<ul class="list-inline tech-model">
				    <li><a href="article.html" target="_blank">READ AN ARTICLE</a><i class="icon iconfont">&#xe60a;</i></li>
				    <li><a href="ask.html" target="_blank">ASK AN QUESTION</a><i class="icon iconfont">&#xe609;</i></li>
				    <li><a href="javascript:return false;">ANSWER QUESTIONS</a><i class="icon iconfont">&#xe60e;</i></li>
				</ul>
			</div>	
	        <h2>所有问题</h2>
        	<div class="col-sm-10 col-md-10">
        		<div class="col-sm-5 col-md-5 ask-btn">
        			<a href="ask.html" target="_blank"><i class="icon iconfont">&#xe609;</i> 提问</a>
        			<a href="javascript:return false;"><i class="icon iconfont">&#xe60b;</i> 回答</a>
        			<a href="write.html"><i class="icon iconfont">&#xe60a;</i> 写文章</a>
        		</div>
        		<div class="col-sm-4 col-md-4 col-sm-offset-1 col-md-offset-1 ask-item">
        			<a href="#">所有问题</a>
        			<a href="#">未回答的</a>
        			<a href="myspace.html">我的</a>
        		</div>
                <!-- 问题列表 -->
                <div class="col-sm-9 col-md-9 ask-list">
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="active">1</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
                                    <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                    <!-- 第二个 -->
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="active">1</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
                                    <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                    <!-- 第三个 -->
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="active">1</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
                                    <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                    <!-- no answer question -->
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="inactive">0</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
                                    <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                     <!-- no answer question -->
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="inactive">0</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
                                    <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="active">1</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
                                    <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                    <!-- 第二个 -->
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="active">1</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
                                    <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                    <!-- 第三个 -->
                    <div class="row list">
                    	<div class="col-sm-1 col-md-1 count">
            	             <!-- 答案数 -->
            		        <span class="active">1</span>
            	        </div>
	                	<div class="col-sm-11 col-md-11">
	                		<div class="col-sm-12 col-md-12 brief">
	                		    <!-- 问题标题 -->
	                			<p class="title"><a href="answer.html" target="_blank">react.js,angular.js,vue.js学习哪个好？</a></p>
	                			<!-- 时间 -->
	                			<p class="time">1天前</p>
	                            <div class="sort">
	                            	<a href="">web</a>
	                                <a href="">框架</a>
	                            </div>
	                		</div>
	                	</div>
                    </div>
                    <!-- end of list -->
                </div>
                <!-- end of question list -->
                <div class="col-sm-9 col-md-9 tab text-center">
                	 <ul class="pagination">
                        <li class="disabled"><a href="#">&laquo;</a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li><a href="#">&raquo;</a></li>
                    </ul>
                </div>
        	</div>
        	<!-- end of left -->
        	<!-- list of name -->
        	<div class="col-sm-2 col-md-2 listOfname">
        		<div class="col-sm-12 col-md-12 top">
        			<p>Top Experts in 24hrs</p>
        			<!-- 24小时回答问题积分最多用户 积分数 -->
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        		</div>
        		<div class="col-sm-12 col-md-12 top">
        			<p>Top Experts this month</p>
        			<!-- 本月内回答问题积分最多用户 积分数 -->
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        			<p><span class="answer-user"><a href="">Marc Clifton</a></span><span class="answer-no">165</span></p>
        		</div>
        	</div>
        </div>
    </div>
    

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>	
</body>
</html>