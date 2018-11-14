#!/usr/bin/env julia

open("input.txt") do file
    sum = 0
    for ln in eachline(file)
        rolls, faces = split(ln, "d")
        rolls = parse(Int32, rolls)
        faces = parse(Int32, faces)
        for i = 1:rolls
            sum += rand(1:faces)
        end
    end
    println("$(sum)")
end

