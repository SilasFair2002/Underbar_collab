//txt[0] = "Here is a cool text I am saying stuff hello cool nice!!! I need to make this text even longer to see it go onto another level!!"
//txt[1] = "wow look at me now my text is waving and moving in a sine wave wooooooooo"
//txt[2] = "Now just to text this is going not have any effect at all! None whatsoever"
//txt[3] = "NOW THIS TEXT is shaking LIKE I AM angry or something like that"

////creates the array of text objects (obj_text)
//text = scr_init_text(txt,"mp");

//text[1].effect = txtFX.wave
//text[3].effect = txtFX.shake

txt[0] = "Hey there shawty, whats good?"
txt[1] = "..."
txt[2] = "hey ma, don't be like that damn I jus tryna cop on some no cap you know what I'm sayin bruh"
txt[3] = "..."
txt[4] = "what?"
txt[5] = "ey bro don't worry its good I'm chill wid it but aint gonna lie this fire straight up cappin bruh, kinda sus ngl."
txt[6] = "..."
txt[7] = "huh?"
txt[8] = "THIS IS A NO CAP FOR REAL STRAIGHT FIRE LIT AF BRUH MOMENT!"

text = scr_init_text(txt,"fp");

text[0].speaker = "mp"
text[2].speaker = "mp"
text[5].speaker = "mp"
text[8].speaker = "mp"
text[8].effect = txtFX.shake