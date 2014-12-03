use strict; use warnings;
use Test::More tests => 21;
use Map::Tube::London;

my $map = Map::Tube::London->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    my $route = $map->get_shortest_route($from, $to);
    is($route, $expected, $description);
}

__DATA__
Route 1|Wembley Central|Bond Street|Wembley Central (Overground,Bakerloo), Stonebridge Park (Overground,Bakerloo), Harlesden (Overground,Bakerloo), Willesdon Junction (Overground,Bakerloo), Shepherd's Bush (Central,Overground), Holland Park (Central), Notting Hill Gate (Central,Circle,District), Queensway (Central), Lancaster Gate (Central), Marble Arch (Central), Bond Street (Central,Jubilee)
Route 2|Bond Street|Euston|Bond Street (Central,Jubilee), Oxford Circus (Central,Victoria,Bakerloo), Warren Street (Northern,Victoria), Euston (Northern,Overground,Victoria)
Route 3|White City|Victoria|White City (Central), Shepherd's Bush (Central,Overground), Kensington (Olympia) (District,Overground), Earl's Court (District), Gloucester Road (Circle,District), South Kensington (Circle,District), Sloane Square (Circle,District), Victoria (Circle,District,Victoria)
Route 4|Temple|Farringdon|Temple (Circle,District), Embankment (Circle,District,Northern,Bakerloo), Waterloo (Northern,Bakerloo,Jubilee,Waterloo & City), Bank (Central,Northern,Waterloo & City), Moorgate (Circle,Northern,Hammersmith & City,Metropolitan), Barbican (Circle,Hammersmith & City,Metropolitan), Farringdon (Circle,Hammersmith & City,Metropolitan)
Route 5|Turnham Green|Whitechapel|Turnham Green (District,Piccadilly), Hammersmith (Circle,District,Hammersmith & City,Piccadilly), Barons Court (District,Piccadilly), West Kensington (District), Earl's Court (District), Gloucester Road (Circle,District), South Kensington (Circle,District), Sloane Square (Circle,District), Victoria (Circle,District,Victoria), Green Park (Victoria,Jubilee,Piccadilly), Westminster (Circle,District,Jubilee), Waterloo (Northern,Bakerloo,Jubilee,Waterloo & City), Bank (Central,Northern,Waterloo & City), Liverpool Street (Central,Circle,Hammersmith & City,Metropolitan), Bethnal Green (Central), Mile End (Central,District,Hammersmith & City), Stepney Green (District,Hammersmith & City), Whitechapel (District,Hammersmith & City,Overground)
Route 6|Goldhawk Road|Wembley Central|Goldhawk Road (Circle,Hammersmith & City), Shepherd's Bush Market (Circle,Hammersmith & City), Wood Lane (Circle,Hammersmith & City), White City (Central), Shepherd's Bush (Central,Overground), Willesdon Junction (Overground,Bakerloo), Harlesden (Overground,Bakerloo), Stonebridge Park (Overground,Bakerloo), Wembley Central (Overground,Bakerloo)
Route 7|Wembley Central|Marleybone|Wembley Central (Overground,Bakerloo), Stonebridge Park (Overground,Bakerloo), Harlesden (Overground,Bakerloo), Willesdon Junction (Overground,Bakerloo), Shepherd's Bush (Central,Overground), Holland Park (Central), Notting Hill Gate (Central,Circle,District), Bayswater (Circle,District), Edgware Road (Circle,District,Hammersmith & City,Bakerloo), Marleybone (Bakerloo)
Route 8|Baker Street|Neasden|Baker Street (Circle,Hammersmith & City,Bakerloo,Metropolitan,Jubilee), Finchley Road (Metropolitan,Jubilee), Wembley Park (Metropolitan,Jubilee), Neasden (Jubilee)
Route 9|Baker Street|Preston Road|Baker Street (Circle,Hammersmith & City,Bakerloo,Metropolitan,Jubilee), Finchley Road (Metropolitan,Jubilee), Wembley Park (Metropolitan,Jubilee), Preston Road (Metropolitan)
Route 10|Oval|Euston|Oval (Northern), Kennington (Northern), Waterloo (Northern,Bakerloo,Jubilee,Waterloo & City), Westminster (Circle,District,Jubilee), Green Park (Victoria,Jubilee,Piccadilly), Oxford Circus (Central,Victoria,Bakerloo), Warren Street (Northern,Victoria), Euston (Northern,Overground,Victoria)
Route 11|South Ealing|Alperton|South Ealing (Piccadilly), Acton Town (District,Piccadilly), Ealing Common (District,Piccadilly), North Ealing (Piccadilly), Park Royal (Piccadilly), Alperton (Piccadilly)
Route 12|Bank|Westminster|Bank (Central,Northern,Waterloo & City), Waterloo (Northern,Bakerloo,Jubilee,Waterloo & City), Westminster (Circle,District,Jubilee)
Route 13|Westferry|Cannon Street|Westferry (DLR), Limehouse (DLR), Shadwell (DLR,Overground), Monument (DLR,Circle,District), Cannon Street (Circle,District)
Route 14|Hoxton|Gospel Oak|Hoxton (Overground), Haggerston (Overground), Dalston Junction (Overground), Dalston Kingsland (Overground), Canonbury (Overground), Highbury & Islington (Overground,Victoria), Caledonian Road & Barnsbury (Overground), Camden Road (Overground), Kentish Town West (Overground), Gospel Oak (Overground)
Route 15|Baker Street|North Harrow|Baker Street (Circle,Hammersmith & City,Bakerloo,Metropolitan,Jubilee), Finchley Road (Metropolitan,Jubilee), Harrow-on-the-Hill (Metropolitan), North Harrow (Metropolitan)
Route 16|Baker Street|Croxley|Baker Street (Circle,Hammersmith & City,Bakerloo,Metropolitan,Jubilee), Finchley Road (Metropolitan,Jubilee), Harrow-on-the-Hill (Metropolitan), Moor Park (Metropolitan), Croxley (Metropolitan)
Route 17|Westferry|Cannon      Street|Westferry (DLR), Limehouse (DLR), Shadwell (DLR,Overground), Monument (DLR,Circle,District), Cannon Street (Circle,District)
Route 18|   Westferry|Cannon      Street|Westferry (DLR), Limehouse (DLR), Shadwell (DLR,Overground), Monument (DLR,Circle,District), Cannon Street (Circle,District)
Route 19|Westferry    |Cannon      Street|Westferry (DLR), Limehouse (DLR), Shadwell (DLR,Overground), Monument (DLR,Circle,District), Cannon Street (Circle,District)
Route 20|Westferry    |   Cannon      Street    |Westferry (DLR), Limehouse (DLR), Shadwell (DLR,Overground), Monument (DLR,Circle,District), Cannon Street (Circle,District)
Route 20|westferry    |   Cannon      Street    |Westferry (DLR), Limehouse (DLR), Shadwell (DLR,Overground), Monument (DLR,Circle,District), Cannon Street (Circle,District)
