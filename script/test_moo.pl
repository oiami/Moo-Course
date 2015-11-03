#!/usr/bin/env perl
use strict;
use warnings;
 
use Person;
use DateTime;

my $mother = Person->new(
 	name => 'Foo Bar',
 	age  => 50
);

my $student = Person->new(
	name => 'Foo', 
	age => 15, 
	height => '156',
	birthdate => DateTime->new(
		day   => 3,
		month => 12,
		year  => 1889
	),
	mother => $mother
);

print "name: ".$student->name;

$student->name('Bar'); #Set new value -- should not work if name is Read only

print "\nnew name: ".$student->name;

print "\n".$student->has_name ? 'has name' : 'no name';

print "\n".$student->name;

$student->clear_name;

print "\n".$student->has_name ? 'has name' : 'no name';

print "\n". defined $student->name ? 'defined name' : 'not defined name';

print "\nage: ".$student->age;

# $student->age('young');

# $student->{age} = 'young';

print "\nheight: " .$student->height;

print "\nbirthdate: ".$student->birthdate->dmy;

print "\nmother name: ".$student->mother->name;

print "\nmother height: ".$student->mother->height;

print "\nchildren: ".$student->children;