<!doctype html>
<html>
<head lang="en-US">
<meta charset="utf-8" />
<!--
php index.php > index.html
-->
<title>Programming Bounties</title>
<script>
var d = document;
function go(_s){return d.getElementById(_s);}
function btnGetBounties_clicked(){
go('preBounty').innerHTML = 
"create an HTML file that *\n" +
"create a C file that does *\n" +
"create a C++ file that does *\n" +
"create a python QuickStart HTML file that shows how to do *\n";
}
</script>
</head>
<body>
<header>
<h1>Programming Bounties</h1>
</header>

<section>
<article>
<p>What are you interested in?</p>
<?php
$szList = <<<EOF
C++
powerful python
solving problems with/in C
logic
philosophy
shamanism
EOF;
$arList = explode("\n", $szList);
shuffle($arList);
foreach($arList as $ele){
echo <<<EOF
<a href="#">$ele</a><br />
EOF;
}
?>
<button onclick="btnGetBounties_clicked()">btnGetBounties_clicked()</button>
</article>
<article>
<pre id="preBounty">

</pre>
</article>
</section>
</body>
</html>
