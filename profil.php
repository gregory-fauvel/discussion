
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Trade+Winds&display=swap" rel="stylesheet">
        <meta sharset="utf-8">
        <link rel="stylesheet" href= "discussion.css">
    </head>
      
<?php
session_start();
if (isset ($_SESSION['login']) && !empty($_SESSION['login'])){
$connexion = mysqli_connect("localhost","root","","discussion");
$requete = "SELECT * FROM utilisateurs WHERE login='".$_SESSION['login']."'";
$req = mysqli_query($connexion, $requete);
$data = mysqli_fetch_assoc($req);


?>

     <body>

                    <?php
                if ($_SESSION['login'] == true)
                {
                include 'barnavco.php';
                }
                else
                {
                    include 'barnav.php';
                }
                ?>

        <main id="modifprofil">
                  <img id="nuage" src="goku_nuage.png">

                    <div id="profilform">
                        <h1 id="h1">Modifiez votre profil</h1><br>
                        <form method="POST" action="profil.php">
                        <label class="formprofil">Nouveaux login</label>
                        <input id="validcomment"type="text" value="<?php echo $data['login']?>" placeholder="Nouvel identifiant" name="login"></input><br><br/>
                        <label class="formprofil" >Nouveau mot de passe:</label>
                        <input id="validcomment" type="password" value="<?php echo $data['password']?>" placeholder="nouveau mot de passe" name="mdp"></input><br><br/>
                        <input id="butprof" type="submit" name="Modifier" value ="Valider">
                        </form><br>
                    </div>
                <?php

                if (isset($_POST['Modifier']))
                {

                    $login = $_POST['login'];
                    $passe = password_hash($_POST["mdp"], PASSWORD_DEFAULT, array('cost' => 12));

                    $requete2 = "UPDATE utilisateurs SET login = '$login', password = '$passe' WHERE login = '".$_SESSION['login']."'"; 
                    $query2=mysqli_query($connexion,$requete2);
                    // $query= mysqli_query($connexion,$requete2);

                    echo "modification effectuer";
                }
                ?>
        
                <?php
                }
                else {
                    ?>
                    <body class="style2">
                         <?php
                    echo "<p id=\"pprofil \">Pour acceder a la page il vous faut vous connecter!!</p> ";
                    ?>
                    <form id="profil-deco" action="index.php">
                        <input type="submit" name="bouton">
                       
                        <?php
                        }
                        ?>
                </main>
         </body>
</html>


