
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./PHAT/public/css/master2.css">
    <!-- <link rel="stylesheet" href="./PHAT/public/css/base.css"> -->
</head>
<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="bg-dark border-end" id="sidebar-wrapper">
            <div class="sidebar-heading text-white py-4 px-3">Admin Panel</div>
            <div class="list-group list-group-flush">
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Dashboard</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Quản lý sản phẩm</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Quản lý đơn hàng</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Quản lý kho</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Quản lý người dùng</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Thống kê</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Cài đặt</a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                <div class="container-fluid">
                    <button class="btn btn-primary" id="menu-toggle">Toggle Menu</button>
                    <div class="collapse navbar-collapse">
                        <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                            <li class="nav-item">
                                <span class="nav-link">Xin chào, Admin</span>
                            </li>
                            <li class="nav-item">
                                <button class="btn btn-danger">Logout</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="container-fluid">
                <h1 class="mt-4">Dashboard</h1>
                <div class="row mt-4">
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">
                                Sản phẩm
                                <h3>120</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-success text-white mb-4">
                            <div class="card-body">
                                Đơn hàng
                                <h3>45</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-warning text-white mb-4">
                            <div class="card-body">
                                Khách hàng
                                <h3>80</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-danger text-white mb-4">
                            <div class="card-body">
                                Doanh thu
                                <h3>$12,000</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Toggle the menu on click
        document.getElementById("menu-toggle").addEventListener("click", function() {
            document.getElementById("wrapper").classList.toggle("toggled");
        });
    </script>
</body>
</html>
