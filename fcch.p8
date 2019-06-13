pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
#include underthehood.lua

--addr = tileaddress(17)
table = readtile (17)
for x = 1, 8 do
    pline = ''
    for y = 1, 8 do
    pline = pline .. ' ' .. bin2hex(table[x][y])
    end
    printh (pline)
end
printh('-')


__gfx__
a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c00000003a94627e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000beeee0700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bebbee700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bebb00770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000beb9bb070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bebbb0970000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000077d88dd70000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000777d88880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
