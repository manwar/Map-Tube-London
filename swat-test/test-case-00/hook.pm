#!perl

use strict; use warnings;
use Map::Tube::London;
my $r;

my $map = Map::Tube::London->new();

eval { $map->get_shortest_route(); };
$r.="get_shortest_route() : $@";


eval { $map->get_shortest_route('Bond Street'); };
$r.="get_shortest_route('Bond Street') : $@";


eval { $map->get_shortest_route('XYZ', 'Bond Street'); };
$r.="get_shortest_route('XYZ','Bond Street') : $@";


eval { $map->get_shortest_route('Bond Street', 'XYZ'); };
$r.="get_shortest_route('Bond Street', 'XYZ') : $@";


set_response $r;

1;


