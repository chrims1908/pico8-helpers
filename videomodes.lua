-- The pokes below can be copied into your _init() function to alter the screen's resolution at runtime.

poke(0x5f2c, 0) -- Default 128x128 pixels.

poke(0x5f2c, 1) -- Horizontal stretch 64x128.
poke(0x5f2c, 2) -- Vertical stretch 128x64.

poke(0x5f2c, 3) -- Low resolution 64x64.

poke(0x5f2c, 5) -- Horizontal mirror.
poke(0x5f2c, 6) -- Vertical mirror.

poke(0x5f2c, 129) -- Horizontal flip.
poke(0x5f2c, 130) -- Vertical flip.

-- There are others, but these are the most useful to me.
