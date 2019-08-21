#!/usr/bin/perl

use warnings;
use strict;
use feature qw/say/;

open my $f, '>', 'a.html' or die $!;


say $f <<'EOF';
<!DOCTYPE html>
<html>
<head><title>meaning loss</title>
<script type="text/javascript" language="javascript">
var d = document;
function go(_s){
return d.getElementById(_s);
}
function body_onloaded(){go('txtMeaning').focus();}
function btnSubmit_clicked(){
go('divMeaning').innerHTML += 'what is the meaning of <strike>' + go('txtMeaning').value + '</strike><br />';
go('txtMeaning').value = '';
}
</script>
<style type="text/css">
body{font-size:1.2em}
</style>
</head>

<body onload="body_onloaded();">
<!--
what do old people mean?
-->
what is the meaning of <input type="text" value="" id="txtMeaning" onkeyup="if(event.keyCode == 13)btnSubmit_clicked()" /> <input type="button" value="submit" onclick="btnSubmit_clicked()" />
<div id="divMeaning"></div>
</body>
</html>
EOF
close($f);
