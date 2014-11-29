
local A = {}
A["aname"] = "<class A proto>"
A["new"] = function (self)
  local t = {}
  t["aname"] = "<class A>"
  local s = setmetatable(t,{["__index"] = self})
  return s
end
A["afoo"] = function (self)
  local s = self["aname"]
  print("Hello " .. s)
  return self
end
return A

