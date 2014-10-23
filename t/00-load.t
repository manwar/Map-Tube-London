#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More tests => 1;

BEGIN {
    use_ok( 'Map::Tube::London' ) || print "Bail out!\n";
}

diag( "Testing Map::Tube::London $Map::Tube::London::VERSION, Perl $], $^X" );
