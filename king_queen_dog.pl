#!/usr/bin/perl

use strict;
use warnings;

# Define Nature's Palette
my %natures_palette = (
    'Red' => '#FF0000',
    'Orange' => '#FFA500',
    'Yellow' => '#FFFF00',
    'Green' => '#008000',
    'Blue' => '#0000FF',
    'Purple' => '#800080',
);

# Create a subroutine to print a color from Nature's Palette
sub print_color {
    my ($color) = @_;
    if (exists $natures_palette{$color}) {
        my $hexcode = $natures_palette{$color};
        print "The hexcode for $color is $hexcode.\n";
    }
    else {
        print "That color does not exist in Nature's Palette.\n";
    }
}

# Let's print some colors!
print_color('Red');
print_color('Yellow');
print_color('Blue');
print_color('Gray');