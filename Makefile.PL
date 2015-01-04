use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share dist => 'share';

WriteMakefile(
    NAME               => 'Map::Tube::London',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Map/Tube/London.pm',
    ABSTRACT_FROM      => 'lib/Map/Tube/London.pm',
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo'              => 0,
        'namespace::clean' => 0,
        'File::Share'      => 0,
        'Map::Tube'        => '2.57',
        'File::ShareDir::Install' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Map-Tube-London-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        provides    => {
            'Map::Tube::London'
                => { file => 'lib/Map/Tube/London.pm',                      version => '0.33' },
            'Map::Tube::London::Line::Bakerloo'
                => { file => 'lib/Map/Tube/London/Line/Bakerloo.pm',        version => '0.33' },
            'Map::Tube::London::Line::Central'
                => { file => 'lib/Map/Tube/London/Line/Central.pm',         version => '0.33' },
            'Map::Tube::London::Line::Circle'
                => { file => 'lib/Map/Tube/London/Line/Circle.pm',          version => '0.33' },
            'Map::Tube::London::Line::District'
                => { file => 'lib/Map/Tube/London/Line/District.pm',        version => '0.33' },
            'Map::Tube::London::Line::HammersmithCity'
                => { file => 'lib/Map/Tube/London/Line/HammersmithCity.pm', version => '0.33' },
            'Map::Tube::London::Line::Jubilee'
                => { file => 'lib/Map/Tube/London/Line/Jubilee.pm',         version => '0.33' },
            'Map::Tube::London::Line::Metropolitan'
                => { file => 'lib/Map/Tube/London/Line/Metropolitan.pm',    version => '0.33' },
        },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/Manwar/Map-Tube-London.git',
                web  => 'https://github.com/Manwar/Map-Tube-London',
            },
        }})
     : ()
    ),
);

package MY;
use File::ShareDir::Install 'postamble';
