<?php
@session_start();
include('include/security.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Campus Cauldron</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php
            include 'include/sidebar.php'
        ?>
        <!-- End of Sidebar -->


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php
                    include 'include/topbar.php'
                ?>
                <!-- End of Topbar -->

                <div class="container-fluid">
                    <?php
                    include 'conn.php';
                   
                    if (isset($_GET["page"])) {
                        $page = $_GET["page"];
                    } else {
                        $page = 1;
                    };
                    $start_from = ($page - 1) * 20;
                    $sql = "select * from admins ORDER BY id DESC LIMIT $start_from, 20";
                    $rs_result = mysqli_query($con, $sql);
                    ?>
                    <table class="table">

                        <thead>
                            <tr>
                                <th width="20%">Name</th>
                                <th>Email</th>

                                <th>Password</th>
                                <th colspan=2 width="18%">Action (Delete)</th>
                            </tr>
                        </thead>

                        <?php
                        while ($row = mysqli_fetch_assoc($rs_result)) {
                        ?>

                            <tbody>
                                <tr>
                                    <td> <?php echo $row["adminname"]; ?> </td>
                                    <td><?php echo $row["email"]; ?></td>
                                    <td><?php echo $row["password"]; ?></td>
                                    <td><a href='userdelete.php?key1=<?php echo $row["id"]; ?>'>Delete</a>

                                </tr>

                            </tbody>

                        <?php
                        };
                        ?>
                    </table>
                    <strong>Pages </strong>

                    <?php
                    $sql = "SELECT COUNT(adminname) FROM admins";
                    $rs_result = mysqli_query($con, $sql);
                    $row = mysqli_fetch_row($rs_result);
                    $total_records = $row[0];
                    $total_pages = ceil($total_records / 20);
                    for ($i = 1; $i <= $total_pages; $i++) {
                        echo "<a href='view_admin.php?page=" . $i . "' class='navigation_item selected_navigation_item'>" . $i . "</a> ";
                    };
                    ?>
                </div>
                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fas fa-angle-up"></i>
                </a>

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
            <?php
                include 'include/scripts.php'
            ?>

</body>

</html>