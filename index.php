<html>
<head>
	<link rel="stylesheet" type="text/css" href="discussion.css">
	<title>Page index</title>
</head>
<body id="bodyindex">
	<header>
	<?php
	session_start();
    if (isset($_SESSION['login']) && ($_SESSION['login'] == true))
    {
    include 'barnavco.php';
}
    else
    {
        include 'barnav.php';
    }

    ?>
	</header>

	<h1 id="titreindex">Bienvenue sur la Plateforme Gaming de l'école</h1>

</section>

<main>

	<div id="persogaucheindex">
</div>

<div id="persodroiteindex">
</div>



</main>

</body>
</html>
