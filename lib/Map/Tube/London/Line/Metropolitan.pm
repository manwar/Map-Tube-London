package Map::Tube::London::Line::Metropolitan;

$Map::Tube::London::Line::Metropolitan::VERSION   = '1.36';
$Map::Tube::London::Line::Metropolitan::AUTHORITY = 'cpan:MANWAR';

use 5.006;
use strict; use warnings;

=head1 NAME

Map::Tube::London::Line::Metropolitan - London Tube Map: Metropolitan Line.

=head1 VERSION

Version 1.36

=head1 DESCRIPTION

London Tube Map: Metropolitan Line.

    +--------------------------+-------------------------------------------------+
    | Station Name             | Connected To                                    |
    +--------------------------+-------------------------------------------------+
    | Aldgate                  | Liverpool Street                                |
    | Liverpool Street         | Aldgate, Moorgate                               |
    | Moorgate                 | Liverpool Street, Barbican                      |
    | Barbican                 | Moorgate, Farringdon                            |
    | Farringdon               | Barbican, King's Cross St. Pancras              |
    | King's Cross St. Pancras | Farringdon, Euston Square                       |
    | Euston Square            | King's Cross St. Pancras, Great Portland Street |
    | Great Portland Street    | Euston Square, Baker Street                     |
    | Baker Street             | Great Portland Street, Finchley Road            |
    | Finchley Road            | Baker Street, Wembley Park                      |
    | Wembley Park             | Finchley Road, Preston Road                     |
    | Preston Road             | Wembley Park, Northwick Park                    |
    | Northwick Park           | Preston Road, Harrow-on-the-Hill                |
    | Harrow-on-the-Hill       | Norhtwick Park, West Harrow                     |
    | West Harrow              | Harrow-on-the-Hill, Rayners Lane                |
    | Rayners Lane             | West Harrow, Eastcote                           |
    | Eastcote                 | Rayners Lane, Ruislip Manor                     |
    | Ruislip Manor            | Eastcode, Ruislip                               |
    | Ruislip                  | Ruislip Manor, Ickenham                         |
    | Ickenham                 | Ruislip, Hillingdon                             |
    | Hillingdon               | Ickenham, Uxbridge                              |
    | Uxbridge                 | Hillingdon, North Harrow                        |
    | North Harrow             | Uxbridge, Pinner                                |
    | Pinner                   | North Harrow, Northwood Hills                   |
    | Northwood Hills          | Pinner, Northwood                               |
    | Northwood                | Northwood Hills, Moor Park                      |
    | Moor Park                | Northwood, Croxley                              |
    | Croxley                  | Moor Park, Watford                              |
    | Watford                  | Croxley, Rickmansworth                          |
    | Rickmansworth            | Watford, Chorleywood                            |
    | Chorleywood              | Rickmansworth, Chalfont & Latimer               |
    | Chalfont & Latimer       | Chorleywood, Chesham                            |
    | Chesham                  | Chalfont & Latimer, Amersham                    |
    | Amersham                 | Chesham                                         |
    +--------------------------+-------------------------------------------------+

=head1 NOTE

=over 2

=item * The station "Aldgate" is also part of
          L<Circle Line|Map::Tube::London::Line::Circle>

=item * The station "Baker Street" is also part of
          L<Bakerloo Line|Map::Tube::London::Line::Bakerloo>
        | L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Jubilee Line|Map::Tube::London::Line::Jubilee>

=item * The station "Barbican" is also part of
          L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Eastcote" is also part of
          L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "Euston Square" is also part of
          L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Farringdon" is also part of
          L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Finchley Road" is also part of
          L<Jubilee Line|Map::Tube::London::Line::Jubilee>

=item * The station "Great Portland Street" is also part of
          L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Hillingdon" is also part of
          L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "Ickenham" is also part of
          L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "King's Cross St. Pancras" is also part of
          L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Northern Line|Map::Tube::London::Line::Northern>
        | L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>
        | L<Victoria Line|Map::Tube::London::Line::Victoria>

=item * The station "Liverpool Street" is also part of
          L<Central Line|Map::Tube::London::Line::Central>
        | L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Moorgate" is also part of
          L<Circle Line|Map::Tube::London::Line::Circle>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Northern Line|Map::Tube::London::Line::Northern>

=item * The station "Rayners Lane" is also part of
          L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "Ruislip" is also part of
          L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "Ruislip Manor" is also part of
          L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "Uxbridge" is also part of
          L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "Wembley Park" is also part of
          L<Jubilee Line|Map::Tube::London::Line::Jubilee>

=back

=head1 MAP

London Tube Map: L<Metropoiltan Line|https://raw.githubusercontent.com/manwar/Map-Tube-London/master/maps/Metropolitan.png>
map generated by plugin L<Map::Tube::Plugin::Graph>.

=begin html

<a href = "https://raw.githubusercontent.com/manwar/Map-Tube-London/master/maps/Metropolitan.png">
<img src    = "https://raw.githubusercontent.com/manwar/Map-Tube-London/master/maps/Metropolitan.png"
     alt    = "LondonM Tube Map: Metropolitan Line"
     width  = "500px"
     height = "500px"/>
</a>

=end html

=head1 AUTHOR

Mohammad Sajid Anwar, C<< <mohammad.anwar at yahoo.com> >>

=head1 REPOSITORY

L<https://github.com/manwar/Map-Tube-London>

=head1 BUGS

Please report any bugs or feature requests through the web interface at L<https://github.com/manwar/Map-Tube-London/issues>.
I will  be notified and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::London::Line::Metropolitan

You can also look for information at:

=over 4

=item * BUG Report

L<https://github.com/manwar/Map-Tube-London/issues>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Map-Tube-London>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Map-Tube-London>

=item * Search MetaCPAN

L<https://metacpan.org/dist/Map-Tube-London>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2014 - 2024 Mohammad Sajid Anwar.

This program  is  free software; you can redistribute it and / or modify it under
the  terms  of the the Artistic License (2.0). You may  obtain a copy of the full
license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any  use,  modification, and distribution of the Standard or Modified Versions is
governed by this Artistic License.By using, modifying or distributing the Package,
you accept this license. Do not use, modify, or distribute the Package, if you do
not accept this license.

If your Modified Version has been derived from a Modified Version made by someone
other than you,you are nevertheless required to ensure that your Modified Version
 complies with the requirements of this license.

This  license  does  not grant you the right to use any trademark,  service mark,
tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge patent license
to make,  have made, use,  offer to sell, sell, import and otherwise transfer the
Package with respect to any patent claims licensable by the Copyright Holder that
are  necessarily  infringed  by  the  Package. If you institute patent litigation
(including  a  cross-claim  or  counterclaim) against any party alleging that the
Package constitutes direct or contributory patent infringement,then this Artistic
License to you shall terminate on the date that such litigation is filed.

Disclaimer  of  Warranty:  THE  PACKAGE  IS  PROVIDED BY THE COPYRIGHT HOLDER AND
CONTRIBUTORS  "AS IS'  AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED
WARRANTIES    OF   MERCHANTABILITY,   FITNESS   FOR   A   PARTICULAR  PURPOSE, OR
NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS
REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL,  OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE
OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

1; # End of Map::Tube::London::Line::Metropolitan
