-- 1 bit graphics in a single function you can call at the end of _draw().

function bwpal()
	for i=0,16 do
		pal(i,0)
	end
	for i=7,15 do
		pal(i,7)
	end
end
