<html>
    <head>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.3/dist/sweetalert2.all.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.3/dist/sweetalert2.min.css" rel="stylesheet">
    </head>
</html>
<?php
session_start();
include("../connection/conne.php");

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
if (isset($_POST['upload'])) {
    if (isset($_FILES['csvFile']) && $_FILES['csvFile']['error'] == 0) {
        $fileTmpPath = $_FILES['csvFile']['tmp_name'];
        $fileName = $_FILES['csvFile']['name'];
        $fileSize = $_FILES['csvFile']['size'];
        $fileType = $_FILES['csvFile']['type'];
        $fileNameCmps = explode(".", $fileName);
        $fileExtension = strtolower(end($fileNameCmps));

        if ($fileExtension == 'csv') {

            $file = fopen($fileTmpPath, 'r');

            if ($file === FALSE) {
                die("Error opening file.");
            }

            fgetcsv($file);

            $stmt_profiles = $conn->prepare("INSERT INTO profiles (lname, fname, mname, suffix, region, province, municipality, barangay, sitio, purok,house_number, sex, age, youth_with_needs,email, birth_month, birth_day, birth_year, contactnumber, civil_status, youth_classification, age_group, work_status, educational_background, register_sk_voter, voted_last_election, national_voter, attended_kk, times_attended_kk, no_why, barangay_code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt_profiles_backup = $conn->prepare("INSERT INTO profiles_backup (lname, fname, mname, suffix, region, province, municipality, barangay, sitio, purok,house_number, sex, age, youth_with_needs,email, birth_month, birth_day, birth_year, contactnumber, civil_status, youth_classification, age_group, work_status, educational_background, register_sk_voter, voted_last_election, national_voter, attended_kk, times_attended_kk, no_why, barangay_code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            if ($stmt_profiles === FALSE || $stmt_profiles_backup === FALSE) {
                die("Error.");
            }

            $stmt_profiles->bind_param('sssssssssssssisssssssssssssssis', $lname, $fname, $mname, $suffix, $region, $province, $municipality, $barangay, $sitio, $purok, $house_number, $sex, $age,$youth_with_needs,$email, $birth_month, $birth_day, $birth_year, $contactnumber, $civil_status, $youth_classification, $age_group, $work_status, $educational_background, $register_sk_voter, $voted_last_election,$national_voter,$attended_kk, $times_attended_kk,$no_why, $barrangay_code);
            $stmt_profiles_backup->bind_param('sssssssssssssisssssssssssssssis', $lname, $fname, $mname, $suffix, $region, $province, $municipality, $barangay, $sitio, $purok, $house_number, $sex, $age,$youth_with_needs,$email, $birth_month, $birth_day, $birth_year, $contactnumber, $civil_status, $youth_classification, $age_group, $work_status, $educational_background, $register_sk_voter, $voted_last_election,$national_voter,$attended_kk, $times_attended_kk,$no_why, $barrangay_code);

            while (($row = fgetcsv($file, 1000, ",")) !== FALSE) {
                $id = $row[0];
                $lname = $row[1];
                $fname = $row[2];
                $mname = $row[3];
                $suffix = $row[4];
                $region = $row[5];
                $province = $row[6];
                $municipality = $row[7];
                $barangay = $row[8];
                $sitio = $row[9];//AADED
                $purok = $row[10];
                $house_number = $row[11];
                $sex = $row[12];
                $age = $row[13];
                $youth_with_needs = $row[14];////ADDED
                $email = $row[15];
                $birth_month = $row[16];
                $birth_day = $row[17];
                $birth_year = $row[18];
                $contactnumber = $row[19];
                $civil_status = $row[20];
                $youth_classification = $row[21];
                $age_group = $row[22];
                $work_status = $row[23];
                $educational_background = $row[24];
                $register_sk_voter_raw = $row[25];
                if ($register_sk_voter_raw == 'Registered') {
                    $register_sk_voter = 'Registered';
                } else {
                    $register_sk_voter = 'Not Registered';
                }
                $voted_last_election = $row[26];
                $national_voter = $row[27];////ADDED
                $attended_kk = $row[28];
                $times_attended_kk = $row[29];
                $no_why= $row[30];////ADDED
                $barrangay_code = $row[31];////ADDED

                $stmt_profiles->execute();
                $stmt_profiles_backup->execute();
            }

            $stmt_profiles->close();
            $stmt_profiles_backup->close();

            fclose($file);
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
             header("location: profiles.php");
            //update age here
            
            
            $conn->close();
        } else {
            echo "
                <script>
                    Swal.fire({
                        title: 'Please Upload CSV File Only',
                        icon: 'warning',
                        confirmButtonText: 'OK',
                        allowOutsideClick: false
                    }).then((result)=>{
                        if(result.isConfirmed){
                            window.location.href='profiles.php';
                        }
                    });
                </script>
            ";
        }
    }
    else{
        header("location:profiles.php");
    }
} 
