require 'dp'

mydp = {}

-- some class files:
torch.include('mydp', 'ClassOne.lua')
torch.include('mydp', 'ClassTwo.lua')

-- misc.:
torch.include('mydp', 'test.lua')
