draw_self()

var drawX = x+inset
var drawY = y+inset //positions to start drawing the text at

var drawWidth = sprite_width-(inset*2) //how far across text COULD go

var width = 0
var height = 0 //tracks how far across and down the text has gone

draw_set_font(fnt_default)
draw_set_color(c_black)
for(var i = 0; i<=n; i++){
	
	var v = 0;//vertical offset
	var h = 0;//horizontal offset
	
	switch(text[index].effect){
		case txtFX.none:
			v = 0;
			h = 0;
			break;
		case txtFX.wave:
			v = sin(i+(t/10))
			break;
		case txtFX.shake:
			v = random(1);
			h = random(1);
			break;
	}
	
	draw_text(drawX+width+h,drawY+height+v,chars[i]); //draw the character
	
	width+=string_width(chars[i])
	if(width>drawWidth){
		width = 0;
		height+=10
	}
}