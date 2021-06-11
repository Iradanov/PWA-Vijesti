<?php
include 'unos.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>PWAP <?php echo ucfirst($naslov);?></title>
</head>
<body>
    <header>
        <div class="logo-red"><img id="logo" src="img/Logo_LeParisien.png" alt=""/></div>
        <hr>
        <nav class="nav">
            <ul>
            <li><a href="index.php">HOME</a></li>
                <li><a href="kategorija.php?kategorija=znanost">ZNANOST</a></li>
                <li><a href="kategorija.php?kategorija=glazba">GLAZBA</a></li>
                <li><a href="administracija.php">ADMINISTRCIJA</a></li>
                <li><a href="unos.html">UNOS VIJESTI</a></li>
            </ul>
        </nav>  
    </header>
    <main class="cont-main">
    <div class="content-container">
        <div class="sub_container">
            <h1><?php echo $naslov; ?></h1>
            <br>
            <small class="datum"><?php echo $kategorija; ?></small>
        </div><?php 
        echo "<img src='img/$slike' alt=''>";?>
        <br>
        <p><?php echo $sazetak; ?></p>
        <br>
        <p>
        <?php echo $sadrzaj; ?>
        </p>
        <br>
    </div>
    </main>
    <footer><hr><p>@ Le parisien</p></footer>
</body>
</html>