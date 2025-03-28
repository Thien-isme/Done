<!DOCTYPE html>
<html lang="en">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}" />
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin 2 - Tables</title>

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${url}/admin/css/sb-admin-2.min.css" rel="stylesheet">

        <!-- Custom styles for this page -->
        <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
        <link href="${url}/admin/css/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="sidebar.jsp" %>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <%@include file="topbar.jsp" %>
                    <!-- End of Topbar -->


                    <!-- Begin Page Content -->
                    <div class="container">
                        <div class="form-container">
                            <h3 class="text-center mb-4">Update Voucher Details</h3>
                            <form action="${url}/admin" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="hanhdong" value="addmagiamgia">
                                <div class="mb-3">
                                    <label>ID (*)</label>
                                    <input type="text" name="idMaGiamGia" class="form-control" value="" required="">
                                </div>

                                <div class="mb-3">
                                    <label>Title</label>
                                    <input type="text" class="form-control" name="tenMaGiamGia" value="">
                                </div>

                                <div class="mb-3">
                                    <label>Discount</label>
                                    <input type="text" class="form-control" name="tiLeGiam" value="0">
                                </div>

                                <div class="mb-3">
                                    <label>Out of date</label>
                                    <input type="date" class="form-control" name="ngayHetHan" value="">
                                </div>

                                <div class="mb-3">
                                    <label>Remaining voucher</label>
                                    <input type="number" class="form-control" name="soLuong" value="0">
                                </div>

                                <div class="mb-3">
                                    <label for="theloai">Type</label>
                                    <select class="form-control" name="theloai" id="theloai">
                                        <option value="discount">Discount</option>
                                        <option value="freeship">Freeship</option>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="hinhanhvoucherFile" class="form-label">Image</label>
                                    <input type="file" name="hinhanhvoucher" class="form-control" id="hinhanhvoucherFile" accept="image/*">
                                    <img id="previewImage" src="" alt="Preview Image" style="display:none; max-width: 200px; margin-top: 10px;">
                                </div>



                                <div class="d-flex justify-content-end gap-2">
                                    <button type="submit" class="btn btn-primary btn-custom">
                                        <i class="fas fa-save"></i> Save
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2020</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="js/demo/datatables-demo.js"></script>
        <script>
            document.getElementById("hinhanhvoucherFile").addEventListener("change", function (event) {
                let file = event.target.files[0];
                let previewImage = document.getElementById("previewImage");
                let currentImage = document.getElementById("currentImage");

                if (file) {
                    let reader = new FileReader();
                    reader.onload = function (e) {
                        previewImage.src = e.target.result;
                        previewImage.style.display = "block";
                        currentImage.style.display = "none";
                    };
                    reader.readAsDataURL(file);
                } else {
                    previewImage.style.display = "none";
                    currentImage.style.display = "block"; // Hiển thị lại ảnh cũ nếu không chọn ảnh mới
                }
            });
        </script>
    </body>

</html>