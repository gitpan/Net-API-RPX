use strict;
package Net::API::RPX::Exception;
BEGIN {
  $Net::API::RPX::Exception::AUTHORITY = 'cpan:KONOBI';
}
{
  $Net::API::RPX::Exception::VERSION = '0.04';
}

# ABSTRACT:  A Baseclass for Net::API::RPX exceptions based on L<Throwable::X>

use warnings;

use Moose;

extends 'Throwable::Error';

with qw( Throwable::X );

use Throwable::X -all;

sub _immutable {
    (shift)->meta->make_immutable( inline_constructor => 0 );
}
__PACKAGE__->_immutable;

1;


__END__
=pod

=head1 NAME

Net::API::RPX::Exception - A Baseclass for Net::API::RPX exceptions based on L<Throwable::X>

=head1 VERSION

version 0.04

=head1 AUTHORS

=over 4

=item *

Scott McWhirter <konobi@cpan.org>

=item *

Kent Fredric <kentnl@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Cloudtone Studios.

This is free software, licensed under:

  The (three-clause) BSD License

=cut

