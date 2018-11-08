#!/usr/bin/env julia

function alea_iacta_est(rolls::Int32,faces::Int32)
    sum = 0
    for i = 1:rolls
        sum += rand(1:faces)
    end
    return sum
end

open("input.txt") do file
    for ln in eachline(file)
        rolls, faces = split(ln, "d")
        println("$(alea_iacta_est(parse(Int32,rolls),parse(Int32,faces)))")
    end
end

