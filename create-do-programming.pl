#!/usr/bin/perl

use warnings;
use strict;
use feature qw/say/;
use List::Util qw/shuffle/;

open my $f, '>', 'a.html' or die $!;

my $t =<<'EOF2';
<button onclick="go('b').innerHTML=this.innerHTML">be a python guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a restricted-python guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a C++ guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a C guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a C expert guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be an HTML5/HTML guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a Go guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a Unity3d guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a web perl guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be a node.js guru</button><br />
<button onclick="go('b').innerHTML=this.innerHTML">be an assembly expert guru</button><br />
EOF2
my $x = join("\n", shuffle(split /\n/, $t));


say $f <<'EOF3';
<!DOCTYPE html>
<html lang="en">
<head><meta charset="utf-8" />
<title>do programming</title>
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
EOF3
say $f $x;
say $f <<'EOF4';
</td><td>
<a href="#" onclick="this.innerHTML = 'do assignment ' + ++i;return false">do assignment 1</a>
</td></tr>
</table>
</body>
</html>
EOF4
close($f);
