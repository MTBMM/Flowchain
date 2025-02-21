<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Đăng nhập</title>

    <!--===============================================================================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="<c:url value="/images/icons/apple-touch-icon.png"/>">
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value="/images/icons/favicon-32x32.png"/>">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/images/icons/favicon-16x16.png"/>">
    <link rel="manifest" href="<c:url value="/images/icons/site.webmanifest"/>">
    <!--===============================================================================================-->
    <link href="<c:url value="/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/vendor/animate/animate.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/vendor/css-hamburgers/hamburgers.min.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/vendor/animsition/css/animsition.min.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/vendor/select2/select2.min.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/vendor/daterangepicker/daterangepicker.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
    <link href="<c:url value="/css/util.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/login.css"/>" rel="stylesheet">
    <!--===============================================================================================-->
</head>
<body style="background-color: #666666;">

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <c:url value="/login" var="loginUrl"/>
            <form method="post" class="login100-form validate-form" action="${loginUrl}">
                <span class="login100-form-title p-b-43">Đăng nhập để tiếp tục</span>

                <c:if test="${param.error}">
                    <p style="color: red; font-size: 20px; margin-bottom: 20px;">
                        Sai tên tài khoản hoặc mật khẩu
                    </p>
                </c:if>
                <c:if test="${param.accessDenied}">
                    <p style="color: red; font-size: 20px; margin-bottom: 20px;">
                        Tài khoản của bạn không có quyền truy cập
                    </p>
                </c:if>

                <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                    <input autofocus required class="input100" type="text" name="username"/>
                    <span class="focus-input100"></span>
                    <span class="label-input100">Tên tài khoản</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <input autofocus required class="input100" type="password" name="password"/>
                    <span class="focus-input100"></span>
                    <span class="label-input100">Mật khẩu</span>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn bg-dark">Đăng nhập</button>
                </div>
            </form>

            <div class="login100-more" style="background-image: url('<c:url value="/images/login_bg.png"/>');"></div>
        </div>
    </div>
</div>

<!--===============================================================================================-->
<script src="<c:url value="/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/vendor/animsition/js/animsition.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/vendor/bootstrap/js/popper.js"/>"></script>
<script src="<c:url value="/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/vendor/select2/select2.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/vendor/daterangepicker/moment.min.js"/>"></script>
<script src="<c:url value="/vendor/daterangepicker/daterangepicker.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/vendor/countdowntime/countdowntime.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/js/login.js"/>"></script>

</body>
</html>