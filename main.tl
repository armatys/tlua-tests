local A = require 'A'
local B = require 'B'
local mod = require 'submod.x.mod'

local a: A = A:new()
a:afoo()

local b: B = B:new()
b:bfoo(a)

print(mod.name)