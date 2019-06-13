_spr = 0x0 	-- 0x0fff 	Sprite sheet (0-127)
_spr2 = 0x1000 --	0x1fff 	Sprite sheet (128-255) / Map (rows 32-63) (shared)
_map = 0x2000 	--0x2fff 	Map (rows 0-31)
_flags = 0x3000 	--0x30ff 	Sprite flags
_music = 0x3100 	--0x31ff 	Music
_sfx = 0x3200 	--0x42ff 	Sound effects
_wram = 0x4300 	--0x5dff 	General use (or work RAM)
_sram = 0x5e00 	--0x5eff 	Persistent cart data (64 numbers = 256 bytes)
--0x5f00 	--0x5f3f 	Draw state
--0x5f40 	--0x5f7f 	Hardware state
_gpio = 0x5f80 	--0x5fff 	GPIO pins (128 bytes)
_vram = 0x6000 	--0x7fff 	Screen data (8k) 

function tileaddress(tilenum)
    x = tilenum % 16
    y = flr(tilenum / 16)
    tileaddr = (x * 0x4) + (y * 0x200)
    return tileaddr
end

function readtile(tilenum) --tiles are 8 x 8
    address = tileaddress(tilenum)
    pixmap = {}
    for i = address, address + 0x200, 0x40 do
        add(pixmap, readline(i))
    end
    return pixmap
end

function bin2hex(number)
    tohex = tostr(number, true)
    trim = sub(tohex, 1, 6)
    return trim
end

function readline(startaddress) -- one line is 4 bytes
    lineout = {}
    for i = startaddress, startaddress + 4 do
        l, r = readbyte(i)
        add(lineout, l)
        add(lineout, r)
    end
    return lineout
end

function readbyte(address)
    value = peek(address)
    l = band(value, 0x0f)
    r = band(value, 0xf0)
    r = shr(r,4)
    return l,r
end