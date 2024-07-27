<?php
session_start();
include ("../connection/conne.php");

if (!isset($_SESSION['USER'])) {
    header("location:../index.php");
    exit();
}

if (isset($_SESSION['role'])) {
    $role = $_SESSION['role'];
    $barangay_code = $_SESSION['code'];
} else {
    echo "Role information not found. Please contact administrator.";
    exit();
}

// // Archive profiles with age > 30
// $archive_profiles = "INSERT INTO profiles_archive (SELECT * FROM profiles WHERE age > 30)";

// if (mysqli_query($conn, $archive_profiles)) {
//     $delete_archived_profiles = "DELETE FROM profiles WHERE age > 30";
//     if (!mysqli_query($conn, $delete_archived_profiles)) {
//         $message = "Error deleting archived profiles: " . mysqli_error($conn);
//     }
// } else {
//     $message = "Error archiving profiles: " . mysqli_error($conn);
// }

// Move profiles with age < 30 back to profiles
$move_back_profiles = "INSERT INTO profiles (SELECT * FROM profiles_archive WHERE age < 31)";
if (mysqli_query($conn, $move_back_profiles)) {
    $delete_moved_back_profiles = "DELETE FROM profiles_archive WHERE age < 31";
    if (!mysqli_query($conn, $delete_moved_back_profiles)) {
        $message = "Error deleting moved-back profiles: " . mysqli_error($conn);
    }
} else {
    $message = "Error moving back profiles: " . mysqli_error($conn);
}

// Fetch profiles to display
$fetch_profiles = "SELECT * FROM profiles_archive WHERE barangay_code = '$barangay_code'";
$result = mysqli_query($conn, $fetch_profiles);


if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];

    $sql_copy = "INSERT INTO delete_profile (id, lname, fname, mname, suffix, region, province, municipality, barangay, purok, house_number, sex, age, email, birth_month, birth_day, birth_year, contactnumber, civil_status, youth_classification, age_group, work_status, educational_background, register_sk_voter, voted_last_election, attended_kk, times_attended_kk, date_created)
                 SELECT id, lname, fname, mname, suffix, region, province, municipality, barangay, purok, house_number, sex, age, email, birth_month, birth_day, birth_year, contactnumber, civil_status, youth_classification, age_group, work_status, educational_background, register_sk_voter, voted_last_election, attended_kk, times_attended_kk, date_created
                 FROM profiles_archive
                 WHERE id = $id";

    if (mysqli_query($conn, $sql_copy)) {
        // Delete the data from profiles_archive table
        $sql_delete = "DELETE FROM profiles_archive WHERE id=$id";
        if (mysqli_query($conn, $sql_delete)) {
            header("location: archive.php");
            exit;
        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }
    } else {
        echo "Error copying record: " . mysqli_error($conn);
    }
}

