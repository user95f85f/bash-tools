#!/usr/bin/perl

use warnings;
use strict;
use feature qw/say/;

open my $f, '>', 'out.html' or die $!;


say $f <<EOF;
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Ouija board</title>
</head>
<body>
who are we communicating with assuming they existed?<br />
<textarea id="txtWho" rows="3" style="width:100%"></textarea><br />
what is your question?<br />
<textarea id="txtWho" rows="3" style="width:100%"></textarea><br />
EOF
my $count = 0;
for my $letter('a' .. 'z'){
print $f <<EOF;
<button class="letterButton" style="font-size:3em" onclick="go('txtOut').value += '$letter'">$letter</button>
EOF
if(++$count % 9 == 0){
print $f '<br />';
}
}

say $f <<EOF;
<input type="text" id="txtOut" style="width:100%" />
</body></html>
EOF
close($f);
