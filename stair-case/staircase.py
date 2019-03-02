#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys

def stair(n):
    for i in range(1, n):
        print(" " * (n-i) + "#" * i)

t = int(sys.argv[1]) + 1

stair(t)
