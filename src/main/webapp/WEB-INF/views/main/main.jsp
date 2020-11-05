<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>爱电影--门户网--好看的电影尽在这里--提供海量视频</title>
<meta name="description" content="好看的电影大全，最新电影排行榜，爱电影提供全网最丰富的电影，欢迎在线观看。" />

<link rel="shortcut icon" href="http://www.qiyipic.com/common/images/logo.ico" type="image/icon" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/v3-basic_other.css" />
<link href="${pageContext.request.contextPath}/css/list_new.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sea1.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>

<body class="qypage-1180">
	<!--导航开始-->
	<div id="block-A" data-block-name="导航">
		<div class="topNavWrap-player" data-widget-compatible="wrap"
			data-ipadhack-elem="nav">
			<div class="navPlayer topNav-player topNav-fixed"
				data-widget-navctrl="player"
				data-widget-toplinefloater="blackFloater">
				<div class="navcont clearfix">
					<div class="topNavLt">
						<a class="logo" href="http://www.imovie.com/"
							data-navpingback="logo" rseat="IMOVIE_logo"><img
							title="爱电影 IMOVIE.COM" alt="爱电影 IMOVIE.COM"
							src="${pageContext.request.contextPath}/js/logo108x35_black.png"
							rseat="IMOVIE_yxpz"></a>
					</div>
					<div class="topNavMid" data-widget-navanim="wrap"
						data-navanim-param="play">
						<div class="dhome">
							<a href="http://www.IMOVIE.com/" data-btn="backhome"
								data-navpingback="home" title="返回爱电影首页" alt="返回爱电影首页"
								rseat="返回爱电影首页"></a>
						</div>
						<div class="dhBox">
							<div class="dhGuide" data-widget-navctrl-elem="guide">
								<div class="" data-widget-navctrl-elem="shadow" rseat="导航">导航</div>
							</div>
							<div class="ydBox" data-widget-navctrl-elem="tip">
								<div class="gtips-bg"></div>
								<div class="gtips-txt">
									<p>
										<span rseat="更多频道内容在这里查看">更多频道内容在这里查看</span><a
											href="javascript:void(0);" j-tipclose="closebtn"
											class="xclose" rseat="知道了">知道了</a>
									</p>
								</div>
							</div>
							<!-- guide End -->
						</div>
					</div>
					<!-- nav first Start -->

					<!-- nav first End -->
					<div class="topNavRt topNavRt_new" data-widget-navmsgtips="navmsgtips">
						<!--活动通知结构-->
						<!--topNavRt topLogin start-->
						<div class="nav_pop_single site-title_right">
							<div data-widget-suggest="suggest" data-suggest-tip=""
								 data-suggest-layout="0" class="topDot"
								 data-suggest-focusoutblacklist="" onclick="login()">
								<a style="color: red;cursor: pointer">登录</a>
							</div>
							<div data-widget-suggest="suggest" data-suggest-tip=""
								 data-suggest-layout="1" class="topDot"
								 data-suggest-focusoutblacklist="" onclick="resent()">
								<a style="color: red;cursor: pointer">充值</a>
							</div>
						</div>
						<script type="text/javascript">
							function login() {
								alert(123)
							}
							function resent() {
								alert(456)
							}
						</script>
						<!--topNavRt topLogin end-->

						<!--topNavRt search start-->
						<div class="clearfix">
							<div data-widget-suggest="suggest" data-suggest-tip=""
								data-suggest-layout="0" class="searchbox"
								data-suggest-focusoutblacklist="IMOVIE.com">
								<form data-suggest-elem="form">
									<div data-suggest-elem="container" class="srchDef">
										<span class="in"> 
											<!-- <input type="text" autocomplete="off"
											class="navTopTxt" data-suggest-elem="input"> -->
										</span> 
										<span class="out"> 
											<!-- <input type="button"
											class="navTopBtn" value="" data-suggest-elem="btn"
											rseat="tj_serch"> -->
										</span>
									</div>
								</form>
							</div>
						</div>
						<div class="nav_pop_single" data-navmsgtips-content="content"></div>
						<!--topNavRt search end-->

						<div class="gradientLayer"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="site-main">
		<!--列表页底部通栏广告-->
		<div id="1000000000046" class="ad-wrapper clearfix">
			<div class="divide-green-h"></div>
		</div>
	</div>
	<!-- 导航结束   -->

	<%--关键部分开始--%>
	<%--分类和列表--%>
	<div class="page-list">
		<div class="wrapper-content clearfix mb20">
			<div class="site-main">
				<!-- 分类 -->
				<div class="mod_sear_menu mt20 mb30">

					<%--频道--%>
					<div class="mod_sear_list" data-widget-expcol="expcol"
						data-expcol-cls="mod_sear_list_open">
						<h3>频道：</h3>
						<ul class="mod_category_item">

							<li class="selected"><a href="${pageContext.request.contextPath}/main/main-show">电影</a></li>
						</ul>
					</div>

					<!-- 查询参数表单 -->
					<form action="${pageContext.request.contextPath}/main/main-show" method="post" id="searchForm">
						<input type="hidden" value="${conbean.area }" name="area" id="diqu"/>
						<input type="hidden" value="${conbean.type }" name="type" id="leixing"/>
						<input type="hidden" value="${conbean.style }" name="style" id="guige"/>
						<input type="hidden" value="${conbean.year }" name="year" id="niandai"/>
						<!-- 当前页 -->
						<input type="hidden" value="${pageInfo.pageNum}" name="currentPage" id="currentPage"/>
						
					</form>

					<%--地区--%>
					<div class="mod_sear_list  mod_sear_list_open">
						<h3>地区：</h3>
						<ul class="mod_category_item">
							<li ${conbean.area == null || conbean.area == '' ? 'class="selected"' : '' }>
								<a href="javascript:searchAndPage('diqu','',1)">全部</a>
							</li>
							<!--地区分类:对应一级分类地区，只显示属于地区的二级分类-->
							<c:forEach items="${categroys }" var="cate">
								<c:if test="${cate.categroy == '地区' }">
									<li ${conbean.area == cate.title ? 'class="selected"' : '' }>
										<a href="javascript:searchAndPage('diqu','${cate.title }',1)">${cate.title }</a>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					
					<%--类型--%>
					<div class="mod_sear_list" data-widget-expcol="expcol"
						data-expcol-cls="mod_sear_list_open">
						<h3>类型：</h3>
						<ul class="mod_category_item">
							<li ${conbean.type == null || conbean.type == '' ? 'class="selected"' : '' }>
								<a href="javascript:searchAndPage('leixing','',1)">全部</a>
							</li>
							<!--类型分类:对应一级分类地区，只显示属于地区的二级分类-->
							<c:forEach items="${categroys }" var="cate">
								<c:if test="${cate.categroy == '类型' }">
									<li ${conbean.type == cate.title ? 'class="selected"' : '' }>
										<a href="javascript:searchAndPage('leixing','${cate.title }',1)">${cate.title }</a>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					
					<%--规格--%>
					<div class="mod_sear_list  mod_sear_list_open">
						<h3>规格：</h3>
						<ul class="mod_category_item">
							<li ${conbean.style == null || conbean.style == '' ? 'class="selected"' : '' }>
								<a href="javascript:searchAndPage('guige','',1)">全部</a>
							</li>
							<!--规格分类:对应一级分类地区，只显示属于地区的二级分类-->
							<c:forEach items="${categroys }" var="cate">
								<c:if test="${cate.categroy == '规格' }">
									<li ${conbean.style == cate.title ? 'class="selected"' : '' }>
										<a href="javascript:searchAndPage('guige','${cate.title }',1)">${cate.title }</a>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					
					<%--我的年代--%>
					<div class="mod_sear_list $lastCss">
						<h3>我的年代：</h3>
						<ul class="mod_category_item">
							<li ${conbean.year == null || conbean.year == '' ? 'class="selected"' : '' }>
								<a href="javascript:searchAndPage('niandai','',1)">全部</a>
							</li>
							<!--年代分类:对应一级分类地区，只显示属于地区的二级分类-->
							<c:forEach items="${categroys }" var="cate">
								<c:if test="${cate.categroy == '我的年代' }">
									<li ${conbean.year == cate.title ? 'class="selected"' : '' }>
										<a href="javascript:searchAndPage('niandai','${cate.title }',1)">${cate.title }</a>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					
					
					<%--类型--%>
					<%-- <div class="mod_sear_list" data-widget-expcol="expcol"
						data-expcol-cls="mod_sear_list_open">
						<h3>类型：</h3>
						<ul class="mod_category_item">
							<li ${requestScope.paramBean.leixing == null || requestScope.paramBean.leixing== '' ? 'class="selected"' : '' }>
							<a href="javascript:;;" onclick="searchMovie('leixing','',1);">全部</a>
							</li>
							<!--类型分类-->
							<c:forEach var="i" items="${cates}">
								<c:if test="${i.categroy == '类型'}">
									<li ${requestScope.paramBean.leixing==i.title ? 'class="selected"' : ''}>
									<a href="javascript:;;" onclick="searchMovie('leixing','${i.title}',1);">${i.title}</a>
									</li>	
								</c:if>		
							</c:forEach>	
						</ul>
					</div> --%>
					<%--规格--%>
					<%-- <div class="mod_sear_list  mod_sear_list_open">
						<h3>规格：</h3>
						<ul class="mod_category_item">
							<li ${requestScope.paramBean.guige == null || requestScope.paramBean.guige== '' ? 'class="selected"' : '' }>
							<a href="javascript:;;" onclick="searchMovie('guige','',1);">全部</a>
							</li>
							<!--规格分类-->
							<c:forEach var="i" items="${cates}">
								<c:if test="${i.categroy == '规格'}">
									<li ${requestScope.paramBean.guige==i.title ? 'class="selected"' : ''}>
									<a href="javascript:;;" onclick="searchMovie('guige','${i.title}',1);">${i.title}</a>
									</li>	
								</c:if>		
							</c:forEach>	
						</ul>
					</div> --%>
					<%--年代--%>
					<%-- <div class="mod_sear_list $lastCss">
						<h3>我的年代：</h3>
						<ul class="mod_category_item">
							<li ${requestScope.paramBean.niandai == null || requestScope.paramBean.niandai== '' ? 'class="selected"' : '' }>
							<a href="javascript:;;" onclick="searchMovie('niandai','',1);">全部</a>
							</li>
							<!--年代分类-->
							<c:forEach var="i" items="${cates}">
								<c:if test="${i.categroy == '我的年代'}">
									<li ${requestScope.paramBean.niandai==i.title ? 'class="selected"' : ''}>
									<a href="javascript:;;" onclick="searchMovie('niandai','${i.title}',1);">${i.title}</a>
									</li>	
								</c:if>		
							</c:forEach>	
						</ul>
					</div> --%>

					<%--显示已选条件--%>
					<div class="mod_sear_list borNone pl70">
						<h3>已选条件：</h3>
						
						<c:if test="${conbean.area !=null && conbean.area !=''}">
							<p class="mod_sear_result">
							<em >${conbean.area}</em>
								<a href="javascript:;;" title="删除" onclick="searchAndPage('diqu','',1)"
								class="sear_delBtn">×</a>
							</p>
						</c:if>
						<c:if test="${conbean.type !=null && conbean.type !=''}">
							<p class="mod_sear_result">
							<em> ${conbean.type}</em>
								<a href="javascript:;;" title="删除" onclick="searchAndPage('leixing','',1)"
								class="sear_delBtn">×</a>
							</p>
						</c:if>
						<c:if test="${conbean.style !=null && conbean.style !=''}">
							<p class="mod_sear_result">
							<em> ${conbean.style}</em>
								<a href="javascript:;;" title="删除" onclick="searchAndPage('guige','',1)"
								class="sear_delBtn">×</a>
							</p>
						</c:if>
							<c:if test="${conbean.year !=null && conbean.year !=''}">
							<p class="mod_sear_result">
							<em> ${conbean.year}</em>
								<a href="javascript:;;" title="删除" onclick="searchAndPage('niandai','',1)"
								class="sear_delBtn">×</a>
							</p>
						</c:if>
					</div>
				</div>
				<!-- 分类 end-->

				<%--排序--%>
				<div class="mb15 clearfix">
					<div class="sort-result-container">
						<div class="sort-result-l">
							<div class="sort-result-l  border-n fl mt5">
								<em class="vm-inline c-999">排序：</em> <a
									href="/www/1/-------------11-1-1-IMOVIE--.html" title="按热门排序"
									class="checkBox-item         
 ml5"> <span
									class="search-checkBox"><i class="search-checkBox-inner"></i></span>
									<em class="vm-inline">热门</em>
								</a> <a href="/www/1/-------------4-1-1-IMOVIE--.html"
									title="按更新时间排序"
									class="checkBox-item             selected
 ml5"> <span
									class="search-checkBox"><i class="search-checkBox-inner"></i></span>
									<em class="vm-inline">更新时间</em>
								</a> <a href="/www/1/-------------8-1-1-IMOVIE--.html" title="按评分排序"
									class="checkBox-item         
 ml5"> <span
									class="search-checkBox"><i class="search-checkBox-inner"></i></span>
									<em class="vm-inline">评分</em>
								</a>
							</div>
						</div>
					</div>
				</div>

				<%--电影列表--%>
				<div class="wrapper-cols">
					<div class="wrapper-piclist" data-widget-listviptip="listviptip">
						<ul class="site-piclist site-piclist-180236 site-piclist-auto">
							<c:forEach items="${pageInfo.list}" var="i">
							<li>
								<div class="site-piclist_pic">
									<a alt="111" title="11" href="${pageContext.request.contextPath}/movie/play-movie?id=${i.id}" class="site-piclist_pic_link"
										target="_blank"> 
										<img width="180" height="236"
										rseat="dsjp7" alt="${i.moviename}" title="${i.moviename}" src="${i.saveimagepath}" />
										<div class="wrapper-listTitle">
											<div class="mod-listTitle">
												<p class="viedo_rb">
													<span class="icon-vInfo">${i.time} </span>
												</p>
											</div>
										</div>
									</a>
								</div>
								<div class="site-piclist_info">
									<div class="mod-listTitle_left">
										<span class="score"><strong class="num">${i.score}</strong></span>
										<p class="site-piclist_info_title  movie-tit ">
											<a 												
												title="${i.moviename} "
												href="/IMOVIE/PlayMovieServlet?id=${i.id}"
												target="_blank">${i.moviename}</a>
										</p>
									</div>
									<div class="role_info">
										<em>主演:</em> 
										<!-- varStatus循环计数 -->
										<c:forEach var="i" items="${i.mperformers}" varStatus="status">
										<!-- 利用循环计数来显示两个演员 -->
										<c:if test="${status.index <= 1}">
										<em>
											 <a href="${pageContext.request.contextPath}/performer/performer-show?name=${i.performer}" title="${i.performer}">${i.performer}</a>
										</em>
										</c:if>
										</c:forEach>		
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 页码 开始 -->
	<div data-ugcplayhistory-elem="pager" class="mod-page">
		<div data-ugcplayhistory-elem="pager" class="mod-page">
		<!-- 如果当前页是第一页的话，则上一页按钮无法点击 -->
		<c:if test="${pageInfo.pageNum <= 1}">
			<span class="noPage">上一页</span>
		</c:if>
		<c:if test="${pageInfo.pageNum > 1}">
			<a class="a1" title="跳转至${pageInfo.pageNum -1}页"
				href="javascript:;;" onclick="searchAndPage('','',${pageInfo.pageNum -1})">上一页</a>
		</c:if>
		<!-- 页码 -->
		<c:forEach var="i" items="${pageInfo.navigatepageNums}">
			<!-- 如果当前页等于页码集合中的某个页码数字，那么将其设置为选中，并且不能点击 -->
			<c:if test="${pageInfo.pageNum == i}">
				<span class="curPage">${i}</span>
			</c:if>
			<c:if test="${pageInfo.pageNum != i}">
				<a title="跳转至${i}页 "href="javascript:;;" onclick="searchAndPage('','',${i})">${i}</a>
			</c:if>
		</c:forEach>
			 <!-- 如果当前页等于最大页码数，则下一页按钮无法点击 -->
			 <c:if test="${pageInfo.pageNum >= pageInfo.pages}">
			 	<span class="noPage">下一页</span>
			 </c:if>
			 <c:if test="${pageInfo.pageNum < pageInfo.pages}">
			 	<a class="a1" title="跳转至${pageInfo.pageNum +1}页 "
			 		href="javascript:;;" onclick="searchAndPage('','',${pageInfo.pageNum +1})">下一页</a>
			 </c:if>
		</div>
	</div>

	<%--关键部分结束--%>

	<div class="site-main">
		<!--列表页底部通栏广告-->
		<div id="1000000000048" class="ad-wrapper clearfix">
			<div class="divide-green-h"></div>
		</div>
	</div>
	<div class="footerN1214">
		<p class="footmenu">
			<a href="http://app.IMOVIE.com/" class="s1">APP专区</a><a
				href="http://www.IMOVIE.com/common/aboutus.html">公司介绍</a> <a
				href="http://www.IMOVIE.com/common/news.html">新闻动态</a><a
				href="http://www.IMOVIE.com/common/contactus.html">联系方式</a> <a
				href="http://zhaopin.IMOVIE.com/">招聘英才</a><a
				href="http://open.IMOVIE.com">开放平台</a><a
				href="http://help.IMOVIE.com/?entry=list">帮助中心</a><a
				href="http://www.IMOVIE.com/common/20100420/n4813.html">About Us</a>
		</p>
		<p class="fEn">
			<a href="http://www.IMOVIE.com" class="link0">爱电影</a>&nbsp;&nbsp;&copy;
			2017 IMOVIE.COM
		</p>
	</div>
</body>
<script type="text/javascript">
	function searchAndPage(name,value,page){
		if(name != ''){
			$("#" + name).val(value);
		}
		
		$("#currentPage").val(page);
		
		$("#searchForm").submit();
		
	}
</script>

</html>

