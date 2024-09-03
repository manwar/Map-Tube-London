package Map::Tube::London::Line::Circle;

$Map::Tube::London::Line::Circle::VERSION   = '1.39';
$Map::Tube::London::Line::Circle::AUTHORITY = 'cpan:MANWAR';

use 5.006;
use strict; use warnings;

=head1 NAME

Map::Tube::London::Line::Circle - London Tube Map: Circle Line.

=head1 VERSION

Version 1.39

=head1 DESCRIPTION

London Tube Map: Circle Line.

    +--------------------------+-------------------------------------------------+
    | Station Name             | Connected To                                    |
    +--------------------------+-------------------------------------------------+
    | Hammersmith              | Goldhawk Road                                   |
    | Goldhawk Road            | Hammersmith, Shepherd's Bush Market             |
    | Shepherd's Bush Market   | Goldhawk Road, Wood Lane                        |
    | Wood Lane                | Shepherd's Bush Market, Latimer Road            |
    | Latimer Road             | Wood Lane, Ladbroke Grove                       |
    | Ladbroke Grove           | Latimer Road, Westbourne Park                   |
    | Westbourne Park          | Ladbroke Grove, Royal Oak                       |
    | Royal Oak                | Westbourne Park, Paddington                     |
    | Paddington               | Royal Oak, Edgware Road                         |
    | Edgware Road             | Paddington, Baker Street                        |
    | Baker Street             | Edgware Road, Great Portland Street             |
    | Great Portland Street    | Baker Street, Euston Square                     |
    | Euston Square            | Great Portland Street, King's Cross St Pancras |
    | King's Cross St Pancras  | Euston Square, Farringdon                       |
    | Farringdon               | King's Cross St Pancras, Barbican              |
    | Barbican                 | Farringdon, Moorgate                            |
    | Moorgate                 | Barbican, Liverpool Street                      |
    | Liverpool Street         | Moorgate, Aldgate                               |
    | Aldgate                  | Liverpool Street, Tower Hill                    |
    | Tower Hill               | Aldgate, Monument                               |
    | Monument                 | Tower Hill, Bank, Cannon Street                 |
    | Cannon Street            | Monument, Mansion House                         |
    | Mansion House            | Cannon Street, Blackfriars                      |
    | Blackfriars              | Mansion House, Temple                           |
    | Temple                   | Blackfriars, Embankment                         |
    | Embankment               | Temple, Westminster                             |
    | Westminster              | Embankment, St Jame's Park                      |
    | St James's Park          | Westminster, Victoria                           |
    | Victoria                 | St James's Park, Sloane Square                   |
    | Sloane Square            | Victoria, South Kensington                      |
    | South Kensington         | Sloane Square, Gloucester Road                  |
    | Gloucester Road          | South Kensington, High Street Kensington        |
    | High Street Kensington   | Gloucester Road, Notting Hill Gate              |
    | Notting Hill Gate        | High Street Kensington, Bayswater               |
    | Bayswater                | Notting Hill Gate                               |
    +--------------------------+-------------------------------------------------+

=head1 NOTE

=over 2

=item * The station "Aldgate" is also part of
          L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>

=item * The station "Baker Street" is also part of
          L<Bakerloo Line|Map::Tube::London::Line::Bakerloo>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Jubilee Line|Map::Tube::London::Line::Jubilee>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>

=item * The station "Barbican" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>

=item * The station "Bayswater" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Blackfriars" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Cannon Street" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Edgware Road" is also part of
          L<Bakerloo Line|Map::Tube::London::Line::Bakerloo>
        | L<District Line|Map::Tube::London::Line::District>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Embankment" is also part of
          L<Bakerloo Line|Map::Tube::London::Line::Bakerloo>
        | L<District Line|Map::Tube::London::Line::District>
        | L<Northern Line|Map::Tube::London::Line::Northern>

=item * The station "Euston Square" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>

=item * The station "Farringdon" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>

=item * The station "Gloucester Road" is also part of
          L<District Line|Map::Tube::London::Line::District>
        | L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "Goldhawk Road" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Great Portland Street" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>

=item * The station "Hammersmith" is also part of
          L<District Line|Map::Tube::London::Line::District>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "High Street Kensington" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "King's Cross St Pancras" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>
        | L<Northern Line|Map::Tube::London::Line::Northern>
        | L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>
        | L<Victoria Line|Map::Tube::London::Line::Victoria>

=item * The station "Ladbroke Grove" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Latimer Road" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Liverpool Street" is also part of
          L<Central Line|Map::Tube::London::Line::Central>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>

=item * The station "Mansion House" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Monument" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Moorgate" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>
        | L<Metropolitan Line|Map::Tube::London::Line::Metropolitan>
        | L<Northern Line|Map::Tube::London::Line::Northern>

=item * The station "Notting Hill Gate" is also part of
          L<Central Line|Map::Tube::London::Line::Central>
        | L<District Line|Map::Tube::London::Line::District>

=item * The station "Paddington" is also part of
          L<Bakerloo Line|Map::Tube::London::Line::Bakerloo>
        | L<District Line|Map::Tube::London::Line::District>
        | L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Royal Oak" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Shepherd's Bush Market" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Sloane Square" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "South Kensington" is also part of
          L<District Line|Map::Tube::London::Line::District>
        | L<Piccadilly Line|Map::Tube::London::Line::Piccadilly>

=item * The station "St James's Park" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Temple" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Tower Hill" is also part of
          L<District Line|Map::Tube::London::Line::District>

=item * The station "Victoria" is also part of
          L<District Line|Map::Tube::London::Line::District>
        | L<Victoria Line|Map::Tube::London::Line::Victoria>

=item * The station "Westbourne Park" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=item * The station "Westminster" is also part of
          L<District Line|Map::Tube::London::Line::District>
        | L<Jubilee Line|Map::Tube::London::Line::Jubilee>

=item * The station "Wood Lane" is also part of
          L<Hammersmith & City Line|Map::Tube::London::Line::HammersmithCity>

=back

=head1 MAP

London Tube Map: L<Circle Line|https://raw.githubusercontent.com/manwar/Map-Tube-London/master/maps/Circle.png>
map generated by plugin L<Map::Tube::Plugin::Graph>.

=begin html

<a href = "https://raw.githubusercontent.com/manwar/Map-Tube-London/master/maps/Circle.png">
<img src    = "https://raw.githubusercontent.com/manwar/Map-Tube-London/master/maps/Circle.png"
     alt    = "London Tube Map: Circle Line"
     width  = "300px"
     height = "600px"/>
</a>

=end html

=head1 AUTHOR

Mohammad Sajid Anwar, C<< <mohammad.anwar at yahoo.com> >>

=head1 REPOSITORY

L<https://github.com/Manwar/Map-Tube-London>

=head1 BUGS

Please report any bugs or feature requests through the web interface at L<https://github.com/manwar/Map-Tube-London/issues>.
I will  be notified and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::London::Line::Circle

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

This program is  free software; you  can redistribute it and / or modify it under
the  terms  of the the Artistic  License (2.0). You may obtain a copy of the full
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

1; # End of Map::Tube::London::Line::Circle
