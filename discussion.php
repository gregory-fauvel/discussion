<?php
session_start();
date_default_timezone_set('Europe/Paris');
$connexion = mysqli_connect("localhost","root","","discussion");
if (isset($_SESSION ['login'])){
  if (isset ($_POST ['commenter'])){
   $requete3="SELECT * FROM utilisateurs WHERE login='".$_SESSION['login']."'";
   $query3 = mysqli_query( $connexion,$requete3);
    $resultat3= mysqli_fetch_all($query3);
    $requete2="INSERT INTO messages (message, id_utilisateur, date) VALUES ('".$_POST['message']."','".$resultat3[0][0]."','".date("Y-m-d H:i:s")."')";

         $query2 = mysqli_query( $connexion,$requete2);
         header('location: discussion.php');
  }

?>

<html>
<head>
  <link rel="stylesheet" type="text/css" href="module.css">
  <link rel="stylesheet" href="index.css" media="screen" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Trade+Winds&display=swap" rel="stylesheet">
  <title>Page connexion</title>
</head>
<body id="commentaire">
  <?php
      if (isset($_SESSION['login']) && ($_SESSION['login'] == true))
    {
    include 'barnavco.php';
    }
    else
    {
        include 'barnav.php';
    }
    ?>


<?php
if (isset($_SESSION['login'])==true){
?>
<div id="">
  <form action="discussion.php" method="post">
    <div>
        <input type="text" name="login">Votre login:</label></br>
        <br><label id="titrepost" for="msg"> Poster votre message max 50 caractere :</label></br>
        <textarea maxlength="50" id="msg" name="message"></textarea>
        <input id="validcomment" type="submit" name="commenter">
    </div>
</form>
</div>

<?php
}
?>
<?php
}
else
  echo "Vous n' êtes pas connecté";
 ?>

</body>
</html>
