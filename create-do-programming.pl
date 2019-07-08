#!/usr/bin/perl

use warnings;
use strict;
use feature qw/say/;

open my $f, '>', 'out.html' or die $!;


say $f <<'EOF';
<!DOCTYPE html>
<html lang="en">
<head><meta charset="utf-8" />
<title>learning</title>
<script>
var d = document;
function go(_s){
return d.getElementById(_s);
}
function body_onloaded(){}
var i=1;
</script>
<style type="text/css">
body{font-size:1.2em}
</style>
</head>

<body onload="body_onloaded();">
<table>
<tr><td id="b">
<button onclick="go('b').innerHTML='be a python guru'">be a python guru</button><br />
<button onclick="go('b').innerHTML='be a C++ guru'">be a C++ guru</button><br />
<button onclick="go('b').innerHTML='be a C guru'">be a C guru</button><br />
<button onclick="go('b').innerHTML='be an HTML5/HTML guru'">be an HTML5/HTML guru</button><br />
</td><td>
<a href="#" onclick="this.innerHTML = 'do assignment ' + ++i;return false" id="a">do assignment 1</a>
</td></tr>
</table>
</body>
</html>
EOF
close($f);
