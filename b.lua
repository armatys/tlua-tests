
local B = {}
B["bname"] = "<class B proto>"
B["new"] = function (self)
  local o = setmetatable({},{["__index"] = self})
  o["bname"] = "<class B>"
  return o
end
B["bfoo"] = function (self)
  local s = self["bname"]
  print("Hello " .. s)
  return self
end
return B

