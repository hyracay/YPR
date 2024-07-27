<?php
session_start();
include("../connection/conne.php");

// update age when loggin in
date_default_timezone_set('Asia/Manila');
            $get_data = "SELECT * FROM profiles";
            $get_result = mysqli_query($conn, $get_data);
            while($row = mysqli_fetch_array($get_result)){
                $get_id = $row['id'];
                $get_lname = $row['lname'];
                $get_fname = $row['fname'];
                $get_mname = $row['mname'];
                $get_suffix = $row['suffix'];
                $get_region = $row['region'];
                $get_province = $row['province'];
                $get_municipality = $row['municipality'];
                $get_barangay = $row['barangay'];
                $get_sitio = $row['sitio'];
                $get_purok = $row['purok'];
                $get_house_number = $row['house_number'];
                $get_sex = $row['sex'];
                $get_age = $row['age'];
                $get_youth_with_needs = $row['youth_with_needs'];
                $get_email = $row['email'];
                
                $get_year = $row['birth_year'];
                $get_month = $row['birth_month'];
                $get_day = $row['birth_day'];

                $get_bday = strval($get_day.".".$get_month.".".$get_year);
                $bday = new DateTime($get_bday);
                $date_today = new DateTime(date('m.d.y'));
                $new_age = $date_today -> diff($bday);
                $age = $new_age -> y;

                $get_contactnumber= $row['contactnumber'];
                $get_civil_status = $row['civil_status'];
                $get_youthclassification = $row['youth_classification'];
                $get_agegroup= $row['age_group'];
                $get_workstatus= $row['work_status'];
                $get_educationalbackground= $row['educational_background'];
                $get_registerSKvoter = $row['register_sk_voter'];
                $get_voted_last_election= $row['voted_last_election'];
                $get_national_voter = $row['national_voter'];
                $get_attended_kk = $row['attended_kk'];
                $get_times_attended_kk = $row['times_attended_kk'];
                $get_no_why = $row['no_why'];
                $get_barangay_code = $row['barangay_code'];
                
                $update_age = "UPDATE profiles SET lname = '$get_lname',fname = '$get_fname',
                mname='$get_mname',suffix='$get_suffix',region='$get_region',province='$get_province',municipality='$get_municipality',
                barangay='$get_barangay',sitio='$get_sitio',purok='$get_purok',house_number='$get_house_number',sex='$get_sex',
                age='$age',youth_with_needs='$get_youth_with_needs',email='$get_email',birth_month='$get_month',
                `birth_day`='$get_day',`birth_year`='$get_year',`contactnumber`='$get_contactnumber',`civil_status`='$get_civil_status',
                `youth_classification`='$get_youthclassification',`age_group`='$get_agegroup',`work_status`='$get_workstatus',
                `educational_background`='$get_educationalbackground',`register_sk_voter`='$get_registerSKvoter',`voted_last_election`='$get_voted_last_election',
                `national_voter`='$get_national_voter',`attended_kk`='$get_attended_kk',`times_attended_kk`='$get_times_attended_kk',`no_why`='$get_no_why',
                `barangay_code`='$get_barangay_code' WHERE id = '$get_id' ";
                $result_update = mysqli_query($conn, $update_age);

                if($age > 30){
                    // echo $get_id . " " . $row['fname'] . "<br>";
                    $insert = "INSERT INTO profiles_archive SELECT * FROM profiles WHERE id = '$get_id' ";
                    $insert_result = mysqli_query($conn, $insert);

                    $delete_oa = "DELETE FROM profiles WHERE id = '$get_id' ";
                    $delete_result = mysqli_query($conn, $delete_oa);
                }
            }


// Ensure session email is set, otherwise redirect
if (!isset($_SESSION['USER'])) {
  header("location:../index.php");
  exit(); // Ensure that no further code is executed after the redirection
}
if (isset($_SESSION['role'])) {
  $role = $_SESSION['role'];
} else {
  // Handle case where role is not set (e.g., redirect or error message)
  echo "Role information not found. Please contact administrator.";
  exit();
}

// for barangay code
$barangay_code = "";
$code = isset($_SESSION['code']) ? $_SESSION['code'] : '';

$fetch_barangay = "SELECT * FROM barangay WHERE Code = '$code'";
$fetch_barangay_result = mysqli_query($conn, $fetch_barangay);
while ($row = mysqli_fetch_assoc($fetch_barangay_result)) {
  $barangay_code = $row['Brngy'];
}

// Fetch data based on barangay code, if set; otherwise, fetch overall data
$where_clause = $code ? "WHERE barangay_code = '$code'" : '';

// pie chart for civil status
$data_civ = "SELECT civil_status, COUNT(*) as count FROM profiles $where_clause GROUP BY civil_status";
$result_civ = mysqli_query($conn, $data_civ);

$data_civ_array = array();
while ($row = mysqli_fetch_assoc($result_civ)) {
  $data_civ_array[] = $row;
}

