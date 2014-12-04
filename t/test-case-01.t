use strict; use warnings;
use Test::More tests => 21;
use Map::Tube::London;

my $tube = Map::Tube::London->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is_deeply($tube->get_shortest_route($from, $to), _expected_route($expected), $description);
}

sub _expected_route {
    my ($route) = @_;
    my $routes  = [];
    foreach my $name (split /\,/,$route) {
        push @$routes, $tube->get_node_by_name($name);
    }
    return Map::Tube::Route->new({ nodes => $routes });
}

__DATA__
Route 1|Wembley Central|Bond Street|Wembley Central,Stonebridge Park,Harlesden,Willesdon Junction,Shepherd's Bush,Holland Park,Notting Hill Gate,Queensway,Lancaster Gate,Marble Arch,Bond Street
Route 2|Bond Street|Euston|Bond Street,Oxford Circus,Warren Street,Euston
Route 3|White City|Victoria|White City,Shepherd's Bush,Kensington (Olympia),Earl's Court,South Kensington,Sloane Square,Victoria
Route 4|Temple|Farringdon|Temple,Embankment,Waterloo,Bank,Moorgate,Barbican,Farringdon
Route 5|Turnham Green|Whitechapel|Turnham Green,Hammersmith,Barons Court,West Kensington,Earl's Court,South Kensington,Sloane Square,Victoria,Green Park,Westminster,Waterloo,Bank,Shadwell,Whitechapel
Route 6|Goldhawk Road|Wembley Central|Goldhawk Road,Shepherd's Bush Market,Wood Lane,White City,Shepherd's Bush,Willesdon Junction,Harlesden,Stonebridge Park,Wembley Central
Route 7|Wembley Central|Marleybone|Wembley Central,Stonebridge Park,Harlesden,Willesdon Junction,Shepherd's Bush,Holland Park,Notting Hill Gate,Bayswater,Edgware Road,Marleybone
Route 8|Baker Street|Neasden|Baker Street,Finchley Road,Wembley Park,Neasden
Route 9|Baker Street|Preston Road|Baker Street,Finchley Road,Wembley Park,Preston Road
Route 10|Oval|Euston|Oval,Kennington,Waterloo,Westminster,Green Park,Oxford Circus,Warren Street,Euston
Route 11|South Ealing|Alperton|South Ealing,Acton Town,Ealing Common,North Ealing,Park Royal,Alperton
Route 12|Bank|Westminster|Bank,Waterloo,Westminster
Route 13|Westferry|Cannon Street|Westferry,Limehouse,Shadwell,Monument,Cannon Street
Route 14|Hoxton|Gospel Oak|Hoxton,Haggerston,Dalston Junction,Dalston Kingsland,Canonbury,Highbury & Islington,Caledonian Road & Barnsbury,Camden Road,Kentish Town West,Gospel Oak
Route 15|Baker Street|North Harrow|Baker Street,Finchley Road,Harrow-on-the-Hill,North Harrow
Route 16|Baker Street|Croxley|Baker Street,Finchley Road,Harrow-on-the-Hill,Moor Park,Croxley
Route 17|Westferry|Cannon      Street|Westferry,Limehouse,Shadwell,Monument,Cannon Street
Route 18|   Westferry|Cannon      Street|Westferry,Limehouse,Shadwell,Monument,Cannon Street
Route 19|Westferry    |Cannon      Street|Westferry,Limehouse,Shadwell,Monument,Cannon Street
Route 20|Westferry    |   Cannon      Street    |Westferry,Limehouse,Shadwell,Monument,Cannon Street
Route 20|westferry    |   Cannon      Street    |Westferry,Limehouse,Shadwell,Monument,Cannon Street
