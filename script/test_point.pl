#!/usr/bin/env perl
use strict;
use warnings;
 
use Point;
use DateTime;

my $p = Point->new(
 	x    => 2,
 	y    => 3
);

print $p->x . "\n";

print $p->y . "\n";

print $p->coordinates . "\n";


$p->move_by(3, 4);

print $p->x . "\n";
print $p->y . "\n";

