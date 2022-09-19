#! /usr/bin/lua

-- by Michael Anderson at
-- https://stackoverflow.com/questions/8722620/comparing-two-index-tables-by-index-value-in-lua
function recursive_compare(t1,t2)
  -- Use usual comparison first.
  if t1==t2 then return true end
  -- We only support non-default behavior for tables
  if (type(t1)~="table") then return false end
  -- They better have the same metatables
  local mt1 = getmetatable(t1)
  local mt2 = getmetatable(t2)
  if( not recursive_compare(mt1,mt2) ) then return false end

  -- Check each key-value pair
  -- We have to do this both ways in case we miss some.
  -- TODO: Could probably be smarter and not check those we've 
  -- already checked though!
  for k1,v1 in pairs(t1) do
    local v2 = t2[k1]
    if( not recursive_compare(v1,v2) ) then return false end
  end
  for k2,v2 in pairs(t2) do
    local v1 = t1[k2]
    if( not recursive_compare(v1,v2) ) then return false end
  end

  return true  
end

function gcd(m0,n0)
   local m,n = m0,n0
   while n ~= 0 do
      m,n = n,m % n
   end
   return m
end

function eulertotient(n)
   local et = 0
   for k = 1,n do
      if gcd(n,k) == 1 then
         et = et + 1
      end
   end
   return et
end

function iteratedtotient(n0)
   local p = 0
   local n = n0
   while true do
      n = eulertotient(n)
      p = p + n
      if n == 1 then
         break
      end
      if p > n0 then
         break
      end
   end
   return p
end

function perfecttotient(ct)
   local o = {}
   local n = 1
   while #o < ct do
      n = n + 1
      if iteratedtotient(n) == n then
         table.insert(o,n)
      end
   end
   return o
end

if recursive_compare(perfecttotient(20),
                     {3, 9, 15, 27, 39, 81, 111, 183, 243, 255, 327,
                      363, 471, 729, 2187, 2199, 3063, 4359, 4375,
                      5571})
then
   io.write("Pass")
else
   io.write("FAIL")
end
print("")
