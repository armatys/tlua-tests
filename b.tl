local A = require 'A'

interface B
  const new:() => (self)
  const bfoo:(A) => (self)
  const bbar:() => (self)
end

local B = {}

const function B:new(): self
  local o = setmetatable({}, { __index = self })
  return o
end

const function B:bbar(): self
  print('bbar called')
  return self
end

const function B:bfoo(a: A): self
  a.afoo(a)
  a:afoo()
  return self
end

return B
