-- General functions for drawing borders around graphical elements.

-- Text borderizer. Outdated after 0.2.7 adding border control codes, but this can be tweaked per application.
function btext(s,x,y,c1,c2) -- Takes a string, x position, y position, outside (border) color, and inside color.
  for i=-1,1 do
    for j=-1,1 do
      ?s,x+i,y+j,c1
    end
  end
  ?s,x,y,c2
end

-- Sprite borderizer.
function bspr(s,x,y,f,c) -- Takes a sprite number, x position, y position, flip boolean, and a color.
  for i=0,15 do
    pal(i,c) -- Switch every color for the chosen variable one.
  end
  for i=-1,1 do -- Smear recolored sprites to create the background.
    for j=-1,1 do
      spr(s,x+i,y+j,1,1,f)
    end
  end
  pal() -- Reset to default colors.
  spr(s,x,y,1,1,f) -- Draw the final layer on top.
end
