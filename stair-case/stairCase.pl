#!/usr/bin/env perl

for $i (1..$ARGV[0]) {
    printf ' '  x ($ARGV[0] - $i) . '#' x $i . "\n";
}

