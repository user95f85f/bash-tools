#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

open my ${f}, '>', 'out.html' or die $!;


say $f <<'EOF';
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Psychoanalyst tool1</title>
<script type="text/javascript" language="javascript">
function go(_s){
  return document.getElementById(_s);
}
function reset_all(){
  for(var i=1; i<=5; i++)
    go('txt' + i).value = '';
}
function create_report(){
  var out='';  //--instantiate.

  var static1 = [
    '',
    '>who are we talking to assuming they were beautiful?',
    '>what do you ask for?',
    '>what do you want?',
    '>what do you need?',
    '>what do you think you will get --- given what you are?'
  ];
  for(var i=1; i<=5; i++){
    out += static1[i] + "\n";
    out += go('txt' + i).value + ((i != 5) ? "\n\n" : "");
  }

  go('txtReportOutput').value = out;
}
</script>
</head>
<body>
<p>
<form>
who are we talking to assuming they were beautiful?<br />
<textarea id="txt1" rows="3" style="width:100%"></textarea><br />
what do you ask for?<br />
<textarea id="txt2" rows="3" style="width:100%"></textarea><br />
what do you want?<br />
<textarea id="txt3" rows="3" style="width:100%"></textarea><br />
what do you need?<br />
<textarea id="txt4" rows="3" style="width:100%"></textarea><br />
what do you think you will get &hyphen; given what you are?<br />
<textarea id="txt5" rows="3" style="width:100%"></textarea>
</form>
</p>

<p>
<button onclick="create_report()">Create report</button>
<input type="reset" onclick="reset_all()">
</p>

<p>
Report output:
<textarea rows="4" style="width:100%" id="txtReportOutput"></textarea>
</p>

</body>
</html>
EOF
close($f);
