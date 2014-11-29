interface B
  bname: string
  new:(self) -> (self)
  bfoo:(self) -> (self)
end

local B = {}
B.bname = '<class B proto>'

function B:new(): self
  local o = setmetatable({}, { __index = self })
  o.bname = '<class B>'
  return o
end

function B:bfoo(): self
  local s: string = self.bname
  print('Hello ' .. s)
  return self
end

return B
