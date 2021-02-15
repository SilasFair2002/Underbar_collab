//txt[0] = "Here is a cool text I am saying stuff hello cool nice!!! I need to make this text even longer to see it go onto another level!!"
//txt[1] = "wow look at me now my text is waving and moving in a sine wave wooooooooo"
//txt[2] = "Now just to text this is going not have any effect at all! None whatsoever"
//txt[3] = "NOW THIS TEXT is shaking LIKE I AM angry or something like that"

////creates the array of text objects (obj_text)
//text = scr_init_text(txt,"mp");

//text[1].effect = txtFX.wave
//text[3].effect = txtFX.shake

txt[0] = "Whats up"
txt[1] = "You got games on yo phone?"

text = scr_init_text(txt,"fp");

text[1].isQuestion = true
option[0] = "No I do not."
option[1] = "I have iphone amogus"
option[2] = "I have PE Minecraft"
text[1].options = option

rsp0[0] = "WHAT!!!"
rsp0[1] = "HOW!?!?!"
rsp0 = scr_init_text(rsp0,"fp")
rsp0[0].effect = txtFX.shake
rsp0[1].effect = txtFX.shake
text[1].responce[0] = rsp0

rsp1[0] = "Haha kinda sus get it?"
rsp1 = scr_init_text(rsp1,"fp")
rsp1[0].effect = txtFX.wave
text[1].responce[1] = rsp1


rsp2[0] = "I don't like the pixels."
rsp2 = scr_init_text(rsp2,"fp")
rsp2[0].effect = txtFX.wave
text[1].responce[2] = rsp2