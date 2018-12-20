#!/usr/bin/env julia

function derangement(n::Int)
    if n == 0
        1
    elseif n == 1
        0
    else
        (n-1) * (derangement(n-1) + derangement(n-2))
    end
end

