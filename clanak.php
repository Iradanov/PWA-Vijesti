<?php
include 'connect.php';
$query = "SELECT * FROM clanci WHERE id = ".$_GET['id'].";";
$rezultat = mysqli_query($db, $query);
$clanak = mysqli_fetch_array($rezultat);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>PWAP <?php echo ucfirst($clanak['naslov']);?></title>
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
            <h1><?php echo $clanak['naslov'];?></h1>
            <br>
            <small class="datum"><?php echo $clanak['datum'];?></small>
        </div>
        <img src="img/<?php echo $clanak['slika'];?>" alt=""/>
        <br><br>
        <p class="summary"><?php echo $clanak['sazetak'];?></p>       
        <br>
        <p><?php echo $clanak['tekst'];?></p></br>
        
    </div>
    </main>
    <footer><hr><p>@ Le parisien</p></footer>
</body>
</html>