package Net::API::RPX::Exception::Usage;

# $Id:$
use strict;
use warnings;

=head1 NAME

Net::API::RPX::Exception::Usage - For when the interface is used wrongly.

=cut

use Moose;
use namespace::autoclean;

extends 'Net::API::RPX::Exception';

has 'required_parameter' => ( isa => 'Str', is => 'rw', required => 1 );
has 'method_name'        => ( isa => 'Str', is => 'rw', required => 1 );
has 'signature'          => ( isa => 'Str', is => 'rw', required => 1 );
has 'package'            => ( isa => 'Str', is => 'rw', required => 1 );

sub _signature_string {
    my ($self) = @_;
    return $self->method_name . '(' . $self->signature . ')';
}

sub _explanation {
    my ($self) = @_;
    return
        sprintf q{Method %s on package %s expects the parameter "%s"} 
      . qq{\n\n}
      . qq{\tUsage:\t%s\n}, $self->method_name,
      $self->package,
      $self->required_parameter, $self->_signature_string;
}

around message => sub {
    my ( $orig, $self, @args ) = @_;
    return $self->$orig(@args) . qq{\n} . $self->_explanation;
};

__PACKAGE__->_immutable;
1;

