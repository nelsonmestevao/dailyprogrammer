#!/usr/bin/env julia

function derangement(n::Int64)
    if n == 0
        1
    elseif n == 1
        0
    else
        (n-1) * (derangement(n-1) + derangement(n-2))
    end
end

open("input.txt") do file
    for ln in eachline(file)
        #= n = parse(Int32,ln) =#
        #= println("$(derangement(n))") =#
        println("$(derangement((parse(Int64,ln))))")
    end
end

