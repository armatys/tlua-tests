#!/bin/bash

set -e

tlc -o main.lua main.tl
tlc -o a.lua a.tl
tlc -o b.lua b.tl
tlc -o submod/x/mod.lua submod/x/mod.tl
lua main.lua
