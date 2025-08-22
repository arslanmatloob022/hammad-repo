<?php
session_start();
require_once 'config.php';
require 'vendor/autoload.php'; // Ensure you have Guzzle installed via Composer

use GuzzleHttp\Client;

if (isset($_GET['id'])) {
    $eid = $_GET['id'];



    // Step 2: Decode the URL-encoded ID
    $decodedId = urldecode($eid);
    

  
    // Step 3: Decode the base64-encoded ID
    $base64DecodedId = base64_decode($decodedId);

    
    
    // Step 4: Sanitize the decoded ID to prevent SQL injection
    $id = mysqli_real_escape_string($conn, $base64DecodedId);

  

    // Check if the ID exists in the database
    $check = mysqli_query($conn, "SELECT * FROM form WHERE id='$id'");
    if (mysqli_num_rows($check) == 0) {
        echo "<script>
                window.location.href='list';
              </script>";
        exit;
    } 
else {
       $data = mysqli_fetch_assoc($check);

// Prepare parameters for the QR code generation
        $params = array(
            "data" => "https://mfs-moh-gov-om.com/scan?id=" . $eid . "&key=/Fitness_Exam_WF/CertificateuAX69zFq3L4BswEHTYDcpnjdwehdwjd66mWOVk12JvQR0t8olMu5IGhZXjPKNC7dFeYg3bL5ah9r",
            "config" => array(
                  "body" => "pointed-in",
                  "eye" => "frame13",
                  "eyeBall" => "ball14",
              	  "erf1" => array(
            	       "color" => "#ef7992",
        	       "type" => "frame13"
                ),
                "erf2" => array(
                      "color" => "#ef7992",
                      "type" => "frame13"
                ),
                "erf3" => array(
                      "color" => "#ef7992",
                      "type" => "frame13"
                ),
                "brf1" => array(
                      "color" => "#000000",
                      "type" => "ball14"
                ),
                "brf2" => array(
                      "color" => "#000000",
                      "type" => "ball14"
                ),
                "brf3" => array(
                      "color" => "#000000",
                      "type" => "ball14"
                ),
                "bodyColor" => "#000000",                // Black for the main QR code body
                  "bgColor" => "#FFFFFF",                 // White background
                  "eye1Color" => "#AA2655",               // Red gradient for the eyes
                  "eye2Color" => "#AA2655",
                  "eye3Color" => "#AA2655",
                  "eyeBall1Color" => "#000000",           // Black center of the eyes
                  "eyeBall2Color" => "#000000",
                  "eyeBall3Color" => "#000000",
                  "logo" => "https://mfs-moh-gov-om.com/logo2.png",  // Add logo in the center
                  "logoMode" => "default",                // Keep default mode for logo
                  "gradientColor1" => "#C1120F",          // Start gradient with light red
                  "gradientColor2" => "#000000",          // End gradient with black
                  "gradientType" => "linear",             // Linear gradient for smooth transitions
                  "gradientRotation" => 90,               // Vertical gradient
                  "gradientOnEyes" => false,              // Keep gradient off the eyes
                  "moduleShape" => "square",              // Square for standard QR dots
                  "eyeShape" => "square",                // Rounded for eye corners
                  "size" => "100x100",                  // Increased size for maximum detail
                  "errorCorrection" => "L",               // Low error correction for maximum density
                  "margin" => 0,                          // No margin to eliminate unnecessary white space
                  "data" => "https://example.com",        // Replace with your actual URL
            ),
              "size" => 100,
              "download" => false,
              "file" => "svg"
        );

         // Using Guzzle HTTP client
        $client = new \GuzzleHttp\Client();

        try {
              $response = $client->request('POST', 'https://qrcode-monkey.p.rapidapi.com/qr/custom', [
                  'json' => $params,
                  'headers' => [
                      'Content-Type' => 'application/json',
                      'x-rapidapi-host' => 'qrcode-monkey.p.rapidapi.com',
                      'x-rapidapi-key' => 'be858ad2c7msha8925bef79d04f1p18a776jsn58cc9efdf7d2',
                 ],
               ]);
  		
 
            // Save the SVG file
              $result = $response->getBody();
              file_put_contents('qr_code.svg', $result);

         } catch (\GuzzleHttp\Exception\RequestException $e) {
//            echo 'Error: ' . $e->getMessage();
          }
}
    
} else {
    echo "ID parameter is missing.";
    echo "<script>
            window.location.href='list';
          </script>";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="assets/css/style.css"> -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    body {
        font-family: promo-regular !important;
    }
    tbody{
        vertical-align: baseline !important;
    }

    @font-face {
        font-family: Blacker;
        src: url(assets/font/Blacker/Blacker-Text-Medium-trial.ttf);
    }

    .Zetafonts-font{
        font-family: Blacker !important;
    }

    .arabic{
        font-family: SST ARABIC Roman !important; 
        src: url(/assets/font/arabic/arabic/arabic/arabic.ttf);
font-weight: 600
    }
     .siwa-arabic{
font-family: SiwaArabic !important; 
        src: url(/assets/font/arabic/arabic/arabic/siwa-arabic.ttf);

    }
     .ink-brush-arabic{
font-family: InkBrushArabic !important; 
        src: url(/assets/font/arabic/arabic/arabic/ink-brush-arabic.otf);
font-weight: 600
    }

    @font-face{
        font-family: SST ARABIC Roman !important;
        src: url(/assets/font/arabic/arabic/arabic/arabic.ttf);
     }

    @font-face {
        font-family: promo-medium;
        src: url(./assets/font/promo-font/PromoTest-Medium-BF63b78802b0fd1.otf);
    }


    @font-face {
        font-family: promo-light;
        src: url(./assets/font/promo-font/PromoTest-Light-BF63b788031b552.otf);
    }

    @font-face {
        font-family: promo-regular;
        src: url(./assets/font/promo-font/PromoTest-Regular-BF63b7880272a33.otf);
    }

    @font-face {
        font-family: promo-bold;
        src: url(./assets/font/promo-font/PromoTest-Bold-BF63b788015fdbf.otf);
    }

    .qr-code {
        position: relative;
        width: 145px;
        height: 145px;
        margin: 26px 0px 5px 0px;
    }

    .qr-code img {
        height: 100%;
       
    }

    .font-light {
        font-family: promo-light !important;
    }

    @media print {
        #generatePDF {
            display: none;
        }
    }

    .borders {
        border-bottom: 3px solid #1AD1D1;
        margin: 0px 10px 10px 10px;
        padding-bottom: 10px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    .scan-me {
        font-size: 14px;
        margin: 0px;
    }

    .registration,
    .info,
    .status {
        border: 2px solid #5c5c5b;
        border-radius: 10px;
        padding: 5px 10px;
    }
    tr{
        width:100% !important; 
    }

    th,
    td {
        /padding: 3.8px 5px;/
        text-align: left;
    }

    th:first-child,
    th:nth-child(3) {
        width: 30% !important;
        font-weight: 600;
    }

    th:nth-child(3) {
        text-align: end;
    }

    td {
        width: 43.5% !important;
        text-align: center;
        font-size: 12px;
        font-family: arial !important;
         padding-top: 9px;
    }

    th {
        padding-top: 8.5px;
        font-size: 13px;
    }

    .scan {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
    }

    .scan {
        border: 2px solid #cc181c;
        border-radius: 10px;
        padding: 5px;
        margin-right: 10px;
        margin-left: -5px;
    }

    .box {
        background-color: aqua;
        height: 200px;
        width: 200px;
    }

    .name {
        font-size: 14px;
        text-align: center;
        margin: 0px 0px 35px 0px;
    }

    .fit {
        font-size: 16px;
        width: 90%;
        margin: 10px 0px 10px 0px;
        padding: 15px !important;
        border: 2px dashed #000000;
        color: #37b24d;
        text-align: center;
        border-radius: 10px;
        font-weight: bold;
    }

    .qr-con {
        margin-bottom: 20px;
    }

    .aprove-img {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .aprove-img img {
        width: 200px;
        margin: 20px;
        height: 200px;
    }

    .cus-size {
        font-size: 25px;
        text-align: center;
        color: #000000;
    }

    .cus-size1 {
        font-size: 20px;
        text-align: center;
        color: #000000;
        width:150%;
    }

    .custom-sz {
        font-size: 14px;
        text-align: center;
        color: #000000;
        font-family: promo-regular;
    }

    .medical-status {
        display: flex;
        justify-content: space-around;
        width: 100%;
    }

    .medical-status div {
        font-size: 13px;
        padding:0;
        color: #000000;
        margin: 0;
    }

    @media (max-width: 760px) {
        th:first-child,
        th:nth-child(3) {
            width: 30%;
            font-weight: 600;
        }

        td {
            width: 50%;
            font-size: 12px;
        font-family: arial !important;
                padding-top: 8.5px;
        }

        .qr-con {
            margin-bottom: 12px;
        }

        .fit {
            font-size: 15px;
            width: 90%;
            margin: 10px 0px 10px 0px;
            padding: 20px !important;
        }

        .name {
            font-size: 14px;
        }

        .medical-status span {
            font-size: 13px;
        }

        .aprove-img img {
            width: 190px;
            margin: 30px;
            height: 190px;
        }

        .scan-me {
            font-size: 14px;
        }

        .cus-size {
            font-size: 25px;
            text-align: center;
        }

        .cus-size1 {
            font-size: 18px;
        }

        td {
           font-size: 12px;
        font-family: arial !important;
        }

        th {
            font-size: 14px;
        }

        .custom-sz {
            font-size: 16px;
            text-align: center;
        }
    }

    @media (max-width: 590px) {
       
        .aprove-img img {
            width: 70px;
            height: 70px;
        }
        .cus-size {
            font-size: 14px;
            text-align: center;
        }
        .med-mar-top{
            padding-top:7px;
        }
        .custom-sz {
            font-size: 9px;
            text-align: center;
        }
        .fotn-12 {
            font-size: 15px !important;
        }
                .cus-size {
                font-size: 20px;
                width: 250%;
        }
        .cus-size1 {
            width:250%;
        }
        .qr-code {
            position: relative;
            width: 100px;
            height: 100px;
        }
        .qr-code svg{
            height:80px!important;
            width:80px!important;
        }
        .scan-me {
        font-size: 10px;
        }
        
        .font-20 {
            font-size: 12px!important;
        }
        .name {
                font-size: 12px;
            }
            .medical-status div {
            font-size: 9px;
        }
        .fit {
            font-size: 9px;
            padding:10% !important;
            border-radius: 5px;
        }
}
    @media (max-width: 320px) {
        th,
        td {
            font-size: 8.90px;
        font-family: arial !important;
        }

        .cus-size {
            font-size: 12px;
            text-align: center;
        }

        .custom-sz {
            font-size: 11px;
            text-align: center;
        }

        .aprove-img img {
            width: 50%;
        }
    }

    .fotn-12 {
        font-size: 21px;
    }

    h1 {
        margin-bottom: 0.29rem !important;
    }

    .text-gray {
        color: #000000 !important;
    }

    .logo {
        margin-top: -25px;
    }

    #download_section {
        max-width: 768px;
        width: 100%;
        margin-top:36px;
    }

    .center {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
    }

    .font-20 {
        font-size: 20px;
    }

    .ps-1 {
        padding-left: .1rem !important;
    }

    @media only screen and (max-width: 730px) {
        #download_section {
            max-width: 100%;
            width: 100%;
        }
    }
    .marl-zero{
       margin-left:10px !important; 
    }

     @font-face {
        font-family: 'SST Arabic Roman';
        src: url(./assets/font/arabic-roman/arabic-oman.ttf);
    }


