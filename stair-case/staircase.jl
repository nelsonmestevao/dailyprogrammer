#!/usr/bin/env julia

n = parse(Int, ARGS[1])

for i in 1:n
    println(string(repeat(" ", n-i), repeat("#", i)))
end

