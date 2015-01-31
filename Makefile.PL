use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Mojolicious::Plugin::DateSimple',
  VERSION_FROM => 'lib/Mojolicious/Plugin/DateSimple.pm',
  AUTHOR       => 'A Good Programmer <nospam@cpan.org>',
  PREREQ_PM    => {'Mojolicious' => '5.50'},
  LICENSE      => 'artistic_2',
  PREREQ_PM => {
    'Date::Simple::D8' => '3.00',
  },
  test         => {TESTS => 't/*.t'}
);
