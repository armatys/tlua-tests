local A = require 'A'
local B = require 'B'

local a: A = A:new()
a:afoo()

local b: B = B.new(B)
b:bfoo()
