package ONVIF::Media::Types::OSDImgOptions;
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

my %ImagePath_of :ATTR(:get<ImagePath>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        ImagePath
        Extension

    ) ],
    {
        'ImagePath' => \%ImagePath_of,
        'Extension' => \%Extension_of,
    },
    {
        'ImagePath' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
        'Extension' => 'ONVIF::Media::Types::OSDImgOptionsExtension',
    },
    {

        'ImagePath' => 'ImagePath',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::OSDImgOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OSDImgOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ImagePath


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::OSDImgOptions
   ImagePath =>  $some_value, # anyURI
   Extension =>  { # ONVIF::Media::Types::OSDImgOptionsExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

