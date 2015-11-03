#!/usr/bin/env perl
use strict;
use warnings;
 
use Person;
use v5.10;

my $teacher = Person->new(name => 'Foo');
$teacher->age(20);
say $teacher->name;
say $teacher->age;

my $teacher2 = Person->new(name => 'FooBar');
$teacher2->age(19.99999999);
say $teacher2->name;
say $teacher2->age;
sleep 5;
say $teacher2->age;
 
my $student = Person->new(age => 18, name => 'Bar');
# say $student->age;
# say $student->name;