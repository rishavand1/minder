package ONVIF::Device::Types::MetadataConfigurationOptions;
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

my %PTZStatusFilterOptions_of :ATTR(:get<PTZStatusFilterOptions>);

__PACKAGE__->_factory(
    [ qw(        PTZStatusFilterOptions

    ) ],
    {
        'PTZStatusFilterOptions' => \%PTZStatusFilterOptions_of,
    },
    {
        'PTZStatusFilterOptions' => 'ONVIF::Device::Types::PTZStatusFilterOptions',
    },
    {

        'PTZStatusFilterOptions' => 'PTZStatusFilterOptions',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::MetadataConfigurationOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
MetadataConfigurationOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PTZStatusFilterOptions




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::MetadataConfigurationOptions
   PTZStatusFilterOptions =>  { # ONVIF::Device::Types::PTZStatusFilterOptions
     PanTiltStatusSupported =>  $some_value, # boolean
     ZoomStatusSupported =>  $some_value, # boolean
     PanTiltPositionSupported =>  $some_value, # boolean
     ZoomPositionSupported =>  $some_value, # boolean
     Extension =>  { # ONVIF::Device::Types::PTZStatusFilterOptionsExtension
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

