<?php

session_start();
require_once 'config.php';


if (isset($_GET['id'])) {
  $id = mysqli_real_escape_string($conn, $_GET['id']);

  $check = mysqli_query($conn, "SELECT * FROM `form` WHERE `id`='$id'");
  if (mysqli_num_rows($check) == 0) {
    $notFound = true;
  } else {
    $data = mysqli_fetch_assoc($check);
   

  }
} else {
 $notFound = true;
}


?>



<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>Private Medical</title>
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="http:assets/css/style1.css">
        <link rel="stylesheet" href="assets/css/style2.css">

        <style type="text/css">
            @CHARSET "UTF-8";

            .qr-container {
                padding: 15px;
            }

            .mi-print-button:hover {
                color: #fff;
            }

            .m-wrapper {
                background: #fff;
                margin: 10px auto;
                padding: 15px;
                box-shadow: 0 0 10px rgb(0 0 0 / 10%);
                border-radius: 5px;
                font-family: Arial, Helvetica, sans-serif;
            }

            .sub-title {
                border-bottom: 1px solid #e4e4e4;
                border-top: 1px solid #e4e4e4;
                margin-top: 30px;
                padding-top: 10px;
                padding-bottom: 10px;
            }

            .preview-label {
                display: inline-block;
                min-width: 120px;
            }

            .prv-value {
                display: inline-block;
                min-width: 100px;
            }



            .page-head {
                margin-bottom: 20px;
            }

            h2,
            .h2 {
                margin-bottom: 10px;
                font-size: 17px;
                font-weight: 400;
                /* font-family: serif; */
                color: #373434;
            }

            h3,
            .h3 {
                font-size: 21px;
            }

            h4 {
                font-weight: bold;
                font-size: 16px;
            }

            table {
                width: 50%;
                border-collapse: separate;
                border-spacing: 1px;
                background: #6bc1de bottom left repeat-x;
                color: #fff;
            }

            th {
                background: #d4e5e9;
                color: #000;
                text-align: center;
                font-size: 18px;
                font-family: math;
                padding-bottom: 15px;
            }

            td {
                background: #fff;
                color: #000;
                text-align: center;
                font-size: 15px;
                font-family: emoji;
                padding-bottom: 13px;
            }

            #userImg img {
                height: 116px;
            }

            .title1 {
                font-size: 13px;

            }




            @media (max-width: 768px) {
                .row4 {
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    -ms-flex-wrap: wrap;
                    flex-wrap: wrap;
                }

                .order-sm-3 {
                    -webkit-box-ordinal-group: 4;
                    -ms-flex-order: 3;
                    order: 3;
                }
            }
        </style>

        <style type="text/css">
            @CHARSET "UTF-8";

            .mi-print-button {
                position: absolute;
                right: 30px;
                background: #000;
                color: #fff;
            }

            /**::-webkit-scrollbar{*/
            /*    display: none !important;*/
            /*}*/
            *,
            #printContainer {
                -ms-overflow-style: none !important;
                /* IE and Edge */
                -webkit-overflow-scrolling: none !important;
                /* IE and Edge */
                scrollbar-width: none !important;
                /* Firefox */
            }

            /*.newUpperClass{*/
            /*    text-transform: uppercase !important;*/
            /*}*/

            @media print {
                #printContainer * {
                    visibility: visible;
                }

                .mi-print-button {
                    display: none !important;
                }

                /* #printContainer {
                    position: absolute;
                    left: 0;
                    top: 0;
                } */
            }
        </style>
    </head>

    <body data-new-gr-c-s-check-loaded="14.1106.0" data-gr-ext-installed="">
        <?php if(!$notFound){?>
        <div class="container m-wrapper">
            <div class="page-head">
                <div class="row">
                    <div class="col-sm-6  col-xs-6 text-left">
                        <h4 class="title1">Sultanate Of Oman <br> Ministry Of Health</h4>
                    </div>
                    <div class="col-sm-6 col-xs-6 text-right">
                        <h4>سلطنة عُمــان<br>وزارة الصحــة</h4>
                    </div>
                    <div class="col-sm-12 text-center">
                        <div><img id="logo" height="100" src="assets/images/logo.png">
                        </div>
                        <h2 style="font-size: 34px;">الكشف الطبي لغرض الإقامة</h2>
                        <h2>MEDICAL CHECK-UP FOR RESIDENCY</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-8 newUpperClass">
                    <h5 class="section-title">Registration</h5>
                    <div class="vme-panels border-top">
                        <div class="prvw-table-cont">
                            <div class="row ">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Registration Type</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" style="font-size: 14px; ">
                                                <?php echo ucwords($data['reg_type']) ?> </div>
                                            <div class="col-sm-4 col-xs-6 text-right">
                                                <strong style="font-size: 16px;">نوع التسجيل</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Registration No</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="regId" style="font-size: 14px;">
                                            <?php echo ucwords($data['reg_no']) ?> </div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">رقم التسجيل</strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h5 class="section-title">Candidate Details</h5>
                    <div class="vme-panels border-top">
                        <div class="prvw-table-cont">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Name</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="name" style="font-size: 16px;"><?php echo strtoupper($data['name']) ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">الإسم</strong></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Nationality</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="nationality" style="font-size: 16px;"><?php echo strtoupper($data['nationality']) ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">الجنسيـة</strong></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Passport No</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="passportNo" style="font-size: 16px;"><?php echo strtoupper($data['passport']) ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">رقم جواز السفر</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!--<div class="form-group">-->
                                    <!--    <div class="row row4">-->
                                    <!--        <div class="col-sm-4 col-xs-6"><strong>Sanad Ref No</strong></div>-->
                                    <!--        <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="sanadRefNo" style="font-size: 16px;">NLC110923348132</div>-->
                                    <!--        <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">الرقم المرجعي-->
                                    <!--                لسند</strong></div>-->
                                    <!--    </div>-->
                                    <!--</div>-->
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Sex</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="sex" style="font-size: 16px;"><?php echo strtoupper($data['sex']) ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">الجنس</strong></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Date Of Birth</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="dob" style="font-size: 16px;"><?php echo strtoupper($data['dob']) ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">تاريخ الميلاد</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!--<div class="form-group">-->
                                    <!--    <div class="row row4">-->
                                    <!--        <div class="col-sm-4 col-xs-6"><strong>Mobile No</strong></div>-->
                                    <!--        <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="gsm" style="font-size: 16px;">90792454</div>-->
                                    <!--        <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">رقم الهاتف</strong></div>-->
                                    <!--    </div>-->
                                    <!--</div>-->
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-3 col-xs-6"><strong>Sponsor</strong></div>
                                            <div class="col-sm-6 col-xs-12 text-center order-sm-3" id="sponsorName" style="font-size: 16px;"><?php echo strtoupper($data['sponsor']) ?></div>
                                            <div class="col-sm-3 col-xs-6 text-right"><strong style="font-size: 16px;">الكفيل</strong></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-3 col-xs-6"><strong>Category</strong></div>
                                            <div class="col-sm-6 col-xs-12 text-center order-sm-3" id="screeningType" style="font-size: 14px;"><?php echo strtoupper($data['category']) ?></div>
                                            <div class="col-sm-3 col-xs-6 text-right"><strong style="font-size: 16px;">الفئـة</strong></div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-12">
                        <h5 class="section-title">Medical Center</h5>
                        <div class="vme-panels border-top">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Validity of the Medical</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="examDate" style="font-size: 16px;"><?php echo $data['validity'] ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">صلاحية الفحص
                                                    الطبي</strong></div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>To</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="validTo" style="font-size: 16px;"><?php echo $data['toDate'] ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">إلى</strong></div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row row4">
                                            <div class="col-sm-4 col-xs-6"><strong>Medical Center</strong></div>
                                            <div class="col-sm-4 col-xs-12 text-center order-sm-3" id="estName" style="font-size: 16px;"><?php echo $data['medicalcentre'] ?></div>
                                            <div class="col-sm-4 col-xs-6 text-right"><strong style="font-size: 16px;">المركز الطبي</strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="col-sm-4">
                    <h5 class="section-title">Medical Status</h5>
                    <div class="vme-panels border-top custom-box" style="border: 2px solid #ff8c8c;">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="row">
                                    <div class="col-sm-6 col-xs-6"><strong>Medical Status</strong></div>
                                    <div class="col-sm-6 col-xs-6 text-right"><strong style="font-size: 16px;">الحالة الطبية</strong></div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12 text-center" id="medicalStatus" style="font-size: 31px;margin-top: 10px; margin-left: 14px;color: green;">
                                    FIT / لائق صحياً
                                    </div>
                                </div>

                                <div class="login-logo text-center"><img id="cdc-stamp" src="assets/images/aprove.png" style="height: 120px;margin-top: 25px;">
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>

<?php }?>

    </body>

</html

