<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="model.SanPham"%>
<%@page import="java.util.List"%>
<%@page import="database.SanPhamDAO"%>
<%
    String url1 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();;
%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>
            THT Helmet Store

        </title>

        <link rel="shortcut icon" href="<%= url1%>/GUI/images/favicon.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="<%= url1%>/GUI/css/bootstrap.css" />

        <!-- Custom styles for this template -->
        <link href="<%= url1%>/GUI/css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="<%= url1%>/GUI/css/responsive.css" rel="stylesheet" />

        <!-- Voucher style -->
        <link rel="stylesheet" href="<%=url1%>/GUI/css/voucher.css">


    </head>

    <body>
        <%
            String error = request.getAttribute("error") + "";
            if (error == null || error.equals("null")) {
                error = "";
            }
        %>
        <%@include file="../GUI/header.jsp" %>
        <div class="hero_area">
            <!-- header -->

            <!-- header -->
            <%                if (khachHang == null) {
            %>
            <h1 class="red">Bạn chưa đăng nhập</h1>
            <%
            } else {
            %>
            <section class="bg-light p-3 p-md-4 p-xl-5">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12 col-xxl-11">
                            <div class="card border-light-subtle shadow-sm">
                                <div class="row g-0">
                                    <div class="col-12 col-md-6">
                                        <img class="img-fluid rounded-start w-100 h-100 object-fit-cover" loading="lazy" src="<%=url1%>/GUI/imgsanpham/kkk.jpg" alt="">
                                    </div>
                                    <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                                        <div class="col-12 col-lg-11 col-xl-10">
                                            <div class="card-body p-3 p-md-4 p-xl-5">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="mb-5">
                                                            <div class="text-center mb-4">
                                                                <a href="#!">
                                                                    <img src="<%=url1%>/GUI/images/logo.png" alt="BootstrapBrain Logo" width="175" height="57">
                                                                </a>
                                                            </div>
                                                            <h4 class="text-center">Reset password</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                </div>
                                                <form action="<%= url%>/khach-hang" method="POST" action="<%=url%>/khach-hang">
                                                    <input class="form-control" name="hanhdong" value="resetpassword" type="hidden">
                                                    <%
                                                        String passpresent = request.getAttribute("passpresent") + "";
                                                        passpresent = passpresent.equals("null") ? "" : passpresent;

                                                        String passConfirm = request.getAttribute("passConfirm") + "";
                                                        passConfirm = passConfirm.equals("null") ? "" : passConfirm;

                                                        String resetsuccess = request.getAttribute("resetsuccess") + "";
                                                        resetsuccess = resetsuccess.equals("null") ? "" : resetsuccess;
                                                    %>
                                                    <div> <span style="color:red" ><%=passpresent%></span> </div>
                                                    <div> <span style="color:red"><%=passConfirm%></span> </div>
                                                    <div> <span style="color:red"><%=resetsuccess%></span> </div>
                                                    <div class="col-12">
                                                        <div class="form-floating mb-3">
                                                            <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password" required>
                                                            <label for="password" class="form-label">Password</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-floating mb-3">
                                                            <input type="password" class="form-control" name="newPassword" id="newPassword" value="" placeholder="New password" required>
                                                            <label for="newPassword" class="form-label">New Password</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-floating mb-3">
                                                            <input type="newPasswordConfirm" class="form-control" name="newPasswordConfirm" id="newPasswordConfirm" value="" placeholder="Confirm new password" required>
                                                            <label for="newPasswordConfirm" class="form-label">Confirm New Password</label>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <div class="d-grid">
                                                            <button class="btn btn-dark btn-lg" type="submit">Reset password</button>
                                                        </div>
                                                    </div>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>

<script src="<%= url1%>/GUI/js/jquery-3.4.1.min.js"></script>
<script src="<%= url1%>/GUI/js/bootstrap.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
</script>
<script src="<%= url1%>/GUI/js/custom.js"></script>
</div>
<!-- end hero area -->

<% }%>
</body>

</html>