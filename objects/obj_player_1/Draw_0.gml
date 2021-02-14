draw_self();

//define view variables
view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])
view_w = camera_get_view_width(view_camera[0])
view_h = camera_get_view_height(view_camera[0])

//set camera speed
camera_set_view_speed(view_camera[0], distance_to_point(view_x+(view_w/2), y)/20, distance_to_point(x, view_y+(view_h/2))/20)