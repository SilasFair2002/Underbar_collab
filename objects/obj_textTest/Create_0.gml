txt[0] = "Here is a cool text I am saying stuff hello cool nice!!! I need to make this text even longer to see it go onto another level!!"
txt[1] = "wow look at me now my text is waving and moving in a sine wave wooooooooo"
txt[2] = "Now just to text this is going not have any effect at all! None whatsoever"
txt[3] = "NOW THIS TEXT is shaking LIKE I AM angry or something like that"

//creates the array of text objects (obj_text)
text = scr_init_text(txt,"mp");

text[1].effect = txtFX.wave
text[3].effect = txtFX.shake