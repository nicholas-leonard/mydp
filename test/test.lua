local dptest = {}
local precision = 1e-5
local mytester

-- you can easily test specific units like this: 
-- th -lmydp -e "mydp.test{'dpe'}"
-- th -lmydp -e "mydp.test{'dpe', 'PixelSoftMax'}"

function dptest.ClassOne()
   local co = dp.ClassOne()
   -- do some tests
end

function dptest.ClassTwo()
   local ct = dp.ClassTwo()
   -- do some tests
end

function mydp.test(tests)
   mytester = torch.Tester()
   mytester:add(dptest)
   math.randomseed(os.time())
   mytester:run(tests)
end