// pie chart for age_group
$data_age = "SELECT age_group, COUNT(*) as count FROM profiles $where_clause GROUP BY age_group";
$result_age = mysqli_query($conn, $data_age);

$data_age_array = array();
while ($row = mysqli_fetch_assoc($result_age)) {
  $data_age_array[] = $row;
}

// pie chart for educational background
$data_edu = "SELECT educational_background, COUNT(*) as count FROM profiles $where_clause GROUP BY educational_background";
$result_edu = mysqli_query($conn, $data_edu);

$data_edu_array = array();
while ($row = mysqli_fetch_assoc($result_edu)) {
  $data_edu_array[] = $row;
}

// youth classification
$data_youth_class = "SELECT youth_classification, COUNT(*) as count FROM profiles $where_clause GROUP BY youth_classification";
$result_class = mysqli_query($conn, $data_youth_class);

$data_youth_class_array = array();
while ($row = mysqli_fetch_assoc($result_class)) {
  $data_youth_class_array[] = $row;
}

// work status
$data_work_status = "SELECT work_status, COUNT(*) as count FROM profiles $where_clause GROUP BY work_status";
$result_work = mysqli_query($conn, $data_work_status);

$data_work_status_array = array();
while ($row = mysqli_fetch_assoc($result_work)) {
  $data_work_status_array[] = $row;
}

// sk voter
$data_sk = "SELECT register_sk_voter, COUNT(*) as count FROM profiles $where_clause GROUP BY register_sk_voter";
$result_sk = mysqli_query($conn, $data_sk);

