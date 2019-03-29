#!/usr/bin/perl

use warnings;
use strict;
use List::Util qw/shuffle/;
use feature 'say';

open my ${f}, '>', 'out.html';

my @out = (
'kill monster',
'get loot',
'get points',
'get new skills',
'get health points',
'get stronger attacks',
'get gold/silver/copper/gil/coins',
'get better items',
'kill a player'
);
@out = shuffle(@out);
my $out2 = '';
foreach my $i (@out){
  $out2 = $out2 . 'out+=\'<button>' . $i . ' any way, shape, form, or how</button>\' + "\n";';
}

print $f <<'EOF1';
<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<title>psych-game1</title>
<script language="javascript" type="text/javascript">
var experience = 0;
var gil = 0;

function go(_s){
return document.getElementById(_s);
}
function game_clicked(_letter){
go('txtOut').value += _letter;
}
function btnPlay_clicked(){
var out='';
EOF1

say $f $out2;

print $f <<'EOF2';
out+='<button>quit</button>' + "\n";
out+='<br />notes:<br /><textarea style="width:100%" rows="19"></textarea>';
go('divGame').innerHTML = out;
}
function body_loaded(){

}
</script>
<style type="text/css">
#divGame{margin:5px;white-space:pre-line}
</style>
</head>


<body onload="body_loaded()">
<div id="divGame"><input type="button" value="download and install and play game" onclick="btnPlay_clicked()" />
</div>
</body>
</html>
EOF2
close($f);