$barangay_code = "";
$code = $_SESSION['code'];
$fetch_barangay = "SELECT * FROM barangay WHERE CODE = '$code' ";
$fetch_barangay_result = mysqli_query($conn, $fetch_barangay);
while ($row = mysqli_fetch_assoc($fetch_barangay_result)) {
    $barangay_code = $row['Brngy'];
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
                            <a href="homepage.php" aria-expanded="false">
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
                            <img src="../bootstrap/assets/img/kaiadmin/logo_light.svg" alt="navbar brand"
                                class="navbar-brand" height="20" />
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
                <nav class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom">
                    <div class="container-fluid">
                        <nav
                            class="navbar navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex">
                        </nav>
                        <h3><?php echo $barangay_code; ?> La Trinidad Youth Profiling System</h3>
                        <ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
                            <li class="nav-item topbar-user dropdown hidden-caret">
                                <a class="dropdown-toggle profile-pic" data-bs-toggle="dropdown" aria-expanded="false">
                                    <div class="avatar-sm">
                                        <img src="../bootstrap/assets/img/profile.jpg" alt="..."
                                            class="avatar-img rounded-circle" />
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
                                                    <h4><?php echo $_SESSION['fname'] . " " . $_SESSION['lname']; ?>
                                                    </h4>
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
            <div class="container">
                <div class="page-inner">
                    <div class="page-header">
                        <h3 class="fw-bold mb-3">Archive</h3>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <div id="basic-datatables_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="basic-datatables"
                                            class="display table table-striped table-hover dataTable" role="grid"
                                            aria-describedby="basic-datatables_info">
                                            <thead>
                                                <tr role="row">
                                                    <th tabindex="0" aria-controls="basic-datatables" rowspan="1"
                                                        colspan="1" style="width: 30.516px;">
                                                        <center><button type="button" class="btn btn-default"
                                                                data-bs-toggle="tooltip" title="Delete Selected"
                                                                onclick="showDeleteConfirmationMultiple(event);">
                                                                <i style="font-size: 17pt" class="fa fa-trash-alt"></i>
                                                            </button></center>
                                                    </th>
                                                    <th class="sorting_asc" tabindex="0"
                                                        aria-controls="basic-datatables" rowspan="1" colspan="1"
                                                        aria-sort="ascending"
                                                        aria-label="Name: activate to sort column descending"
                                                        style="width: 365.516px;">Name</th>
                                                    <th class="sorting" tabindex="0" aria-controls="basic-datatables"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Position: activate to sort column ascending"
                                                        style="width: 341.766px;">Email</th>
                                                    <th class="sorting" tabindex="0" aria-controls="basic-datatables"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Office: activate to sort column ascending"
                                                        style="width: 200.266px;">
                                                        <center>Actions</center>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                                                    <tr>
                                                        <td>
                                                            <center><input type="checkbox" name="selectedProfiles[]"
                                                            value="<?= $row['id']; ?>"></center>
                                                        </td>
                                                        <!-- dto mag lagay ng modal -->
                                                        <td><a href="#" class="profileNameLink" data-id="<?= $row['id']; ?>"
                                                            data-fullname="<?= $row['fname'] . ' ' . $row['mname'] . ' ' . $row['lname']; ?>"
                                                            data-address="<?= $row['house_number'] . ', ' . $row['purok'] . ', ' . $row['sitio'] . ', ' . $row['barangay'] . ', ' . $row['municipality'] . ', ' . $row['province'] . ', ' . $row['region']; ?>"
                                                            data-sex="<?= $row['sex']; ?>"
                                                            data-age="<?= $row['age']; ?>"
                                                            data-email="<?= $row['email']; ?>"
                                                            data-birthday="<?= $row['birth_month'] . '/' . $row['birth_day'] . '/' . $row['birth_year']; ?>"
                                                            data-youth_with_needs="<?= $row['youth_with_needs']; ?>"
                                                            data-email="<?= $row['email']; ?>"
                                                            data-contact_number="<?= $row['contactnumber']; ?>"
                                                            data-civil_status="<?= $row['civil_status']; ?>"
                                                            data-age_group="<?= $row['age_group']; ?>"
                                                            data-educational_background="<?= $row['educational_background']; ?>"
                                                            data-youth_classification="<?= $row['youth_classification']; ?>"
                                                            data-work_status="<?= $row['work_status']; ?>"
                                                            data-national_voter="<?= $row['national_voter']; ?>"
                                                            data-register_sk_voter="<?= $row['register_sk_voter']; ?>"
                                                            data-voted_last_election="<?= $row['voted_last_election']; ?>"
                                                            data-times_attended="<?= $row['times_attended_kk']; ?>"
                                                            data-reason="<?= $row['no_why']; ?>"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#modal-default"><?= $row['fname'] . ' ' . $row['mname'] . ' ' . $row['lname']; ?></a>
                                                        </td>
                                                        <td>
                                                            <p style="text-transform:lowercase"><?= $row['email']; ?></p>
                                                        </td>
                                                        <td>
                                                            <center><a href="update_archive.php?id=<?= $row['id']; ?>"
                                                                class="btn btn-link btn-primary btn-lg"><i
                                                                    class="fa fa-edit"></i></a><a href="#"
                                                                class="btn btn-link btn-danger"
                                                                onclick="showDeleteConfirmation(event, <?= htmlspecialchars($row['id']); ?>);"><i
                                                                class="fa fa-times"></i></a></center>
                                                        </td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal structure -->
                        <div class="modal fade" id="modal-default" tabindex="-1" role="dialog"
                            aria-labelledby="modal-default" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h6 class="modal-title fw-bold" id="modal-title-default">User Details</h6>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p id="modal-body-content">User details go here...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>

                        <script>
                            function showDeleteConfirmation(event, id) {
                                event.preventDefault();
                                swal({
                                    title: "Are you sure?",
                                    text: "Are you sure you want to delete the selected profiles?",
                                    icon: "warning",
                                    buttons: true,
                                    dangerMode: true,
                                })
                                    .then((willDelete) => {
                                        if (willDelete) {
                                            //change this before deploy
                                            window.location.href = `/YPR-FINAL-ULTRA-PRO-MAX/user/delete_archive.php?id=${id}`;
                                        } else {
                                            swal("The profiles are safe.", {
                                                icon: "info",
                                            });
                                        }
                                    });
                            }

                            function showDeleteConfirmationMultiple(event) {
                                event.preventDefault();
                                var selectedProfiles = [];
                                document.querySelectorAll('input[name="selectedProfiles[]"]:checked').forEach(function (checkbox) {
                                    selectedProfiles.push(checkbox.value);
                                });
                                if (selectedProfiles.length === 0) {
                                    swal("No profiles selected", "Please select profiles to delete.", "info");
                                    return;
                                }
                                swal({
                                    title: "Are you sure?",
                                    text: "Are you sure you want to delete the selected profiles?",
                                    icon: "warning",
                                    buttons: true,
                                    dangerMode: true,
                                })
                                    .then((willDelete) => {
                                        if (willDelete) {
                                            var form = document.getElementById('profilesForm');
                                            var formData = new FormData(form);
                                            fetch('delete_multiple_archive.php', {
                                                method: 'POST',
                                                body: formData
                                            }).then(response => response.text()).then(data => {
                                                swal("The selected profiles have been deleted.", {
                                                    icon: "success",
                                                }).then(() => {
                                                    location.reload();
                                                });
                                            }).catch(error => {
                                                console.error('Error:', error);
                                                swal("Error deleting profiles.", {
                                                    icon: "error",
                                                });
                                            });
                                        } else {
                                            swal("The profiles are safe.", {
                                                icon: "info",
                                            });
                                        }
                                    });
                            }
                        </script>

                        <!-- PHP and table code from above -->
                        <div class="section">
                            <form id="profilesForm" method="POST" action="archive.php">
                                <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                                    <tr>
                                        <td>
                                            <center>
                                                <input type="checkbox" name="selectedProfiles[]" value="<?= $row['id']; ?>">
                                            </center>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <p style="text-transform:lowercase"><?= $row['email']; ?></p>
                                        </td>

                                        <td>
                                            <center>
                                                <a href="update_archive.php?id=<?= $row['id']; ?>"
                                                    class="btn btn-link btn-primary btn-lg" data-bs-toggle="tooltip"
                                                    title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="#" class="btn btn-link btn-danger" title="Delete"
                                                    data-bs-toggle="tooltip"
                                                    onclick="showDeleteConfirmation(event, <?= htmlspecialchars($row['id']); ?>);"><i
                                                        class="fa fa-times"></i></a>
                                            </center>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </form>
                        </div>

                        <script>
                            document.addEventListener('DOMContentLoaded', function () {
                                document.querySelectorAll('.profileNameLink').forEach(function (link) {
                                    link.addEventListener('click', function () {
                                        var fullName = this.getAttribute('data-fullname');
                                        var address = this.getAttribute('data-address');
                                        var sex = this.getAttribute('data-sex');
                                        var age = this.getAttribute('data-age');
                                        var birthday = this.getAttribute('data-birthday');
                                        var youthWithNeeds = this.getAttribute('data-youth_with_needs');
                                        var email = this.getAttribute('data-email');
                                        var contactNumber = this.getAttribute('data-contact_number');
                                        var civilStatus = this.getAttribute('data-civil_status');
                                        // var ageGroup = this.getAttribute('data-age_group');
                                        var educationalBackground = this.getAttribute('data-educational_background');
                                        var youthClassification = this.getAttribute('data-youth_classification');
                                        var workStatus = this.getAttribute('data-work_status');
                                        var nationalVoter = this.getAttribute('data-national_voter');
                                        var registeredSkVoter = this.getAttribute('data-register_sk_voter');
                                        var votedLastElection = this.getAttribute('data-voted_last_election');
                                        var timesAttended = this.getAttribute('data-times_attended');
                                        var reason = this.getAttribute('data-reason');

                                        var bday = new Date(birthday);
                                        var today = new Date();
                                        // Calculate the difference in years
                                        var age = today.getFullYear() - bday.getFullYear();

                                        // Adjust for partial years
                                        var monthDiff = today.getMonth() - bday.getMonth();
                                        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < bday.getDate())) {
                                            age--;
                                        }

                                        var ageGroup = '';
                                        // Set age group based on age
                                        if (age >= 15 && age <= 17) {
                                            ageGroup = 'Child Youth';
                                        } else if (age >= 18 && age <= 24) {
                                            ageGroup = 'Core Youth';
                                        } else if (age >= 25 && age <= 30) {
                                            ageGroup = 'Young Adult';
                                        }

                                        var modalContent = `
                                                        <p><strong>Full Name:</strong> ${fullName}</p>
                                                        <p><strong>Address:</strong> ${address}</p>
                                                        <p>	<strong>Sex:</strong> ${sex} </p>
                                                        <p> <strong>Age:</strong> ${age} </p>
                                                        <p> <strong>Birthday:</strong> ${birthday} </p>
                                                        <p>	<strong>Youth with Needs:</strong> ${youthWithNeeds} </p>
                                                        <p> <strong>Email:</strong> ${email}	</p>
                                                        <p> <strong>Contact Number:</strong> ${contactNumber} </p>
                                                        <p> <strong>Civil Status:</strong> ${civilStatus} </p>
                                                        <p> <strong>Educational Background:</strong> ${educationalBackground} </p>
                                                        <p> <strong>Youth Classification:</strong> ${youthClassification} </p>
                                                        <p>	<strong>Work Status:</strong> ${workStatus}	</p>
                                                        <p> <strong>National Voter:</strong> ${nationalVoter} </p>
                                                        <p> <strong>Registered SK Voter:</strong> ${registeredSkVoter} </p>
                                                        <p>	<strong>Voted Last Election:</strong> ${votedLastElection}	</p>
                                                        <p>	<strong>Times Attended:</strong> ${timesAttended}	</p>
                                                        <p>	<strong>If no, why?</strong> ${reason} </p>
                                                        
                                                    `;

                                        document.getElementById('modal-body-content').innerHTML = modalContent;
                                    });
                                });
                            });
                        </script>
                        <?php while ($row = mysqli_fetch_assoc($result)): ?>
                            <tr>
                                <td class="sorting_1">
                                    <center>
                                        <input type="checkbox" name="selectedProfiles[]" value="271">
                                    </center>
                                </td>
                                <td><?php echo $row['fname'] . ' ' . $row['mname'] . ' ' . $row['lname'] . ' ' . $row['suffix']; ?>
                                </td>
                                <td><?php echo $row['email']; ?></td>
                                <td>
                                    <div class="form-button-action">
                                        <div class="form-button-action">
                                            <a href="update_archive.php?id=<?php echo $row['id']; ?>"
                                                class="btn btn-link btn-success"><i class="fa fa-edit"></i></a>
                                            <a href="archive.php?delete_id=<?php echo $row['id']; ?>"
                                                class="btn btn-link btn-danger"><i class="fa fa-times"></i></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        <?php endwhile; ?>
                        </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>

    <!-- Core JS Files -->
    <script src="../bootstrap/assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="../bootstrap/assets/js/core/popper.min.js"></script>
    <script src="../bootstrap/assets/js/core/bootstrap.min.js"></script>
    <!-- jQuery Scrollbar -->
    <script src="../bootstrap/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script src="../bootstrap/assets/js/kaiadmin.min.js"></script>
    <script src="../bootstrap/assets/js/plugin/sweetalert/sweetalert.min.js"></script>
    <script src="../bootstrap/assets/js/plugin/datatables/datatables.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#basic-datatables").DataTable({});
            $("#multi-filter-select").DataTable({
                pageLength: 5,
                initComplete: function () {
                    this.api().columns().every(function () {
                        var column = this;
                        var select = $(' < select class = "form-select" > < option value = "" > < /option> < /select>').appendTo($(column.footer()).empty()).on("change", function () {
                            var val = $.fn.dataTable.util.escapeRegex($(this).val());
                            column.search(val ? "^" + val + "$" : "", true, false).draw();
                        });
                        column.data().unique().sort().each(function (d, j) {
                            select.append(' < option value = "' + d + '" > ' + d + "</option>");
                        });
                    });
                },
            });
        });
    </script>
    </div>