$data_sk_array = array();
while ($row = mysqli_fetch_assoc($result_sk)) {
  $data_sk_array[] = $row;
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
  <script>
    WebFont.load({
      google: { families: ["Public Sans:300,400,500,600,700"] },
      custom: {
        families: ["Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"],
        urls: ["../bootstrap/assets/css/fonts.min.css"],
      },
      active: function () {
        sessionStorage.fonts = true;
      },
    });
  </script>
  <!-- CSS Files -->
  <script src="https://code.highcharts.com/highcharts.js"></script>
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
    <!-- navbar -->
    <div class="sidebar-wrapper scrollbar scrollbar-inner">
      <div class="sidebar-content">
        <ul class="nav nav-secondary">
         <li class="nav-item"><a href="homepage.php" aria-expanded="false"><i class="fas fa-chart-bar"></i><p>Dashboard</p></a></li>
          <li class="nav-section">
            <span class="sidebar-mini-icon">
              <i class="fa fa-ellipsis-h"></i>
            </span>
            <h4 class="text-section">Components</h4>
          </li>
         <li class="nav-item">
              <a data-bs-toggle="collapse" href="#tables"><i class="fas icon-people"></i><p>Youth Profiles</p><span class="caret"></span></a>
              <div class="collapse" id="tables">
                <ul class="nav nav-collapse">
                  <li><a href="profiles.php"><span class="sub-item">Create/View Profiles</span></a></li>
                  <li><a href="archive.php"><span class="sub-item">Archive</span></a></li>
                </ul>
              </div>
            </li>
            

        
          <li class="nav-item">
            <a href="calendar.php"><i class="fas icon-calendar"></i><p>Calendar</p></a>
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
          <h3><?php echo $barangay_code; ?> La Trinidad Youth Profiling System</h3>
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

    <div class="container">
      <div class="page-inner">
        <div class="page-header">
          <h4 class="page-title">Demographic Insights</h4>
        </div>
        <button class="btn btn-primary mt-3" id="downloadPdf">Download Charts as PDF</button>
        <div class="row">
          <div class="chart"><div id="civil_status"></div></div>
          <div class="chart"><div id="chart_age"></div></div>
        </div>
        <div class="row">
          <div class="chart"><div id="chart_edu"></div></div>
          <div class="chart"><div id="youth_classification"></div></div>
        </div>
        <div class="row">
          <div class="chart"><div id="work_status"></div></div>
          <div class="chart"><div id="register_sk_voter"></div></div>
        </div>
       
      </div>

      <script>
        document.addEventListener('DOMContentLoaded', function () {
          const defaultData = [{ name: 'No Data', y: 1 }];
          
          const civData = <?php echo empty($data_civ_array) ? json_encode($defaultData) : json_encode(array_map(function($row) {
            return ['name' => $row['civil_status'], 'y' => (int)$row['count']];
          }, $data_civ_array)); ?>;

          const ageData = <?php echo empty($data_age_array) ? json_encode($defaultData) : json_encode(array_map(function($row) {
            return ['name' => $row['age_group'], 'y' => (int)$row['count']];
          }, $data_age_array)); ?>;

          const eduData = <?php echo empty($data_edu_array) ? json_encode($defaultData) : json_encode(array_map(function($row) {
            return ['name' => $row['educational_background'], 'y' => (int)$row['count']];
          }, $data_edu_array)); ?>;

          const youthClassData = <?php echo empty($data_youth_class_array) ? json_encode($defaultData) : json_encode(array_map(function($row) {
            return ['name' => $row['youth_classification'], 'y' => (int)$row['count']];
          }, $data_youth_class_array)); ?>;

          const workStatusData = <?php echo empty($data_work_status_array) ? json_encode($defaultData) : json_encode(array_map(function($row) {
            return ['name' => $row['work_status'], 'y' => (int)$row['count']];
          }, $data_work_status_array)); ?>;

          const skVoterData = <?php echo empty($data_sk_array) ? json_encode($defaultData) : json_encode(array_map(function($row) {
            $display = $row['register_sk_voter'] == 'Registered' ? 'Registered' : 'Not Registered';
            return ['name' => $display, 'y' => (int)$row['count']];
          }, $data_sk_array)); ?>;
      const chartOptions = {
      chart: { plotBackgroundColor: null, plotBorderWidth: null, plotShadow: false, type: 'pie' },
      tooltip: { pointFormat: '{series.name}: <b>{point.y}</b>' },
      accessibility: { point: { valueSuffix: '%' } },
      plotOptions: {
        pie: {
          allowPointSelect: true, cursor: 'pointer',
          dataLabels: { enabled: true, format: '<b>{point.name}</b>: {point.y}' },
          // showInLegend: true
        }
      },
      legend: {
        layout: 'vertical',
        align: 'center',
        verticalAlign: 'bottom'
      }
    };

    Highcharts.chart('civil_status', {
      ...chartOptions,
      title: { text: 'Civil Status' },
      series: [{ name: 'Civil Status', colorByPoint: true, data: civData }]
    });

    Highcharts.chart('chart_age', {
      ...chartOptions,
      title: { text: 'Age Group Distribution' },
      series: [{ name: 'Age Group', colorByPoint: true, data: ageData }]
    });

    Highcharts.chart('chart_edu', {
      ...chartOptions,
      title: { text: 'Educational Background' },
      series: [{ name: 'Educational Background', colorByPoint: true, data: eduData }]
    });

    Highcharts.chart('youth_classification', {
      ...chartOptions,
      title: { text: 'Youth Classification' },
      series: [{ name: 'Youth Classification', colorByPoint: true, data: youthClassData }]
    });

    Highcharts.chart('work_status', {
      ...chartOptions,
      title: { text: 'Work Status' },
      series: [{ name: 'Work Status', colorByPoint: true, data: workStatusData }]
    });

    Highcharts.chart('register_sk_voter', {
      ...chartOptions,
      title: { text: 'Registered SK Voter' },
      series: [{ name: 'Registered SK Voter', colorByPoint: true, data: skVoterData }]
    });
  });

    document.getElementById('downloadPdf').addEventListener('click', function () {
  const { jsPDF } = window.jspdf;
  const pdf = new jsPDF('p', 'mm', 'a4');

  const chartsConfig = [
    { id: 'civil_status', width: 275, height: 80 },
    { id: 'chart_age', width: 275, height: 80 },
    { id: 'chart_edu', width: 260, height: 80 },
    { id: 'youth_classification', width: 275, height: 80 },
    { id: 'work_status', width: 275, height: 80 },
    { id: 'register_sk_voter', width: 275, height: 80 }
  ];

  const margin = 10; // Margin from the edges of the page
  const spacing = 10; // Space between charts

  // Function to capture and add charts to PDF
  const captureChart = async (chartConfig, xPos, yPos) => {
    const chartElement = document.getElementById(chartConfig.id);
    if (chartElement) {
      const scale = 2; // Increase the scale for better resolution
      const canvas = await html2canvas(chartElement, { backgroundColor: null, scale: scale });
      const imgData = canvas.toDataURL('image/png');

      // Calculate the center position
      const centeredXPos = (pdf.internal.pageSize.getWidth() - chartConfig.width) / 2;

      pdf.addImage(imgData, 'PNG', centeredXPos, yPos, chartConfig.width, chartConfig.height);
    }
  };

  // Function to handle page layout
  const generateChartsPage = async (startIndex, endIndex) => {
    let yPos = margin;

    for (let i = startIndex; i < endIndex; i++) {
      await captureChart(chartsConfig[i], 0, yPos);

      yPos += chartsConfig[i].height + spacing;

      if ((i - startIndex + 1) % 3 === 0 && i < endIndex - 1) {
        pdf.addPage();
        yPos = margin;
      }
    }
  };

  // Generate pages
  (async () => {
    for (let i = 0; i < chartsConfig.length; i += 3) {
      await generateChartsPage(i, Math.min(i + 3, chartsConfig.length));
      if (i + 3 < chartsConfig.length) {
        pdf.addPage();
      }
    }

    pdf.save('charts.pdf');
  })().catch(error => {
    console.error('Error generating PDF:', error);
  });
});

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
<!-- Chart Circle -->
<script src="../bootstrap/assets/js/plugin/chart-circle/circles.min.js"></script>
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