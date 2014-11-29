#!/bin/bash

tlc -o a.lua a.tl && tlc -o b.lua b.tl && tlc -o main.lua main.tl && lua main.lua
