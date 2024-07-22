<?php
session_start();
include("../connection/conne.php");

// Ensure session email is set, otherwise redirect
if (!isset($_SESSION['USER'])) {
  header("location:../index.php");
  exit(); // Ensure that no further code is executed after the redirection
}

$barangay_code = $_SESSION['code'];

// Fetch barangay name based on the code
$fetch_barangay = "SELECT Brngy FROM barangay WHERE Code = '$barangay_code'";
$fetch_barangay_result = mysqli_query($conn, $fetch_barangay);
$barangay_name = "";
if ($row = mysqli_fetch_assoc($fetch_barangay_result)) {
    $barangay_name = $row['Brngy'];
}

// Fetch all entries from delete_profile table for the specific barangay
$select_sql = "SELECT * FROM delete_profile WHERE barangay_code = '$barangay_code'";
$result = mysqli_query($conn, $select_sql);

// Function to delete a profile permanently
function deleteProfile($conn, $id) {
  $delete_sql = "DELETE FROM delete_profile WHERE id = '$id'";
  if (mysqli_query($conn, $delete_sql)) {
      return true;
  } else {
      return false;
  }
}

// Function to restore a profile back to the profiles table
function restoreProfile($conn, $profile_data) {
    // Assuming the structure of the profile_data matches the table schema
    $lname = mysqli_real_escape_string($conn, $profile_data['lname']);
    $fname = mysqli_real_escape_string($conn, $profile_data['fname']);
    $mname = mysqli_real_escape_string($conn, $profile_data['mname']);
    $suffix = mysqli_real_escape_string($conn, $profile_data['suffix']);
    $region = mysqli_real_escape_string($conn, $profile_data['region']);
    $province = mysqli_real_escape_string($conn, $profile_data['province']);
    $municipality = mysqli_real_escape_string($conn, $profile_data['municipality']);
    $barangay = mysqli_real_escape_string($conn, $profile_data['barangay']);
    $sitio = mysqli_real_escape_string($conn, $profile_data['sitio']);
    $purok = mysqli_real_escape_string($conn, $profile_data['purok']);
    $house_number = mysqli_real_escape_string($conn, $profile_data['house_number']);
    $sex = mysqli_real_escape_string($conn, $profile_data['sex']);
    $age = mysqli_real_escape_string($conn, $profile_data['age']);
    $youth_with_needs = mysqli_real_escape_string($conn, $profile_data['youth_with_needs']);
    $email = mysqli_real_escape_string($conn, $profile_data['email']);
    $birth_month = mysqli_real_escape_string($conn, $profile_data['birth_month']);
    $birth_day = mysqli_real_escape_string($conn, $profile_data['birth_day']);
    $birth_year = mysqli_real_escape_string($conn, $profile_data['birth_year']);
    $contactnumber = mysqli_real_escape_string($conn, $profile_data['contactnumber']);
    $civil_status = mysqli_real_escape_string($conn, $profile_data['civil_status']);
    $youth_classification = mysqli_real_escape_string($conn, $profile_data['youth_classification']);
    $age_group = mysqli_real_escape_string($conn, $profile_data['age_group']);
    $work_status = mysqli_real_escape_string($conn, $profile_data['work_status']);
    $educational_background = mysqli_real_escape_string($conn, $profile_data['educational_background']);
    $register_sk_voter = mysqli_real_escape_string($conn, $profile_data['register_sk_voter']);
    $voted_last_election = mysqli_real_escape_string($conn, $profile_data['voted_last_election']);
    $national_voter = mysqli_real_escape_string($conn, $profile_data['national_voter']);
    $attended_kk = mysqli_real_escape_string($conn, $profile_data['attended_kk']);
    $times_attended_kk = mysqli_real_escape_string($conn, $profile_data['times_attended_kk']);
    $no_why = mysqli_real_escape_string($conn, $profile_data['no_why']);
    $date_created = mysqli_real_escape_string($conn, $profile_data['date_created']);
    $barangay_code = mysqli_real_escape_string($conn, $profile_data['barangay_code']);

    $insert_sql = "INSERT INTO profiles (lname, fname, mname, suffix, region, province, municipality, barangay, sitio, purok, house_number,
        sex, age, youth_with_needs, email, birth_month, birth_day, birth_year, contactnumber, civil_status, youth_classification,
        age_group, work_status, educational_background, register_sk_voter, voted_last_election, national_voter, attended_kk, times_attended_kk, no_why, date_created, barangay_code)
        VALUES 
        ('$lname', '$fname', '$mname', '$suffix', '$region', '$province', '$municipality', '$barangay', '$sitio', '$purok', '$house_number',
        '$sex', '$age', '$youth_with_needs', '$email', '$birth_month', '$birth_day', '$birth_year', '$contactnumber', '$civil_status', '$youth_classification',
        '$age_group', '$work_status', '$educational_background', '$register_sk_voter', '$voted_last_election', '$national_voter', '$attended_kk', '$times_attended_kk', '$no_why', '$date_created', '$barangay_code')";

    if (mysqli_query($conn, $insert_sql)) {
        return true;
    } else {
        return false;
    }
}

