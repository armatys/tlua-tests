local A = require("A")
local B = require("B")
local a = A:new()
a:afoo()
local b = B["new"](B)
b:bfoo()

