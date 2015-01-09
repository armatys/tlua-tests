

local A = {}
A["aname"] = "<class A proto>"
A["child"] = {["subaname"] = "the subaname"}
A["new"] = function (self)
  local t = {}
  t["aname"] = "<class A>"
  t["child"] = {["subaname"] = "the subaname"}
  local s = setmetatable(t,{["__index"] = self})
  return s
end
A["afoo"] = function (self)
  local s = self["aname"]
  print("Hello " .. s)
  return self
end
A["arun"] = function (self, name)
  print("arun",name)
end
A["abar"] = function (self, obj)
  self:arun(obj["subaname"])
  local s = obj["subaname"]
  self:arun(s)
  self["arun"](self,obj["subaname"])
end
return A

