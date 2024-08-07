<?php
session_start();
include ("../connection/conne.php");

if (!isset($_SESSION['SUPERADMIN'])) {
  header("location:../index.php");
  exit();
}
if (isset($_SESSION['role'])) {
  $role = $_SESSION['role'];
} else {
  echo "Role information not found. Please contact administrator.";
  exit();
}

// for barangay code
$barangay_code = "";
$code = $_SESSION['code'];
$fetch_barangay = "SELECT * FROM barangay WHERE CODE = '$_SESSION[code]'";
$fetch_barangay_result = mysqli_query($conn, $fetch_barangay);
while ($row = mysqli_fetch_assoc($fetch_barangay_result)) {
  $barangay_code = $row['Brngy'];
}

$FirstName = $LastName = $email = '';

// Fetch current user's information from the database
$current_email = $_SESSION['email'];
$query = "SELECT * FROM account WHERE email = '$current_email'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) == 1) {
  $row = mysqli_fetch_assoc($result);
  $FirstName = $row['FirstName'];
  $LastName = $row['LastName'];
  $email = $row['email'];
} else {
  echo "User data not found.";
  exit();
}

// Process form submission
if (isset($_POST['submit'])) {
  $new_email = $_POST['email'];
  $FirstName = $_POST['fname'];
  $LastName = $_POST['lname'];

  // Check if a new password is submitted
  if (!empty($_POST['password']) && !empty($_POST['cpassword'])) {
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];

    if ($password != $cpassword) {
      echo "<script>alert('Passwords do not match.');</script>";
    } else {
      // Hash the new password
      $hashed_password = password_hash($password, PASSWORD_DEFAULT);

      // Update query with password
      $update_query = "UPDATE account SET email = '$new_email', password = '$hashed_password', FirstName = '$FirstName', LastName = '$LastName' WHERE email = '$current_email'";
      $update_result = mysqli_query($conn, $update_query);

      if ($update_result) {
        // Update session with new email if email is updated
        $_SESSION['email'] = $new_email;

        echo "<script>alert('Account updated successfully.');</script>";
        // Optionally, redirect to a confirmation page or back to the account view
        // header("location: account_updated.php");
      } else {
        echo "<script>alert('Error updating account.');</script>";
      }
    }
  } else {
    // Update query without password change
    $update_query = "UPDATE account SET email = '$new_email', FirstName = '$FirstName', LastName = '$LastName' WHERE email = '$current_email'";
    $update_result = mysqli_query($conn, $update_query);

    if ($update_result) {
      // Update session with new email if email is updated
      $_SESSION['email'] = $new_email;

      echo "<script>alert('Account updated successfully.');</script>";
      // Optionally, redirect to a confirmation page or back to the account view
      // header("location: account_updated.php");
    } else {
      echo "<script>alert('Error updating account.');</script>";
    }
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>YOUTH PROFILING SYSTEM</title>
  <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport" />
  <link rel="icon" href="../bootstrap/assets/img/kaiadmin/favicon.ico" type="image/x-icon" />

  <!-- Fonts and icons -->
  <script src="../bootstrap/assets/js/plugin/webfont/webfont.min.js"></script>
  <script>
    WebFont.load({
      google: { families: ["Public Sans:300,400,500,600,700"] },
      custom: {
        families: [
          "Font Awesome 5 Solid",
          "Font Awesome 5 Regular",
          "Font Awesome 5 Brands",
          "simple-line-icons",
        ],
        urls: ["../bootstrap/assets/css/fonts.min.css"],
      },
      active: function () {
        sessionStorage.fonts = true;
      },
    });
  </script>

  <!-- CSS Files -->
  <link rel="stylesheet" href="../bootstrap/assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="../bootstrap/assets/css/plugins.min.css" />
  <link rel="stylesheet" href="../bootstrap/assets/css/kaiadmin.min.css" />
  <style>
    #profilesForm {
      padding-top: 55px;
      padding-right: 3%;
      padding-left: 3%;
    }
  </style>
</head>

