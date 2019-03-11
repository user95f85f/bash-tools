#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

open my ${f}, '>', 'out.html';

print $f <<'EOF';
<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<title>psychoanalyzism game1</title>
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
var out='<button>kill monster any way, shape, form, or how</button>' + "\n";
out+='<button>get loot any way, shape, form, or how</button>' + "\n";
out+='<button>get points any way, shape, form, or how</button>' + "\n";
out+='<button>get gold/silver/copper/gil/coins any way, shape, form, or how</button>' + "\n";
out+='<button>get better items any way, shape, form, or how</button>' + "\n";
out+='<button>kill a player any way, shape, form, or how</button>';
out+='<br /><br />notes:<br /><textarea style="width:100%" rows="19"></textarea>';
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
EOF
close($f);
