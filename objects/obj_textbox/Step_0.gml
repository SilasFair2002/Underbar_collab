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
	if(index>=array_length(text)){
		instance_destroy()
	}
	var splitText = text[index]
	chars = scr_split_string(splitText.text) //the string split into characters
}else if(n<string_length(text[index].text)-1 and keyboard_check_pressed(vk_space) and n!=0){
	n = string_length(text[index].text)-1
}

t++