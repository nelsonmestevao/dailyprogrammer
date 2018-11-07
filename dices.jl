#!/usr/bin/env julia

function coiso(x::Int32,y::Int32)
    sum = 0
    for i = 1:x
        sum += rand(1:y)
    end
    return sum
end

open("input.txt") do file
    for ln in eachline(file)
        times, faces = split(ln, "d")
        println("$(coiso(parse(Int32,times),parse(Int32,faces)))")
    end
end


