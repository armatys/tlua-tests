local A = require("A")

local B = {}
B["new"] = function (self)
  local o = setmetatable({},{["__index"] = self})
  return o
end
B["bbar"] = function (self)
  print("bbar called")
  return self
end
B["bfoo"] = function (self)
  local a = A:new()
  self:bbar()
  return self
end
return B

