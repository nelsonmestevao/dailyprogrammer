#!/usr/bin/env ruby

n = ARGV[0].to_i

for i in 1..n
  puts " " * (n-i) + "#" * i
end

