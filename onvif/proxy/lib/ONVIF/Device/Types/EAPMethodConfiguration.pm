package ONVIF::Device::Types::EAPMethodConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %TLSConfiguration_of :ATTR(:get<TLSConfiguration>);
my %Password_of :ATTR(:get<Password>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        TLSConfiguration
        Password
        Extension

    ) ],
    {
        'TLSConfiguration' => \%TLSConfiguration_of,
        'Password' => \%Password_of,
        'Extension' => \%Extension_of,
    },
    {
        'TLSConfiguration' => 'ONVIF::Device::Types::TLSConfiguration',
        'Password' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Extension' => 'ONVIF::Device::Types::EapMethodExtension',
    },
    {

        'TLSConfiguration' => 'TLSConfiguration',
        'Password' => 'Password',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::EAPMethodConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
EAPMethodConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * TLSConfiguration


=item * Password


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::EAPMethodConfiguration
   TLSConfiguration =>  { # ONVIF::Device::Types::TLSConfiguration
     CertificateID =>  $some_value, # token
   },
   Password =>  $some_value, # string
   Extension =>  { # ONVIF::Device::Types::EapMethodExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

