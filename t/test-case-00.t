#!/usr/bin/perl

use strict; use warnings;
use Test::More tests => 4;
use Map::Tube::London;

my $map = Map::Tube::London->new();

eval { $map->get_shortest_route(); };
like($@, qr/ERROR: Missing Station Name/);

eval { $map->get_shortest_route('Bond Street'); };
like($@, qr/ERROR: Missing Station Name/);

eval { $map->get_shortest_route('XYZ', 'Bond Street'); };
like($@, qr/ERROR: Invalid Station Name/);

eval { $map->get_shortest_route('Bond Street', 'XYZ'); };
like($@, qr/ERROR: Invalid Station Name/);
