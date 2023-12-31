<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="keywords" content="레시피, 혼밥, 요리">
    <meta name="description" content="요리에 관한 모든 정보를 한 번에 보세요">

    <meta property="og:type" content="website">
    <meta property="og:title" content="집슐랭">
    <meta property="og:description" content="요리에 관한 모든 정보를 한 번에 보세요">
    <meta property="og:image" content="">
    <meta property="og:url" content="">

    <!-- favicon-->
    <link rel="shortcut icon" type="text/css" href="">
    <link rel="icon"  type="text/css" href="">

    <!-- google icon CDN -->
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet">
    
    <!-- basic CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/base.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/common.css">

	<!-- page CSS -->
	<link rel="stylesheet" type="text/css" href="${contextPath}/resource/css/community.css">
	
    <!-- plugin CSS -->
    <link rel="stylesheet" href="/front/css/swiper-bundle.min.css">

    <!--[if lt IE 9]>
    <script type="text/javascript" src="/assets/front/js/html5shiv.js"></script>
    <script type="text/javascript" src="/assets/front/js/respond.min.js"></script>
    <script type="text/javascript" src="/assets/front/js/IE9.js"></script>
    <![endif]-->
    <!--[if IE 9]>
    <link type="text/css" href="https://cdn.jsdelivr.net/gh/coliff/bootstrap-ie8/css/bootstrap-ie9.min.css" rel="stylesheet">
    <![endif]-->
    <!--[if lte IE 8]>
    <link type="text/css" href="https://cdn.jsdelivr.net/gh/coliff/bootstrap-ie8/css/bootstrap-ie8.min.css" rel="stylesheet">
    <![endif]-->

    <!-- myrecipelist CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="/front/css/community.css"> -->
    <link rel="stylesheet" type="text/css" href="/front/css/qna_temp.css">

<title>나만의 레시피</title>
</head>
<body>
    <!-- 헤더 -->
    <header class="header">
    	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
    </header>
    
    <!-- 메인 -->
    <main>
        <section class="best-section">
            <h1 class="pageTitle">오늘의 인기글</h1>
            <div class="best-list">
            	<c:choose>
            		<c:when test="${empty myrecipeList}">
            			<c:forEach var="myrecipe" items="${myrecipeList}" varStatus="myrecipeNum">
			                <div class="best imgwrap">
			                    <a href="/front/html/community/myrecipe_post.html">
			                        <div class="imgBox vertical">
			                            <img src="/front/images/food/gan.jpg" alt="">
			                        </div>
			                        <div class="best_cont">
			                            <span class="postdate">${myrecipe_date}</span>
			                            <h6 class="title">${myrecipe_title}</h6>
			                            <ul class="accList">
			                                <li class="accItem">
			                                    <span class="icon material-symbols-outlined">visibility</span>268
			                                </li>
			                                <li class="accItem">
			                                    <span class="icon material-symbols-outlined">comment</span>80
			                                </li>
			                            </ul>
			                        </div>
			                    </a>
			                </div>
		                </c:forEach>
		        	</c:when>
                </c:choose>
            </div>
        </section>

        <section class="myrecipe_section">
            <h1 class="best-title">나만의 레시피</h1>
            <div class="acc-container">
                <select name="select-box" class="select-box">
                    <option value="#" selected>최신순</option>
                    <option value="#">오래된순</option>
                </select>
                <button class="btnBg btnSm" class="btn_write" onclick="location.href='./myrecipe_form.html'">작성하기</button>
            </div>
            
            <ul class="allwrite clearfix">
                <li class="post-container">
                    <a href="/front/html/community/myrecipe_post.html" class="imgwrap">
                        <div class="post-section">
                            <span class="postdate">${myrecipe_date}</span>
                                <h6 class="title">${myrecipe_title}</p>
                                <ul class="accList">
                                    <li class="accItem">
                                        <span class="icon material-symbols-outlined">visibility</span>268
                                    </li>
                                    <li class="accItem">                        
                                        <span class="icon material-symbols-outlined">comment</span>12
                                    </li>
                                </ul>
                        </div>
                        <div class="imgBox align">
                            <img src="/front/images/food/gan.jpg" alt="">
                        </div>
                    </a>
                </li>
            </ul>        

            <div class="paging">
                </a>
                <ul>
                    <!--li에 .disabled가 있으면 화살표에 클릭방지 생김-->
                    <li class="arrow prev disabled"><button disabled><span class="material-symbols-outlined">navigate_before</span></button></li>
                    <li class="active"><a href="javascript:">1</a></li>
                    <li><a href="javascript:">2</a></li>
                    <li><a href="javascript:">3</a></li>
                    <li><a href="javascript:">4</a></li>
                    <li><a href="javascript:">5</a></li>
                    <li class="arrow next"><button><span class="material-symbols-outlined">navigate_next</span></button></li>
                </ul>
            </div>
        </section>
    </main>
    <!-- 푸터 -->
    <footer id="footer"></footer>

    <!-- js -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="${contextPath}/resource/js/common.js"></script>
    <script src="${contextPath}/resource/js/community.js"></script>

</body>
</html>
