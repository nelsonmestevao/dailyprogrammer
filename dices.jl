#!/usr/bin/env julia

function calc(rolls::Int32,faces::Int32)
    sum = 0
    for i = 1:rolls
        sum += rand(1:faces)
    end
    return sum
end

open("input.txt") do file
    for ln in eachline(file)
        rolls, faces = split(ln, "d")
        println("$(calc(parse(Int32,rolls),parse(Int32,faces)))")
    end
end


