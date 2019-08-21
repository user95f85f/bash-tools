#!/usr/bin/perl

use warnings;
use strict;
use feature qw/say/;

open my $f, '>', 'a.html' or die $!;


say $f <<'EOF';
<!DOCTYPE html>
<html>
<head><title>learning</title>
<script type="text/javascript" language="javascript">
var d = document;
function go(_s){
return d.getElementById(_s);
}
function body_onloaded(){}
function getColour(){
var r = Math.random();
if(r < 0.2)
  return 'pink';
if(r < 0.3)
  return 'aqua';
if(r < 0.43)
  return 'purple'
if(r < 0.52)
  return 'black';
if(r < 0.63)
  return 'white';
if(r < 0.71)
  return 'yellow';
if(r < 0.82)
  return 'orange';
if(r < 0.91)
  return 'green';
return 'blue';
}
function myRound(_f){
return Math.floor(_f*100) / 100.0;
}
function btnTime_clicked(){
if(Math.random() < 0.8)
go('preComputer').style.backgroundColor = getColour();
if(Math.random() < 0.39)
go('preBook').style.backgroundColor = getColour();
go('spanLearning').innerHTML = myRound(Math.random()*2.0+0.31);
}
</script>
<style type="text/css">
body{font-size:1.2em}
</style>
</head>

<body onload="body_onloaded();">
<pre>
You 3%wish you 99%could learn automatically.
As if you were inside of The Sims, playing the Sims,
playing Diablo 1.9999V, + 30%getting a deeper fundamental
universal understanding of 93%everything
<pre id="preComputer">
|------------------------|
|                        |
|     COMPUTER           |
|------------------------|
</pre>

||||| |||||

<pre id="preBook">
|-----|
|     |
| BOOK|
|-----|
</pre>

<input type="button" value="time+1" onclick="btnTime_clicked()" />
you are learning: +<span id="spanLearning">2</span>%
<div style="margin-left:30%">activity:
<input type="checkbox" /> C/C++/Ruby/Perl/Python/Bash
<input type="checkbox" /> HTML/CSS3/JavaScript
<input type="checkbox" /> GNU Assembly</div>
</pre>
</body>
</html>
EOF
close($f);
