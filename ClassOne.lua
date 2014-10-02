------------------------------------------------------------------------
--[[ ClassOne ]]--
-- A fictional class description
------------------------------------------------------------------------
local ClassOne = torch.class("dp.ClassOne")
ClassOne.isClassOne = true

function ClassOne:__init(config) 
   config = config or {}
   assert(torch.type(config) == 'table' and not config[1], 
      "Constructor requires key-value arguments")
   local args, a, b, c = xlua.unpack(
      {config},
      'ClassOne', 
      'a constructor' ,
      {arg='a', type='number', default=1/6,
       help='description a'},
      {arg='b', type='string', default='bla',
       help='description b'},
      {arg='c', type='string', default='bleu',
       help='description c'}
   )
   self.a = a
   self.b = b
   self.c = c
end

function ClassOne:aMethod()
   -- return something
end


