-- Collision between two square objects with defined positions and sizes.

function box_hit(x1,y1,w1,h1,x2,y2,w2,h2)
  local hit=false
	local xs=w1*0.5+w2*0.5
	local ys=h1*0.5+h2*0.5
	local xd=abs((x1+(w1/2))-(x2+(w2/2)))
	local yd=abs((y1+(h1/2))-(y2+(h2/2)))
  if xd<xs and yd<ys then
    hit=true
  end
	return hit
end
