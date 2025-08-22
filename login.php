<?php
session_start();

$lang = isset($_SESSION['lang']) ? $_SESSION['lang'] : 'en';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['language'])) {
    $lang = $_POST['language'];
    $_SESSION['lang'] = $lang;
}
if (isset($_SESSION['logged'])) {
    header('Location: dashboard.php'); // Redirect if already logged in
    exit;
}

// Set default language
$lang = isset($_SESSION['lang']) ? $_SESSION['lang'] : 'en';

// Change language if selected
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['language'])) {
    $lang = $_POST['language'];
    $_SESSION['lang'] = $lang;
}

// Translations
$translations = [
    'en' => [
        'login' => 'Login',
        'username' => 'Username',
        'password' => 'Password',
        'get_started' => 'Get Started',
        'translate_text' => 'Translate Text',
        'enter_text' => 'Enter text to translate',
        'invalid_credentials' => 'Invalid username or password.',
        'translated_text' => 'Translated Text:',
    ],
    'ar' => [
        'login' => 'تسجيل الدخول',
        'username' => 'اسم المستخدم',
        'password' => 'كلمة المرور',
        'get_started' => 'ابدأ',
        'translate_text' => 'ترجمة النص',
        'enter_text' => 'أدخل النص للترجمة',
        'invalid_credentials' => 'اسم المستخدم أو كلمة المرور غير صحيحة.',
        'translated_text' => 'النص المترجم:',
    ],
];

$selectedLanguage = $translations[$lang];
?>
<!doctype html>
<html lang="<?php echo $lang; ?>">
<head>
    <title><?php echo $selectedLanguage['login']; ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
    <div style="text-align: right; padding: 10px;">
        <form method="POST" style="display: inline;">
      <select name="language" onchange="this.form.submit();" style="padding: 5px; border-radius: 8px; background-color: #8d448b; border: 1px solid #ccc; color: #f1f1f1;">
        <option value="en" <?php echo ($lang === 'en') ? 'selected' : ''; ?>>English</option>
        <option value="ar" <?php echo ($lang === 'ar') ? 'selected' : ''; ?>>العربية</option>
      </select>
    </form>
    </div>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <div class="login-wrap p-4 p-md-5">
                        <h3 class="text-center mb-4"><?php echo $selectedLanguage['login']; ?></h3>
                        <form action="login-process.php" method="POST">
                            <?php if (isset($_SESSION['error'])): ?>
                                <p style="color:red;"><?php echo $selectedLanguage['invalid_credentials']; ?></p>
                                <?php unset($_SESSION['error']); ?>
                            <?php endif; ?>
                            <div class="form-group">
                                <input type="text" class="form-control rounded-left" name="username" placeholder="<?php echo $selectedLanguage['username']; ?>" required>
                            </div>
                            <div class="form-group d-flex">
                                <input type="password" class="form-control rounded-left" name="pass" placeholder="<?php echo $selectedLanguage['password']; ?>" required>
                            </div>
                            <div class="form-group">
                                <button type="submit" name="submit" class="btn btn-primary rounded submit p-3 px-5"><?php echo $selectedLanguage['get_started']; ?></button>
                            </div>
                        </form>
                        <!-- <h3 class="text-center mb-4"><?php echo $selectedLanguage['translate_text']; ?></h3> -->
                        <!-- <form action="translate.php" method="POST"> -->
                            <!-- <div class="form-group">
                                <textarea name="text" rows="3" class="form-control" placeholder="<?php echo $selectedLanguage['enter_text']; ?>" required></textarea>
                            </div> -->
                            <!-- <div class="form-group">
                                <button  class="btn btn-success rounded submit p-3 px-5">Translate</button>
                            </div> -->
                        <!-- </form> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