<body>
  <div class="wrapper">
    <!-- Sidebar -->
    <div class="sidebar" data-background-color="dark">
      <div class="sidebar-logo">
        <!-- Logo Header -->
        <div class="logo-header" data-background-color="dark">
          <div class="nav-toggle">
            <button class="btn btn-toggle toggle-sidebar">
              <i class="gg-menu-right"></i>
            </button>
            <button class="btn btn-toggle sidenav-toggler">
              <i class="gg-menu-left"></i>
            </button>
          </div>
          <button class="topbar-toggler more">
            <i class="gg-more-vertical-alt"></i>
          </button>
        </div>
        <!-- End Logo Header -->
      </div>
      <div class="sidebar-wrapper scrollbar scrollbar-inner">
        <div class="sidebar-content">
          <ul class="nav nav-secondary">

            <li class="nav-section">
              <span class="sidebar-mini-icon">
                <i class="fa fa-ellipsis-h"></i>
              </span>
              <h4 class="text-section">Components</h4>
            </li>
            <li class="nav-item">

            <li class="nav-item">

              <a data-bs-toggle="collapse" href="#forms">
                <i class="fas icon-user"></i>
                <p>User Accounts</p>
                <span class="caret"></span>
              </a>
              <div class="collapse" id="forms">
                <ul class="nav nav-collapse">
                  <li>
                    <a href="index.php">
                      <span class="sub-item">View Accounts</span>
                    </a>
                  </li>
                  <!-- <li>
                    <a href="createacc.php">
                      <span class="sub-item">Create Account</span>
                    </a>
                  </li> -->
                </ul>
              </div>
            </li>

            <li class="nav-item">
              <a href="calendar.php">
                <i class="fas icon-calendar"></i>
                <p>Calendar</p>
              </a>
            </li>
            <li class="nav-item">

            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="main-panel">
      <div class="main-header">
        <div class="main-header-logo">
          <div class="logo-header" data-background-color="dark">
            <div class="nav-toggle">
              <button class="btn btn-toggle toggle-sidebar">
                <i class="gg-menu-right"></i>
              </button>
              <button class="btn btn-toggle sidenav-toggler">
                <i class="gg-menu-left"></i>
              </button>
            </div>
            <button class="topbar-toggler more">
              <i class="gg-more-vertical-alt"></i>
            </button>
          </div>
          <!-- End Logo Header -->
        </div>
        <!-- Navbar Header -->
        <nav class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom">
          <div class="container-fluid">
            <nav class="navbar navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex">
            </nav>
            <h2><?php echo $barangay_code; ?> La Trinidad Youth Profiling System</h2>
            <ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
              <li class="nav-item topbar-user dropdown hidden-caret">
                <a class="dropdown-toggle profile-pic" data-bs-toggle="dropdown" aria-expanded="false">
                  <div class="avatar-sm">
                    <img src="../bootstrap/assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle" />
                  </div>
                  <span class="profile-username">
                    <span class="fw-bold"><?php echo $_SESSION['email']; ?></span>
                  </span>
                </a>
                <ul class="dropdown-menu dropdown-user animated fadeIn">
                  <div class="dropdown-user-scroll scrollbar-outer">
                    <li>
                      <div class="user-box">
                        <div class="avatar-lg">
                          <img src="../bootstrap/assets/img/profile.jpg" alt="image profile"
                            class="avatar-img rounded" />
                        </div>
                        <div class="u-text">

                          <h4><?php echo $_SESSION['fname'] . " " . $_SESSION['lname']; ?></h4>
                          <p class="text-muted"><?php echo $_SESSION['email']; ?></p>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                      <?php
                      if ($role == 'superadmin') {
                        echo
                          '<a class="dropdown-item" href="account_setting.php">Account Setting</a>';
                      }
                      ?>
                      <a class="dropdown-item" href="logout.php">Logout</a>
                    </li>
                  </div>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
        <!-- End Navbar -->
      </div>
      <div class="container mt-1 d-flex justify-content-center align-items-center full-height">
      <div class="card shadow p-4">
        <div class="card-body">
        <h2 class="card-header text-center">Account Settings</h2>
        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="fname">First Name:</label>
                <input type="text" class="form-control" id="fname" name="fname"
                  value="<?php echo htmlspecialchars($FirstName); ?>" required>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="lname">Last Name:</label>
                <input type="text" class="form-control" id="lname" name="lname"
                  value="<?php echo htmlspecialchars($LastName); ?>" required>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email"
              value="<?php echo htmlspecialchars($email); ?>" required>
          </div>

          <div class="form-group">
          <label for="password">New Password:</label>
          <input type="password" class="form-control" id="password" name="password"
            placeholder="Leave blank to keep current password">
        </div>

        <div class="form-group">
          <label for="cpassword">Confirm New Password:</label>
          <input type="password" class="form-control" id="cpassword" name="cpassword"
            placeholder="Leave blank to keep current password">
        </div>

        <div class="form-group">
          <center>
            <input type="submit" class="btn btn-primary" name="submit" value="Update" onclick="return checkPasswordMatch()">
            <a href="index.php" class="btn btn-secondary">Cancel</a>
          </center>
        </div>

  <!-- Swal -->
  <script>
  function checkPasswordMatch() {
    var password = document.getElementById("password").value;
    var cpassword = document.getElementById("cpassword").value;

    if (password !== cpassword) {
      swal({
        title: "Error",
        text: "Passwords do not match!",
        icon: "error",
        button: "OK",
      });
      return false; // Prevent form submission
    }
    return true; // Allow form submission
  }

</script>

  <!--   Core JS Files   -->
  <script src="../bootstrap/assets/js/core/jquery-3.7.1.min.js"></script>
  <script src="../bootstrap/assets/js/core/popper.min.js"></script>
  <script src="../bootstrap/assets/js/core/bootstrap.min.js"></script>

  <!-- jQuery Scrollbar -->
  <script src="../bootstrap/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
  <!-- Datatables -->
  <script src="../bootstrap/assets/js/plugin/datatables/datatables.min.js"></script>
  <!-- Bootstrap Notify -->
  <script src="../bootstrap/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
  <!-- Sweet Alert -->
  <script src="../bootstrap/assets/js/plugin/sweetalert/sweetalert.min.js"></script>
  <!-- Kaiadmin JS -->
  <script src="../bootstrap/assets/js/kaiadmin.min.js"></script>
</body>
</html>