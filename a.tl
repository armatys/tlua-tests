interface A
  aname: string
  new:() => (self)
  afoo:() => (self)
end

local A = {}
A.aname = '<class A proto>'

function A:new(): self
  local t = {}
  t.aname = '<class A>'

  local s = setmetatable(t, {__index = self})
  return s
end

function A:afoo(): self
  local s: string = self.aname
  print('Hello ' .. s)
  return self
end

return A
