#!/usr/bin/env perl

my $x = $ARGV[0];
for (my $i = 1; $i <= $x; $i++) {
    printf ' '  x ($x - $i) . '#' x $i . "\n";
}

