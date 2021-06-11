<?php
include 'connect.php';
define('UPLPATH', 'img/');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>PWAP Home</title>
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
        <div class="container"> 
            <section class="znanost">
                <hr class="linija"/>
                <h1>Znanost</h1>
                <?php
                $query = "SELECT * FROM clanci WHERE arhiva=0 AND kategorija='znanost' LIMIT 3";
                $rezultat = mysqli_query($db, $query);
                $i=0;
                while($red = mysqli_fetch_array($rezultat)){
                    echo '<a href="clanak.php?id='.$red['id'].'">';
                    echo '<article class="col">';
                    echo '<img src="' . UPLPATH . $red['slika'] . '">';
                    echo '<h2>';
                    echo $red['naslov'];
                    echo '</h2></article>';
                    echo '</a>';
                }
                ?>
                <div class="clear"></div>
        </section>
        </div>
        <div class="container">
            <section>
                <hr class="linija"/>
                <h1>Glazba</h1>
                <?php
                $query = "SELECT * FROM clanci WHERE arhiva=0 AND kategorija='glazba' LIMIT 3";
                $rezultat = mysqli_query($db, $query);
                $i=0;
                while($red = mysqli_fetch_array($rezultat)){
                    echo '<a href="clanak.php?id='.$red['id'].'">';
                    echo '<article class="col">';
                    echo '<img src="' . UPLPATH . $red['slika'] . '">';
                    echo '<h2>';
                    echo $red['naslov'];
                    echo '</h2></article>';
                    echo '</a>';
                }
                ?>
                <div class="clear"></div>
            </section>
        </div>
    </main>
    <footer><hr><p>@ Le parisien</p></footer>
</body>
</html>
<?php
mysqli_close($db);
?>