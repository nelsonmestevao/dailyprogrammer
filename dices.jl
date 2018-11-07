#!/usr/bin/env julia

function coiso(x::Int,y::Int)
    sum = 0
    for i = 1:x
        sum += rand(1:y)
    end
    return sum
end

open("input.txt") do file
    for ln in eachline(file)
        times, faces = split(ln, "d")
        println("$(string(coiso(parse(Int,times),parse(Int,faces))))")
    end
end


