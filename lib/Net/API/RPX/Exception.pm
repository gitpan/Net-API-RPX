package Net::API::RPX::Exception;

# $Id:$
use strict;
use warnings;

=head1 NAME

Net::API::RPX::Exception - A Baseclass for Net::API::RPX exceptions based on L<Throwable::X>

=cut

=head1 DEBUGGING

For complete backtraces in C<< die() >>, set C<< $ENV{NET_API_RPX_STACKTRACE} = 1 >>

=cut

use Moose;

extends 'Throwable::Error';

with qw( Throwable::X );

use Throwable::X -all;

sub _immutable {
    (shift)->meta->make_immutable( inline_constructor => 0 );
}
__PACKAGE__->_immutable;

1;