if (isset($_GET['action']) && isset($_GET['id'])) {
    $action = $_GET['action'];
    $id = $_GET['id'];
    if ($action === 'restore') {
      $select_sql = "SELECT * FROM delete_profile WHERE id = '$id'";
      $result = mysqli_query($conn, $select_sql);
      $profile_data = mysqli_fetch_assoc($result);

      restoreProfile($conn, $profile_data);
      deleteProfile($conn, $id);

      header('location: recycle.php');
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
                         
            <li class="nav-item">
                <a
                  href="homepage.php"
                  aria-expanded="false"
                >
                  <i class="fas fa-chart-bar"></i>
                  <p>Dashboard</p>
                </a>
              </li>

              <li class="nav-section">
                <span class="sidebar-mini-icon">
                  <i class="fa fa-ellipsis-h"></i>
                </span>
                <h4 class="text-section">Components</h4>
              </li>
              <li class="nav-item">
               <a data-bs-toggle="collapse" href="#tables">
                <i class="fas icon-people"></i>
                <p>Youth Profiles</p>
                <span class="caret"></span>
              </a>
              <div class="collapse" id="tables">
                <ul class="nav nav-collapse">
                  <li>
                    <a href="profiles.php">
                      <span class="sub-item">Create/View Profiles</span>
                    </a>
                  </li>
                  <li>
                    <a href="archive.php">
                      <span class="sub-item">Archive</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
              <li class="nav-item">
             
              <li class="nav-item">
                <a href="calendar.php">
                  <i class="fas icon-calendar"></i>
                  <p>Calendar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="recycle.php">
                  <i class="fas icon-trash"></i>
                  <p>Recycle Bin</p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main-panel">
        <div class="main-header">
          <div class="main-header-logo">
            <!-- Logo Header -->
            <div class="logo-header" data-background-color="dark">
              <a href="index.html" class="logo">
                <img
                  src="../bootstrap/assets/img/kaiadmin/logo_light.svg"
                  alt="navbar brand"
                  class="navbar-brand"
                  height="20"
                />
              </a>
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
          <nav
            class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom"
          >
            <div class="container-fluid">
              <nav
                class="navbar navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex">
              </nav>
              <h3><?php echo $barangay_name; ?> La Trinidad Youth Profiling System</h3>
              <ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
                <li class="nav-item topbar-user dropdown hidden-caret">
                  <a
                    class="dropdown-toggle profile-pic"
                    data-bs-toggle="dropdown"
                    aria-expanded="false">
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
                        <img src="../bootstrap/assets/img/profile.jpg" alt="image profile" class="avatar-img rounded" />
                      </div>
                      <div class="u-text">
                        <h4><?php echo $_SESSION['fname'] . " " . $_SESSION['lname']; ?></h4>
                        <p class="text-muted"><?php echo $_SESSION['email']; ?></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="dropdown-divider"></div>
                   
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
        
        <!-- main content -->
        <div class="container">
        <div class="page-inner">
          <div class="page-header">
            <h3 class="fw-bold mb-3">Recycle Bin</h3>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <div id="basic-datatables_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                <div class="row">
                  <div class="col-sm-12 col-md-6">
                    <div class="dataTables_length" id="basic-datatables_length"></div>
                  </div>
                  <div class="col-sm-12 col-md-6">
                    <div id="basic-datatables_filter" class="dataTables_filter"></div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12">
                    <table id="basic-datatables" class="display table table-striped table-hover dataTable" role="grid" aria-describedby="basic-datatables_info">
                      <thead>
                        <tr role="row">
                          <th class="sorting_asc" tabindex="0" aria-controls="basic-datatables" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 541.766px;">Name</th>
                          <th class="sorting" tabindex="0" aria-controls="basic-datatables" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 265.516px;">Age</th>
                          <th class="sorting" tabindex="0" aria-controls="basic-datatables" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 200.266px;"><center>Actions</center></th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        while ($row = mysqli_fetch_assoc($result)) {
                          echo "<tr>";
                          echo "<td>" . htmlspecialchars($row['lname']) . ", " . htmlspecialchars($row['fname']) . " " . htmlspecialchars($row['mname']) . " " . htmlspecialchars($row['suffix']) . "</td>";
                          echo "<td>" . htmlspecialchars($row['age']) . "</td>";
                          echo '<td><center><div class="form-button-action">
                            <a href="?action=restore&id=' . htmlspecialchars($row['id']) . '" class="btn btn-link btn-primary btn-lg" data-bs-toggle="tooltip" title="Restore">
                                <i class="icon-action-undo"></i>
                            </a>
                            <a href="#" class="btn btn-link btn-danger" title="Delete" data-bs-toggle="tooltip" onclick="showDeleteConfirmation(event, ' . htmlspecialchars(json_encode($row['id'])) . ');"><i class="fa fa-times"></i></a>
                            </div></center></td>';
                          echo "</tr>";
                        }
                        ?>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12 col-md-5">
                    <div class="dataTables_info" id="basic-datatables_info" role="status" aria-live="polite"></div>
                  </div>
                </div>
              </div>
            </div>
            <script>
              function deleteProfile(id) {
                const xhr = new XMLHttpRequest();
                xhr.open("POST", "delete_profile.php", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function() {
                  if (xhr.readyState === 4 && xhr.status === 200) {
                    swal("Deleted!", "The profile has been deleted.", "success").then(() => {
                      location.reload();
                    });
                  } else if (xhr.readyState === 4) {
                    swal("Error!", "There was a problem deleting the profile.", "error");
                  }
                };
                xhr.send("id=" + encodeURIComponent(id));
              }

              function showDeleteConfirmation(event, id) {
                event.preventDefault();
                swal({
                  title: "Are you sure?",
                  text: "Are you sure you want to delete the selected profile?",
                  icon: "warning",
                  buttons: true,
                  dangerMode: true,
                })
                .then((willDelete) => {
                  if (willDelete) {
                    deleteProfile(id);
                  }
                });
              }
            </script>
          </div>
        </div>
      </div>


    <!-- Core JS Files -->
    <script src="../bootstrap/assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="../bootstrap/assets/js/core/popper.min.js"></script>
    <script src="../bootstrap/assets/js/core/bootstrap.min.js"></script>
    <!-- jQuery Scrollbar -->
    <script src="../bootstrap/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <!-- Chart JS -->
    <script src="../bootstrap/assets/js/plugin/chart.js/chart.min.js"></script>
    <!-- jQuery Sparkline -->
    <script src="../bootstrap/assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>
    <!-- Datatables -->
    <script src="../bootstrap/assets/js/plugin/datatables/datatables.min.js"></script>
    <!-- Bootstrap Notify -->
    <script src="../bootstrap/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
    <!-- Sweet Alert -->
    <script src="../bootstrap/assets/js/plugin/sweetalert/sweetalert.min.js"></script>
    <!-- Kaiadmin JS -->
    <script src="../bootstrap/assets/js/kaiadmin.min.js"></script>
    <script>
     $(document).ready(function() {
      $("#basic-datatables").DataTable({});
      $("#multi-filter-select").DataTable({
       pageLength: 5,
       initComplete: function() {
        this.api().columns().every(function() {
         var column = this;
         var select = $(' < select class = "form-select" > < option value = "" > < /option> < /select>').appendTo($(column.footer()).empty()).on("change", function() {
          var val = $.fn.dataTable.util.escapeRegex($(this).val());
          column.search(val ? "^" + val + "$" : "", true, false).draw();
         });
         column.data().unique().sort().each(function(d, j) {
          select.append(' < option value = "' + d + '" > ' + d + "</option>");
         });
        });
       },
      });
     });
    </script>
    </body>
</html>