</body>

</html>

<?php
mysqli_close($conn);
?>
<?php
if (isset($_POST['submit'])) {
    // Retrieve form data
    $lname = $_POST['lname'];
    $fname = $_POST['fname'];
    $mname = $_POST['mname'];
    $suffix = $_POST['suffix'];
    $region = $_POST['region'];
    $province = $_POST['province'];
    $municipality = $_POST['municipality'];
    $barangay = $_POST['barangay'];
    $sitio = $_POST['sitio'];
    $purok = $_POST['purok'];
    $house_number = $_POST['house_number'];
    $sex = $_POST['sex'];
    $age = $_POST['age'];
    $email = $_POST['email'];
    $birth_date = $_POST['birth_date'];
    $contactnumber = $_POST['contactnumber'];
    $civil_status = $_POST['civil_status'];
    $youth_classification = $_POST['youth_classification'];
    $age_group = $_POST['age_group'];
    $work_status = $_POST['work_status'];
    $educational_background = $_POST['educational_background'];
    $register_sk_voter = $_POST['register_sk_voter'];
    $voted_last_election = $_POST['voted_last_election'];
    $attended_kk = $_POST['attended_kk'];
    $times_attended_kk = $_POST['times_attended_kk'];

    $insert = "INSERT INTO profiles
            (lname, fname, mname, suffix, region, province, municipality, barangay, sitio, purok, house_number,
             sex, age, email, birth_date, contactnumber, civil_status, youth_classification,
             age_group, work_status, educational_background, register_sk_voter, voted_last_election, attended_kk, times_attended_kk)
            VALUES 
            ('$lname', '$fname', '$mname', '$suffix', '$region', '$province', '$municipality', '$barangay', '$sitio', '$purok','$house_number',
             '$sex', '$age', '$email', '$birth_date', '$contactnumber', '$civil_status', '$youth_classification',
             '$age_group', '$work_status', '$educational_background', '$register_sk_voter', '$voted_last_election', '$attended_kk', '$times_attended_kk')";

    $result = mysqli_query($conn, $insert);

    if (!$result) {
        echo "Error: " . $insert . "<br>" . mysqli_error($conn);
    }
}
?>