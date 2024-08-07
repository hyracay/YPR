<?php
session_start();
include ("../connection/conne.php");

// Ensure session email is set, otherwise redirect
if (!isset($_SESSION['ADMIN'])) {
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

// Fetch all barangays for the dropdown
$barangay_query = "SELECT Code, Brngy FROM barangay";
$barangay_result = mysqli_query($conn, $barangay_query);

// Initialize variables for advanced search fields
$age_min = $age_max = $civil_status = $sex = $work_status = $educational_background = $youth_classification = $register_sk_voter = "";

// Handle barangay filter
$selected_barangay = isset($_GET['barangay_filter']) ? $_GET['barangay_filter'] : '';

// For advanced search
$adv_search_params = [];
if (isset($_POST['advancesearch'])) {
    $age_min = $_POST['age_min'];
    $age_max = $_POST['age_max'];
    $civil_status = $_POST['civil_status'];
    $sex = $_POST['sex'];
    $work_status = $_POST['work_status'];
    $educational_background = $_POST['educational_background'];
    $youth_classification = $_POST['youth_classification'];
    $register_sk_voter = $_POST['register_sk_voter'];

    if (!empty($age_min)) $adv_search_params[] = "age >= $age_min";
    if (!empty($age_max)) $adv_search_params[] = "age <= $age_max";
    if (!empty($civil_status)) $adv_search_params[] = "civil_status = '$civil_status'";
    if (!empty($sex)) $adv_search_params[] = "sex = '$sex'";
    if (!empty($work_status)) $adv_search_params[] = "work_status = '$work_status'";
    if (!empty($educational_background)) $adv_search_params[] = "educational_background = '$educational_background'";
    if (!empty($youth_classification)) $adv_search_params[] = "youth_classification = '$youth_classification'";
    if (!empty($register_sk_voter)) $adv_search_params[] = "register_sk_voter = '$register_sk_voter'";
}

// Pagination and search
$recordsPerPage = 10000;
$currentPage = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($currentPage - 1) * $recordsPerPage;

$sql = "SELECT * FROM profiles";
$whereClauses = [];

if (isset($_GET['search'])) {
    $searchQuery = $_GET['search'];
    $whereClauses[] = "(fname LIKE '%$searchQuery%' OR lname LIKE '%$searchQuery%' OR mname LIKE '%$searchQuery%' OR email LIKE '%$searchQuery%')";
}

if (!empty($selected_barangay)) {
    $whereClauses[] = "barangay_code = '$selected_barangay'";
}

if (!empty($adv_search_params)) {
    $whereClauses = array_merge($whereClauses, $adv_search_params);
}

if (!empty($whereClauses)) {
    $sql .= " WHERE " . implode(" AND ", $whereClauses);
}

$sql .= " ORDER BY id DESC LIMIT $recordsPerPage OFFSET $offset";

$result = mysqli_query($conn, $sql);

$totalCountSql = "SELECT COUNT(*) AS total FROM profiles";
if (!empty($whereClauses)) {
    $totalCountSql .= " WHERE " . implode(" AND ", $whereClauses);
}
$totalCountResult = mysqli_query($conn, $totalCountSql);
$totalCountRow = mysqli_fetch_assoc($totalCountResult);
$totalCount = $totalCountRow['total'];
$totalPages = ceil($totalCount / $recordsPerPage);

if (isset($_POST['submitAdd'])) {
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
    $youth_with_needs = $_POST['youth_with_needs'];
    $email = $_POST['email'];
    $birth_month = $_POST['birth_month'];
    $birth_day = $_POST['birth_day'];
    $birth_year = $_POST['birth_year'];
    $contactnumber = $_POST['contactnumber'];
    $civil_status = $_POST['civil_status'];
    $youth_classification = $_POST['youth_classification'];
    $age_group = $_POST['age_group'];
    $work_status = $_POST['work_status'];
    $educational_background = $_POST['educational_background'];
    $register_sk_voter = $_POST['register_sk_voter'];
    $voted_last_election = $_POST['voted_last_election'];
    $national_voter = $_POST['national_voter'];
    $attended_kk = $_POST['attended_kk'];
    $times_attended_kk = $_POST['times_attended_kk'];
    $no_why = $_POST['no_why'];
    $barangay_code = $_SESSION['code'];

    $insert = "INSERT INTO profiles 
              (lname, fname, mname, suffix, region, province, municipality, barangay, sitio, purok, house_number,
              sex, age, youth_with_needs, email, birth_month, birth_day, birth_year, contactnumber, civil_status, youth_classification,
              age_group, work_status, educational_background, register_sk_voter, voted_last_election, national_voter, attended_kk, times_attended_kk, no_why, barangay_code)
              VALUES 
              ('$lname', '$fname', '$mname', '$suffix', '$region', '$province', '$municipality', '$barangay','$sitio', '$purok', '$house_number',
              '$sex', '$age', '$youth_with_needs', '$email', '$birth_month', '$birth_day', '$birth_year', '$contactnumber', '$civil_status', '$youth_classification',
              '$age_group', '$work_status', '$educational_background', '$register_sk_voter', '$voted_last_election', '$national_voter', '$attended_kk', '$times_attended_kk', '$no_why','$barangay_code')";

    $result = mysqli_query($conn, $insert);

    if ($result) {
        header("location:profiles.php");
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
            google: {
                families: ["Public Sans:300,400,500,600,700"]
            },
            custom: {
                families: ["Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons",],
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
                        <a href="index.php" aria-expanded="false">
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
                                      <span class="sub-item" active>Create/View Profiles</span>
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </li>
                    <li class="nav-item"><a data-bs-toggle="collapse" href="#forms"><i class="fas icon-user"></i>
                        <p>User Accounts</p><span class="caret"></span>
                        </a>
                        <div class="collapse" id="forms">
                            <ul class="nav nav-collapse">
                              <li><a href="accounts.php"><span class="sub-item">View Accounts</span></a></li>
                              <!-- <li><a href="createacc.php"><span class="sub-item">Create Account</span></a></li> -->
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

                </ul>
            </div>
        </div>
    </div>
    <div class="main-panel">
        <div class="main-header">
            <div class="main-header-logo">
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
            <!-- Navbar Header -->
            <nav class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom">
                <div class="container-fluid">
                    <nav class="navbar navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex"></nav>
                    <h3> <?php echo $barangay_name; ?> La Trinidad Youth Profiling System </h3>
                    <ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
                        <li class="nav-item topbar-user dropdown hidden-caret">
                            <a class="dropdown-toggle profile-pic" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="avatar-sm">
                                    <img src="../bootstrap/assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle" />
                                </div>
                                <span class="profile-username">
                                    <span class="fw-bold"> <?php echo $_SESSION['email']; ?> </span>
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
                                                <h4> <?php echo $_SESSION['fname'] . " " . $_SESSION['lname']; ?> </h4>
                                                <p class="text-muted"> <?php echo $_SESSION['email']; ?> </p>
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
                    <h3 class="fw-bold mb-3">Youth Profiles</h3>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="ms-auto">
                                    <!-- Barangay Dropdown -->
                                    <form method="GET" action="profiles.php">
                                        <label for="barangay_filter">Filter by Barangay:</label>
                                        <select name="barangay_filter" id="barangay_filter" onchange="this.form.submit()">
                                            <option value="">All</option>
                                            <?php while ($row = mysqli_fetch_assoc($barangay_result)) { ?>
                                                <option value="<?php echo $row['Code']; ?>" <?php echo $selected_barangay == $row['Code'] ? 'selected' : ''; ?>>
                                                    <?php echo $row['Brngy']; ?>
                                                </option>
                                            <?php } ?>
                                        </select>
                                    </form>
                                    <!-- End of Barangay Dropdown -->
                                    <button style="float: right" id="exportBtn" class="btn btn-primary btn-round ms-auto"><i class="fa fa-download"></i>Export</button>
                                    <button type="button" style="float: right;" class="btn btn-primary btn-round ms-auto"
                                        data-bs-toggle="modal" data-bs-target="#exampleModalLong">
                                        <i class="fa fa-search"></i> Advance Search </button>
                                    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog"
                                        aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title fw-bold" id="exampleModalLongTitle">Advance Search</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                                                        data-bs-dismiss="modal">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <!-- adv search modal -->
                                                <div class="modal-body">
                                                    <form method="POST">
                                                    <div class="container">
                                                    <div class="content">
                                                    <div class="form-row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="form-group">
                                                                <label for="age_min" class="sr-only">Minimum Age</label>
                                                                <input type="number" class="form-control" id="age_min" name="age_min" min="15" max="30" value="<?php echo htmlspecialchars($age_min); ?>" placeholder="Min Age">
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="form-group">
                                                                <label for="age_max" class="sr-only">Maximum Age</label>
                                                                <input type="number" class="form-control" id="age_max" name="age_max" min="15" max="30" value="<?php echo htmlspecialchars($age_max); ?>" placeholder="Max Age">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                    <select class="form-control" id="civil_status" name="civil_status">
                                                        <option value="" <?php echo $civil_status == '' ? 'selected' : ''; ?>>Civil Status </option>
                                                        <option value="Single" <?php echo $civil_status == 'Single' ? 'selected' : ''; ?>>Single </option>
                                                        <option value="Married" <?php echo $civil_status == 'Married' ? 'selected' : ''; ?>>Married </option>
                                                        <option value="Divorced" <?php echo $civil_status == 'Divorced' ? 'selected' : ''; ?>>Divorced </option>
                                                        <option value="Widowed" <?php echo $civil_status == 'Widowed' ? 'selected' : ''; ?>>Widowed </option>
                                                    </select>
                                                    </div>
                                                    <div class="form-group">
                                                    <select class="form-control" id="sex" name="sex">
                                                        <option value="" <?php echo $sex == '' ? 'selected' : ''; ?>>Sex </option>
                                                        <option value="Male" <?php echo $sex == 'Male' ? 'selected' : ''; ?>>Male </option>
                                                        <option value="Female" <?php echo $sex == 'Female' ? 'selected' : ''; ?>>Female </option>
                                                    </select>
                                                    </div>
                                                    <div class="form-group">
                                                    <select class="form-control" id="work_status" name="work_status">
                                                        <option value="" <?php echo $work_status == '' ? 'selected' : ''; ?>>Work Status </option>
                                                        <option value="Student" <?php echo $work_status == 'Student' ? 'selected' : ''; ?>>Student </option>
                                                        <option value="Employed" <?php echo $work_status == 'Employed' ? 'selected' : ''; ?>>Employed </option>
                                                        <option value="Unemployed" <?php echo $work_status == 'Unemployed' ? 'selected' : ''; ?>>Unemployed </option>
                                                        <option value="Self-Employed" <?php echo $work_status == 'Self-Employed' ? 'selected' : ''; ?>>Self-Employed </option>
                                                        <option value="Currently Looking For Job" <?php echo $work_status == 'Currently Looking For Job' ? 'selected' : ''; ?>>Currently Looking For Job </option>
                                                    </select>
                                                    </div>
                                                    <div class="form-group">
                                                    <select class="form-control" id="educational_background" name="educational_background">
                                                        <option value="" <?php echo $educational_background == '' ? 'selected' : ''; ?>>Educational Background </option>
                                                        <option value="Elementary Level" <?php echo $educational_background == 'Elementary Level' ? 'selected' : ''; ?>>Elementary Level </option>
                                                        <option value="Elementary Graduate" <?php echo $educational_background == 'Elementary Graduate' ? 'selected' : ''; ?>>Elementary Graduate </option>
                                                        <option value="High School Level" <?php echo $educational_background == 'High School Level' ? 'selected' : ''; ?>>High School Level </option>
                                                        <option value="High School Graduate" <?php echo $educational_background == 'High School Graduate' ? 'selected' : ''; ?>>High School Graduate </option>
                                                        <option value="Vocational Graduate" <?php echo $educational_background == 'Vocational Graduate' ? 'selected' : ''; ?>>Vocational Graduate </option>
                                                        <option value="College Level" <?php echo $educational_background == 'College Level' ? 'selected' : ''; ?>>College Level </option>
                                                        <option value="College Graduate" <?php echo $educational_background == 'College Graduate' ? 'selected' : ''; ?>>College Graduate </option>
                                                        <option value="Master Level" <?php echo $educational_background == "Master Level" ? 'selected' : ''; ?>>Master's Level </option>
                                                        <option value="Master Graduate" <?php echo $educational_background == "Master Graduate" ? 'selected' : ''; ?>>Master's Graduate </option>
                                                        <option value="Doctorate Level" <?php echo $educational_background == 'Doctorate Level' ? 'selected' : ''; ?>>Doctorate Level </option>
                                                    </select>
                                                    </div>
                                                    <div class="form-group">
                                                    <select class="form-control" id="youth_classification" name="youth_classification">
                                                        <option value="" <?php echo $youth_classification == '' ? 'selected' : ''; ?>>Youth Classification </option>
                                                        <option value="In School Youth" <?php echo $youth_classification == 'In School Youth' ? 'selected' : ''; ?>>In School Youth </option>
                                                        <option value="Out Of School Youth" <?php echo $youth_classification == 'Out Of School Youth' ? 'selected' : ''; ?>>Out Of School Youth </option>
                                                        <option value="Working Youth" <?php echo $youth_classification == 'Working Youth' ? 'selected' : ''; ?>>Working Youth </option>
                                                        <option value="Person With Disability" <?php echo $youth_classification == 'Person With Disability' ? 'selected' : ''; ?>>Person With Disability </option>
                                                    </select>
                                                    </div>
                                                    <div class="form-group">
                                                    <select class="form-control" id="register_sk_voter" name="register_sk_voter">
                                                        <option value="" <?php echo $register_sk_voter == '' ? 'selected' : ''; ?>>Registered SK Voter </option>
                                                        <option value="Registered" <?php echo $register_sk_voter == 'Registered' ? 'selected' : ''; ?>>Yes </option>
                                                        <option value="Not Registered" <?php echo $register_sk_voter == 'Not Registered' ? 'selected' : ''; ?>>No </option>
                                                    </select>
                                                    </div>
                                                    </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-primary" name="advancesearch">Search</button>
                                                    <button type="submit" class="btn btn-primary" name="clearfilterarchive">Clear Filter</button>
                                                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- fetch rows -->
                                    <div class="table-responsive">
                                        <form id="profilesForm" method="POST" action="delete_multiple.php">
                                            <table id="basic-datatables" class="display table table-striped table-hover dataTable"
                                                role="grid" aria-describedby="basic-datatables_info">
                                                <thead>
                                                    <tr role="row">
                                                        <th class="sorting_asc" tabindex="1" aria-controls="basic-datatables" rowspan="1"
                                                            colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending"
                                                            style="width: 541.766px;">Name</th>
                                                        <th tabindex="2" aria-controls="basic-datatables" rowspan="1" colspan="1"
                                                            style="width: 365.516px;">Email</th>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    if ($result && mysqli_num_rows($result) > 0) {
                                                        while ($row = mysqli_fetch_assoc($result)) {
                                                        $results[] = $row; ?>
                                                            <td>
                                                                <a href="#" class="profileNameLink" data-id="
                                                                <?= $row['id']; ?>" data-fullname="
                                                                <?= $row['fname'] . ' ' . $row['mname'] . ' ' . $row['lname']; ?>"
                                                                data-address="
                                                                <?= $row['house_number'] . ', ' . $row['purok'] . ', ' . $row['sitio'] . ' ' . $row['barangay'] . ', ' . $row['municipality'] . ', ' . $row['province'] . ', ' . $row['region']; ?>"
                                                                data-sex="
                                                                <?= $row['sex']; ?>" data-age="
                                                                <?= $row['age']; ?>" data-email="
                                                                <?= $row['email']; ?>" data-birthday="
                                                                <?= $row['birth_month'] . '/' . $row['birth_day'] . '/' . $row['birth_year']; ?>"
                                                                data-youth_with_needs="
                                                                <?= $row['youth_with_needs']; ?>" data-contact_number="
                                                                <?= $row['contactnumber']; ?>" data-civil_status="
                                                                <?= $row['civil_status']; ?>" data-age_group="
                                                                <?= $row['age_group']; ?>" data-educational_background="
                                                                <?= $row['educational_background']; ?>" data-youth_classification="
                                                                <?= $row['youth_classification']; ?>" data-work_status="
                                                                <?= $row['work_status']; ?>" data-national_voter="
                                                                <?= $row['national_voter']; ?>" data-register_sk_voter="
                                                                <?= $row['register_sk_voter']; ?>" data-voted_last_election="
                                                                <?= $row['voted_last_election']; ?>" data-times_attended="
                                                                <?= $row['times_attended_kk']; ?>" data-national_voter="
                                                                <?= $row['national_voter']; ?>" data-reason="
                                                                <?= $row['no_why']; ?>" data-bs-toggle="modal" data-bs-target="#modal-default">
                                                                <?= $row['fname'] . ' ' . $row['mname'] . ' ' . $row['lname']; ?> </a>
                                                            </td>
                                                            <td>
                                                                <p style="text-transform:lowercase"> <?= $row['email']; ?> </p>
                                                            </td>

                                                            </tr> <?php }
                                                    }
                                                    ?>
                                                    <script>
                                                        const results = <?php echo json_encode($results); ?>;
                                                        function exportToCSV(array, filename = 'data.csv') {
                                                            if (array.length > 0) {
                                                                const header = Object.keys(array[0]);
                                                                const csv = array.map(row => header.map(fieldName => JSON.stringify(row[fieldName])).join(','));
                                                                csv.unshift(header.join(','));
                                                                const csvArray = csv.join('\r\n');

                                                                const blob = new Blob([csvArray], {
                                                                    type: 'text/csv;charset=utf-8;'
                                                                });
                                                                const link = document.createElement("a");
                                                                if (link.download !== undefined) {
                                                                    const url = URL.createObjectURL(blob);
                                                                    link.setAttribute("href", url);
                                                                    link.setAttribute("download", filename);
                                                                    link.style.visibility = 'hidden';
                                                                    document.body.appendChild(link);
                                                                    link.click();
                                                                    document.body.removeChild(link);
                                                                }
                                                            }
                                                        }

                                                        document.getElementById('exportBtn').addEventListener('click', function (e) {
                                                            e.preventDefault();
                                                            exportToCSV(results, 'profiles.csv');
                                                        });
                                                    </script>
                                                </tbody>
                                            </table>
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
                                                    var age = today.getFullYear() - bday.getFullYear();
                                                    var monthDiff = today.getMonth() - bday.getMonth();
                                                    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < bday.getDate())) {
                                                        age--;
                                                    }
                                                    var ageGroup = '';
                                                    if (age >= 15 && age <= 17) {
                                                        ageGroup = 'Child Youth';
                                                    } else if (age >= 18 && age <= 24) {
                                                        ageGroup = 'Core Youth';
                                                    } else if (age >= 25 && age <= 30) {
                                                        ageGroup = 'Young Adult';
                                                    }
                                                    var modalContent = `
                                              <p>	<strong>Full Name:</strong> ${fullName}	</p>
                                              <p> <strong>Address:</strong> ${address} </p>
                                              <p>	<strong>Sex:</strong> ${sex} </p>
                                              <p> <strong>Age:</strong> ${age} </p>
                                              <p> <strong>Birthday:</strong> ${birthday} </p>
                                              <p>	<strong>Youth with Needs:</strong> ${youthWithNeeds} </p>
                                              <p> <strong>Email:</strong> ${email}	</p>
                                              <p> <strong>Contact Number:</strong> ${contactNumber} </p>
                                              <p> <strong>Civil Status:</strong> ${civilStatus} </p>
                                              <p>	<strong>Age Group:</strong> ${ageGroup} </p>
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

                                    <div class="card-body">
                                        <!-- end of modal -->
                                        <!-- fetch rows --> 
                                        <?php
                                        $recordsPerPage = 20;
                                        $currentPage = isset($_GET['page']) ? $_GET['page'] : 1;

                                        $offset = ($currentPage - 1) * $recordsPerPage;

                                        if (isset($_GET['search'])) {
                                            $searchQuery = $_GET['search'];
                                            $sql = "SELECT * FROM profiles 
                                                        WHERE fname LIKE '%$searchQuery%' OR lname LIKE '%$searchQuery%' OR mname LIKE '%$searchQuery%' OR email LIKE '%$searchQuery%' 
                                                        ORDER BY id DESC 
                                                        LIMIT $recordsPerPage OFFSET $offset";
                                        } else {
                                            $sql = "SELECT * FROM profiles 
                                                        ORDER BY id DESC ";
                                        }

                                        $result = mysqli_query($conn, $sql);

                                        $totalCountSql = "SELECT COUNT(*) AS total FROM profiles";
                                        $totalCountResult = mysqli_query($conn, $totalCountSql);
                                        $totalCountRow = mysqli_fetch_assoc($totalCountResult);
                                        $totalCount = $totalCountRow['total'];
                                        $totalPages = ceil($totalCount / $recordsPerPage);
                                        if ($result && mysqli_num_rows($result) > 0) {
                                            $results = [];
                                            ?>
                                            <!-- Modal structure -->
                                            <div class="modal fade" id="modal-default" tabindex="-1" role="dialog"
                                                aria-labelledby="modal-default" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h6 class="modal-title fw-bold" id="modal-title-default">User Details</h6>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                                                                data-bs-dismiss="modal"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p id="modal-body-content">User details go here...</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </form>
                                            <!-- PHP and table code from above -->
                                            <div class="section">
                                                <form id="profilesForm" method="POST" action="profiles.php">
                                                    <?php while ($row = mysqli_fetch_assoc($result)) { ?>   <?php }
                                        } ?> </form>
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
                                                  <p>
                                                  <strong>Full Name:</strong> ${fullName}
                                                  </p>
                                                  <p>
                                                  <strong>Address:</strong> ${address}
                                                  </p>
                                                  <p>
                                                  <strong>Sex:</strong> ${sex}
                                                  </p>
                                                  <p>
                                                  <strong>Age:</strong> ${age}
                                                  </p>
                                                  <p>
                                                  <strong>Birthday:</strong> ${birthday}
                                                  </p>
                                                  <p>
                                                  <strong>Youth with Needs:</strong> ${youthWithNeeds}
                                                  </p>
                                                  <p>
                                                  <strong>Email:</strong> ${email}
                                                  </p>
                                                  <p>
                                                  <strong>Contact Number:</strong> ${contactNumber}
                                                  </p>
                                                  <p>
                                                  <strong>Civil Status:</strong> ${civilStatus}
                                                  </p>
                                                  <p>
                                                  <strong>Age Group:</strong> ${ageGroup}
                                                  </p>
                                                  <p>
                                                  <strong>Educational Background:</strong> ${educationalBackground}
                                                  </p>
                                                  <p>
                                                  <strong>Youth Classification:</strong> ${youthClassification}
                                                  </p>
                                                  <p>
                                                  <strong>Work Status:</strong> ${workStatus}
                                                  </p>
                                                  <p>
                                                  <strong>National Voter:</strong> ${nationalVoter}
                                                  </p>
                                                  <p>
                                                  <strong>Registered SK Voter:</strong> ${registeredSkVoter}
                                                  </p>
                                                  <p>
                                                  <strong>Voted Last Election:</strong> ${votedLastElection}
                                                  </p>
                                                  <p>
                                                  <strong>Times Attended:</strong> ${timesAttended}
                                                  </p>
                                                  <p>
                                                  <strong>If no, why?</strong> ${reason}
                                                  </p> `;
                                                        document.getElementById('modal-body-content').innerHTML = modalContent;
                                                    });
                                                });
                                            });
                                        </script>
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
                $(document).ready(function () {
                    $("#basic-datatables").DataTable({});
                    $("#multi-filter-select").DataTable({
                        pageLength: 5,
                        initComplete: function () {
                            this.api().columns().every(function () {
                                var column = this;
                                var select = $('<select class="form-select"><option value=""></option></select>').appendTo($(column.footer()).empty()).on("change", function () {
                                    var val = $.fn.dataTable.util.escapeRegex($(this).val());
                                    column.search(val ? "^" + val + "$" : "", true, false).draw();
                                });
                                column.data().unique().sort().each(function (d, j) {
                                    select.append('<option value="' + d + '">' + d + "</option>");
                                });
                            });
                        },
                    });
                });
            </script>
</body>
</html>