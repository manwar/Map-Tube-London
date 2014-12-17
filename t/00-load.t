#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More tests => 6;

BEGIN {
    use_ok('Map::Tube::London')                        || print "Bail out!\n";
    use_ok('Map::Tube::London::Line::Bakerloo')        || print "Bail out!\n";
    use_ok('Map::Tube::London::Line::Central')         || print "Bail out!\n";
    use_ok('Map::Tube::London::Line::Circle')          || print "Bail out!\n";
    use_ok('Map::Tube::London::Line::District')        || print "Bail out!\n";
    use_ok('Map::Tube::London::Line::HammersmithCity') || print "Bail out!\n";
}

diag( "Testing Map::Tube::London $Map::Tube::London::VERSION, Perl $], $^X" );
