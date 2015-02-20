#!perl -T

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;
use Map::Tube::London;

eval "use Test::Map::Tube";
plan skip_all => "Skipping, required Test::Map::Tube" if $@;

ok_map(Map::Tube::London->new);
