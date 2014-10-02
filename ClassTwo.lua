------------------------------------------------------------------------
--[[ ClassTwo ]]--
-- A fictional class description
------------------------------------------------------------------------
local ClassTwo, parent = torch.class("dp.ClassTwo", "dp.ClassOne")
ClassTwo.isClassTwo = true

function ClassTwo:__init(config) 
   config = config or {}
   assert(torch.type(config) == 'table' and not config[1], 
      "Constructor requires key-value arguments")
   local args, a, d = xlua.unpack(
      {config},
      'ClassTwo', 
      'a constructor' ,
      {arg='a', type='number', default=1/7, -- has a different default value than its parent
       help='description a'},
      {arg='d', type='string', default='red',
       help='description d'}
   )
   config.a = a
   parent.__init(self, config)
   self.b = b
end

function ClassTwo:anotherMethod()
   -- return something
end


