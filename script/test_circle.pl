#!/usr/bin/env perl
use strict;
use warnings;
 
# use Circle;
# my $c = Circle->new(x => 4, y => 5, r => 3);

# print $c->x ."\n";
# print $c->y . "\n";
# print $c->r . "\n";
# print $c->area . "\n";
 
# $c->move_by(1,2);
# print $c->x . "\n";
# print $c->y . "\n";
# print $c->r . "\n"; 
# print $c->area . "\n";



my $p = Point3D->new(x => 2, y => 3, z => 4);
print $p->x."\n";
print $p->y."\n";
print $p->z."\n";
 
$p->move_by(5, 6, 7);
print $p->x."\n";
print $p->y."\n";

print $p->z."\n";