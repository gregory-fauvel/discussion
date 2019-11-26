<html>
<head>
	<link rel="stylesheet" type="text/css" href="module.css">
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
	
	<h1 id="titreindex">Bienvenue dans le site  de Discussion</h1>

</section>
	
</body>
</html>