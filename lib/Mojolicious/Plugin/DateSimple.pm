package Mojolicious::Plugin::DateSimple;
use Mojo::Base 'Mojolicious::Plugin';

our $VERSION = '0.01';

use Date::Simple::D8;

sub register {
  my ($self, $app, $conf) = @_;

  if ( $conf->{FMT} =~ /^d8$/i ) {
    $app->helper(
      'datesimple.d8' => sub {
        my $self = shift;
        return Date::Simple::D8->new(@_);
      }
    );
  } else {
    $app->helper(
      'datesimple' => sub {
        my $self = shift;
        return Date::Simple->new(@_);
      }
    );
  }
}

1;
__END__

=encoding utf8

=head1 NAME

Mojolicious::Plugin::DateSimple - Mojolicious Plugin

=head1 SYNOPSIS

  # Mojolicious
  $self->plugin('DateSimple');

  # Mojolicious::Lite
  plugin 'DateSimple';

=head1 DESCRIPTION

L<Mojolicious::Plugin::DateSimple> is a L<Mojolicious> plugin.

=head1 METHODS

L<Mojolicious::Plugin::DateSimple> inherits all methods from
L<Mojolicious::Plugin> and implements the following new ones.

=head2 register

  $plugin->register(Mojolicious->new);

Register plugin in L<Mojolicious> application.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Guides>, L<http://mojolicio.us>.

=cut
