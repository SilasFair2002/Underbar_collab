/// @description set stats and behavior stuff
hp = 5
spd = 1
pwr = 1


hit = 0 //whether this object has been hit and amount of damage dealt by hit

hurt_timer = 0 // a timer between hits
attack_timer = 0 // a timer for between attacks
attack_range = 10//the range at which it attacks the player

player_detected = false //show if the player was detected.

state = "idle"