if(t=0){ //run once
	var splitText = text[index]
	chars = scr_split_string(splitText.text) //the string split into characters
}

if(timer<text[index].spd){
	//count up
	timer++
}else{
	//increase index and reset timer
	if(n<string_length(text[index].text)-1){
		n++
	}
	timer = 0
}

if(n=string_length(text[index].text)-1 and keyboard_check_pressed(vk_space)){
	n = 0;
	timer = 0;
	index++;
	charSpeed = 1
	if(index>=array_length(text)){ //if the text is over, destroy textbox
		instance_destroy()
	}else{
		var splitText = text[index]
		chars = scr_split_string(splitText.text) //the string split into characters
	}
}else if(n<string_length(text[index].text)-1 and keyboard_check_pressed(vk_space) and n!=0){
	//this would be skipping to the end but I havent implemented it so it works yet
	//(the line breaks calculate as the text writes but it doesnt work here so)
}

t++