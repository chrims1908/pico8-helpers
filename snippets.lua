-- 64x64 mode
poke(0x5f2c,3)

-- inverted circle
poke(0x5f34,0x2)
circfill(32,32,24,0+6144)