.arabic{
        font-family: 'SST Arabic Roman';
    }

h5, h1, th, td {
    font-family: 'SSTArabicRoman', sans-serif;
}

</style>

<div class="center">
    <div class="py-md-5" id="download_section">
        <div class="row borders">
            <div class="col-3 width-29 p-0 d-flex align-items-start flex-column">
                <h5 class="custom-sz med-mar-top arabic"><strong>Sultanate Of Oman</strong></h5>
                <h5 class="custom-sz arabic"><strong>Ministry Of Health</strong></h5>
            </div>
            <div class="col-6 width-46">
                <div class="logo d-flex align-items-center justify-content-center flex-column">
                    <img src="assets/images/logo.png" height="80" alt="Logo">
                    <h1 class="cus-size fnt-bold ink-brush-arabic mb-2">شهادة الفحص الطبي للوافدين</h1>
                    <h1 class="cus-size1 ink-brush-arabic m-0">Expatriates Medical Exam Certificate</h1>
                </div>
            </div>
            <div class="col-3 p-0 d-flex align-items-end flex-column">
                <h5 class="m-0 fnt-bold arabic"><span class="text-gray font-12 m-0">سلطنة عُمــان</span></h5>
                <h5 class="m-0 fnt-bold arabic"><span class="text-gray font-12 m-0">وزارة الصحــة</span></h5>
            </div>
        </div>

        <div class="row mt-1 display-direction display-none-500">
            <div class="col-8 pe-1 width-100">
                <div class="registration m-2 mx-3 marl-zero">
                    <table>
                        <tbody>
                            <tr>
                                <th class="arabic">Application Type:</th>
                                <td data-label="Registration No"><?php echo ucwords($data['reg_type']) ?></td>
                                <th class="arabic">:نوع الطلب</th>
                            </tr>
                            <tr>
                                <th class="arabic">Application Number:</th>
                                <td data-label="Registration Type"><?php echo ucwords($data['reg_no']) ?></td>
                                <th class="arabic">:رقم الطلب</th>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="info m-2 mt-3 mx-3 marl-zero">
                    <table>
                        <tbody>
                            <tr>
                                <th class="arabic">Name:</th>
                                <td class="siwa-arabic"><?php echo strtoupper($data['name']) ?></td>
                                <th class="arabic">:الاسم</th>
                            </tr>
                            <tr>
                                <th class="arabic">Date of Birth:</th>
                                <td class="siwa-arabic"><?php echo (new DateTime($data['dob']))->format('d-m-Y'); ?></td>
                                <th class="arabic">:تاريخ الميلاد</th>
                            </tr>
                            <tr>
                                <th class="arabic">Nationality:</th>
                                <td class="siwa-arabic"><?php echo strtoupper($data['nationality']) ?></td>
                                <th class="arabic">:الجنسية</th>
                            </tr>
                            <tr>
                                <th class="arabic">Gender:</th>
                                <td class="siwa-arabic"><?php echo strtoupper($data['sex']) ?></td>
                                <th class="arabic">:الجنس</th>
                            </tr>
                            <tr>
                                <th class="arabic">Passport No.:</th>
                                <td class="siwa-arabic"><?php echo strtoupper($data['passport']) ?></td>
                                <th class="arabic">:رقم جواز السفر</th>
                            </tr>
                            <tr>
                                <th class="arabic">Civil No.:</th>
                                <td class="siwa-arabic"><?php echo strtoupper($data['civilid']) ?></td>
                                <th class="arabic">:الرقم المدني</th>
                            </tr>
                            <tr>
                                <th class="arabic">Sponsor:</th>
                                <td class="arabic"  ><?php echo strtoupper($data['sponsor']) ?></td>
                                <th class="fnt-bold arabic">:اسم الكفيل</th>
                            </tr>
                            <tr>
                                <th class="arabic">Category:</th>
                                <td class="siwa-arabic"><?php echo strtoupper($data['category']) ?></td>
                                <th class="arabic">:الفئـة</th>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="status m-2 mt-3 mx-3 marl-zero">
                    <table>
                        <tbody>
                            <tr>
                                <th class="arabic">Validity of the Medical:</th>
                                <td class="siwa-arabic"><?php echo (new DateTime($data['validity']))->format('d-m-Y'); ?></td>
                                <th class="arabic">:صلاحية الفحص الطبي</th>
                            </tr>
                            <tr>
                                <th class="arabic">To:</th>
                                <td class="siwa-arabic"><?php echo (new DateTime($data['toDate']))->format('d-m-Y'); ?></td>
                                <th class="arabic">:إلى</th>
                            </tr>
                            <tr>
                                <th class="arabic">Medical Center:</th>
                                <td class="siwa-arabic"><b><?php echo $data['medicalcentre'] ?></b></td>
                                <th class="arabic">:المركز الطبي</th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-4 ps-1 mar-left-27 width-95">
                <div class="scan mt-2 text-center">
                    <div class="qr-con">
                       
			  <?php if ($data['isDynamicQR'] == "1"): ?>
                           
                            <div style="margin-bottom: 20px;" class="qr-code">
				<img src="https://mfs-moh-gov-om.com/staticqr.png" alt="QR Code Image" />
                            </div>
                        <?php else: ?>
                        
                            <div style="margin-bottom: 20px;" class="qr-code">
                                <img src="https://mfs-moh-gov-om.com/staticqr.png" alt="QR Code Image" />
                            </div>
                        <?php endif; ?>
                        <p class="text-center scan-me mar-top-14 text-gray arabic">Scan Me / امسح الرمز  </p>
                    </div>
                    <p class="p-0 m-0 font-20 text-gray arabic"><?php echo $data['arbicname'] ?></p>
                    <div class="name mt-1">
                        <span class="text-gray arabic"><?php echo strtoupper($data['name']) ?></span>
                    </div>
                    <div class="medical-status">
                        <div class="arabic">Medical Status</div>
                        <div class="arabic">الحالة الطبية</div>
                    </div>
                    <div class="fit">
                        <span class="arabic">FIT / لائق صحياً</span>
                    </div>
                    <div class="aprove-img">
                        <img src="assets/images/aprove.png" alt="">
                    </div>
                </div>
            </div>
        </div>

        <div class="stamp mx-2 mar-20 display-none-500">
            <strong class="text-gray mar-20 arabic">Signature / Stamp</strong>
        </div>
    </div>
</div>

<?php if (!isset($_GET["view"])): ?>
    <div class="container d-flex justify-content-center mb-3">
        <a class="btn btn-danger" id="generatePDF" data-name="<?php echo strtoupper($data['name']) ?>">
            <span class="inter-700 medium-font">Download</span>
        </a>
    </div>
<?php endif; ?>

<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/script.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jspdf.min.js"></script>
<script src="assets/js/html2canvas.min.js"></script>
<script src="assets/js/custom.js"></script>

<script>
    window.onload = function () {
        var shouldHide = true;

        if (shouldHide) {
            document.getElementById("generatePDF").style.display = "none";
            document.getElementById("generatePDF").remove();
        }
    };
</script>
</body>
</html>
