use strict;
package Net::API::RPX::Exception::Network;
BEGIN {
  $Net::API::RPX::Exception::Network::AUTHORITY = 'cpan:KONOBI';
}
{
  $Net::API::RPX::Exception::Network::VERSION = '0.04';
}

# ABSTRACT: A Class of exceptions for network connectivitiy issues.

use warnings;
use Moose;
use namespace::autoclean;

extends 'Net::API::RPX::Exception';

has 'ua_result'   => ( isa => "Ref", is => 'ro', required => 1 );
has 'status_line' => ( isa => "Str", is => 'ro', required => 1 );

__PACKAGE__->_immutable;
1;


__END__
=pod

=head1 NAME

Net::API::RPX::Exception::Network - A Class of exceptions for network connectivitiy issues.

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

