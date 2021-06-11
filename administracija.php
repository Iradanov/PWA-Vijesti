<?php
session_start();
include 'connect.php';
$uspjesnaPrijava = false;
$admin =false;
if(isset($_POST['login'])){
    
    $username=$_POST['username'];
    $password=$_POST['password'];
    $sql = "SELECT korisnicko_ime,lozinka,razina FROM korisnik WHERE korisnicko_ime = ?";
    $stmt=mysqli_stmt_init($db);
    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,'s',$username);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
    }    
    mysqli_stmt_bind_result($stmt,$user,$hash,$lvl);
    mysqli_stmt_fetch($stmt);
    if(password_verify($password,$hash)){
        $_SESSION['username']=$user;
        $_SESSION['level']=$lvl;
        $uspjesnaPrijava=true;
        $admin=$lvl;
    }else{
        echo'Ne postoji navedeni korinik.<br> Registriraj te se!';
    }
};
if(isset($_POST['delete'])){
    $id = $_POST['id'];
    $query = "DELETE FROM clanci WHERE id =$id";
    $rezultat = masqli_query($db,$query);
}
if(isset($_POST['update'])){
    $naslov = $_POST['naslov'];
    $sadrzaj = $_POST['sadrzaj'];
    $sazetak = $_POST['sazetak'];
    $kategorija = $_POST['kategorija'];
    if(isset($_POST['arhiva'])){
        $arhiva=1;
    }
    else{
        $arhiva=0;
    }
    $id = $_POST['id'];
    if($_FILES['photo']['error'] == UPLOAD_ERR_OK && $_FILES['photo']['name'] != "") {
        $slike = $_FILES['photo']['name'];
        $target = 'img/'.$slike;
        move_uploaded_file($_FILES['photo']["tmp_name"],$target);
        $query = "UPDATE clanci SET naslov='$naslov',sazetak='$sazetak',
                    tekst='$sadrzaj',slika='$slike',kategorija='$kategorija',arhiva='$arhiva' WHERE id=$id;";
    }
    else{
        $query = "UPDATE clanci SET naslov='$naslov',sazetak='$sazetak',
                    tekst='$sadrzaj',kategorija='$kategorija',arhiva='$arhiva' WHERE id=$id;";
    }
    
    $rezultat = mysqli_query($db, $query);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>PWAP Administracija</title>
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
            <?php
            if(($uspjesnaPrijava == true && $admin ==true) || (isset($_SESSION['username'])) && $_SESSION['level'] == 1){
    
            
            echo '<div  class="form-search">
            <form action="" method="POST">
                <label for="kategorija">Kategorija: </label>
                <select id="kategorija" name="kategorija">
                    <option value="" disable selected>Odabir kategorije</option>
                    <option value="znanost">Znanost</option>    
                    <option value="glazba">Glazba</option>
                    <option value="umjetnost">Umjetnost</option>
                    <option value="sport">Sport</option>
                    <option value="kultura">Kultura</option>
                </select>
                <input type="submit" id="search" value="Search"/>
            </form>
            </div>';
        
                if(isset($_POST['kategorija'])){
                    $kat = $_POST['kategorija'];
                    $query = "SELECT * FROM clanci WHERE kategorija = '".$kat."'";    
                }
                elseif(!isset($_POST['kategorija'])){
                    $query = "SELECT * FROM clanci";    
                }

                $rezultat = mysqli_query($db, $query);
                while($row = mysqli_fetch_array($rezultat)){  
                echo '<div class="sub-container">
                <form enctype="multipart/form-data" action="" method="POST">
                <div class="form-item">
                <label for="nasol">Naslov vjesti:</label>
                <div class="form-field">
                <input type="text" style="width:498px;" name="naslov" class="form-field-textual" value="'.$row['naslov'].'">
                </div> </div>
                <div class="form-item">
                <label for="sazetak">Kratki sadržaj vijesti (do 50 znakova):</label>
                <div class="form-field">
                <textarea name="sazetak" id="" cols="60" rows="15" class="form-field-textual">'.$row['sazetak'].'</textarea>
                </div> </div>
                <div class="form-item">
                <label for="sadrzaj">Sadržaj vijesti:</label>
                <div class="form-field">
                <textarea name="sadrzaj" id="" cols="60" rows="15" class="form-field-textual">'.$row['tekst'].'</textarea>
                </div> </div>
                <div class="form-item">
                <label for="photo">Slika:</label>
                <div class="form-field">
                <input type="file" class="input-text" id="photo" name="photo"/> <br>
                <img src="img/'. $row['slika'] . '" width=200px>
                </div> </div>
                <div class="form-item">
                <label for="category">Kategorija vijesti:</label>
                <div class="form-field">
                <select name="kategorija" id="kategorija" class="form-field-textual" value="'.$row['kategorija'].'">
                    <option value="'.$row['kategorija'].'" >'.$row['kategorija'].'</option>
                    <option value="Znanost">Znanost</option>
                    <option value="Umjetnost">Umjetnost</option>
                    <option value="Sport">Sport</option>
                    <option value="Kultura">Kultura</option>
                    <option value="Glazba">Glazba</option>
                </select> 
                </div> </div> 
                <div class="form-item"> 
                <label>Spremiti u arhivu:
                <div class="form-field">'; 
                if($row['arhiva'] == 0) { 
                    echo '<input type="checkbox" name="arhiva" id="arhiva"/> Arhiviraj?'; } 
                else { echo '<input type="checkbox" name="archive" id="archive" checked/> Arhiviraj?'; } 
                echo '</div> </label> </div> </div> 
                <div class="form-item"> 
                <input type="hidden" name="id" class="form-field-textual" value="'.$row['id'].'"> 
                <button type="reset" value="Poništi">Reset</button> 
                <button type="submit" id="update" name="update" value="Prihvati"> Izmjeni</button> 
                <button type="submit" id="delete" name="delete" value="Izbriši"> Izbriši</button> 
                </div> 
                </form>
                </div></br></br></br></br>';} 
            }else if($uspjesnaPrijava == true && $admin == false){
                echo '<p>Pozdrav '.$username.'! Uspješno ste prijavljeni, ali niste administrator.</p>';
            }else if(isset($_SESSION['username']) && $_SESSION['level'] == 0){
                echo '<p>Pozdrav '.$_SESSION['username'].'! Uspješno ste prijavljeni, ali niste administrator.</p>';
            }else if($uspjesnaPrijava == false){
                ?><div class="reg-container">
                    <h1>Log in</h1>
                    <form method="POST" action="">
                        <label for="username">Korisničko ime </label><br>
                        <input type="text" id="username" name="username"><br>
                        <span id="porukaKor"></span>
                        <label for="password">Lozinka </label><br>
                        <input type="password" id="password" name="password"><br>
                        <span id="porukaPass"></span>
                        <button type="submit" id="login" name="login">Log in</button><br>
                    </form>
                    <a href="registracija.php">Registracija</a>
                </div>
                <script type="text/javascript">
                document.getElementById('login').onclick = function (event){
                var slanje_forme = true;
                var poljeUsername= document.getElementById("username");
                var username= document.getElementById("username").value;
                if(username.length== 0) {
                    slanje_forme= false;
                    poljeUsername.style.border="1px dashed red";
                    document.getElementById("porukaKor").innerHTML="<br>Unesite korisničko ime!<br><br>";
                } else{
                    poljeUsername.style.border="1px solid green";
                    document.getElementById("porukaKor").innerHTML="";
                };
                var poljePass= document.getElementById("password");
                var pass= document.getElementById("password").value;
                if(pass.length== 0) {
                    slanje_forme= false;
                    poljePass.style.border="1px dashed red";
                    document.getElementById("porukaPass").innerHTML="<br>Unesit lozinku!<br><br>";
                } else{
                    poljePass.style.border="1px solid green";
                    document.getElementById("porukaPass").innerHTML="";
                };
                if(slanje_forme!= true) {event.preventDefault();};
                };
            </script>
                <?php
                
            }

        ?>
        </div>
    </main>
    <footer><hr><p>@ Le parisien</p></footer>

</body>
</html>
<?php
mysqli_close($db);
?>
