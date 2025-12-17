# Basic Top Down Player Movement Starter
p = {
  x = 64, # Initial position
  y = 64,
  dx = 0, # Initial velocity
  dy = 0
}

function update_player() # Run in _update() every frame you want the player to have control
  # Reset player velocity
  p.dx = 0 
  p.dy = 0
  
  # Check left, right, up, and down inputs then change the player velocity accordingly
  if btn(0) then p.dx = -1 end
  if btn(1) then p.dx = 1 end
  if btn(2) then p.dy = -1 end
  if btn(3) then p.dy = 1 end

  # Check for impossible inputs
  if btn(0) and btn(1) then p.dx = 0 end
  if btn(2) and btn(3) then p.dy = 0 end

  # Apply velocity to player velocity
  p.x += p.dx
  p.y += p.dy
end
