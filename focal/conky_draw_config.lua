-- Define your visual elements here
-- For examples, and a complete list on the possible elements and their 
-- properties, go to https://github.com/fisadev/conky-draw/
-- (and be sure to use the lastest version)

-----------------------------------------------------------------------------
--                               conkyrc_focal
-- Date    : 26/07/2020
-- Author  : Adão Duque
-- Conky   : >= 1.10 
-- License : Distributed under the terms of GNU GPL version 2 or later
-----------------------------------------------------------------------------

xCPU=1000
yCPU=600

xGPU=1000
yGPU=610
ngCPU=120

xMEM=1000
yMEM=610

xHOME=1000
yHOME=610

xROOT=1000
yROOT=610

xNET=1000
yNET=600

color=0x14f523
background_color=0xFFFFFF
elements = {
{
	kind = 'ring_graph',
	center = {x = xHOME, y = yHOME},
	conky_value = 'fs_used_perc /home/',
	radius = 60,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=100,
	angle_between_graduation=3,
	start_angle = 0,
	end_angle = 360,
	bar_color= color,
	background_color= background_color,
},
{
	kind = 'ring_graph',
	center = {x = xHOME, y = yHOME},
	conky_value = 'fs_used_perc /',
	radius = 30,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=80,
	angle_between_graduation=3,
	start_angle = 0,
	end_angle = 360,
	bar_color= color,
	background_color= background_color,
},



-- CPU's
{
	kind = 'ring_graph',
	center = {x = xCPU, y = yCPU},
	conky_value = 'exec cat /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp1_input | cut -c-2',
	radius = 200,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = false,
	number_graduation=1,
	angle_between_graduation=1,
    start_angle = 180,
    end_angle = 360,
	bar_color= color,
	background_color= background_color,

	max_value=130,
	critical_threshold=70,
	change_color_on_critical=true,
	background_color_critical=0xf71000
},
{
	kind = 'ring_graph',
	center = {x = xCPU, y = yCPU},
	conky_value = 'cpu cpu1',
	radius = 185,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=ngCPU,
	angle_between_graduation=1,
    start_angle = 180,
    end_angle = 360,
	bar_color= color,
	background_color= background_color,
},
{
	kind = 'ring_graph',
	center = {x = xCPU, y = yCPU},
	conky_value = 'cpu cpu2',
	radius = 175,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=ngCPU,
	angle_between_graduation=1,
    start_angle = 180,
    end_angle = 360,
	bar_color= color,
	background_color= background_color,
},
{
	kind = 'ring_graph',
	center = {x = xCPU, y = yCPU},
	conky_value = 'cpu cpu3',
	radius = 165,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=ngCPU,
	angle_between_graduation=1,
    start_angle = 180,
    end_angle = 360,
	bar_color= color,
	background_color= background_color,
},
{
	kind = 'ring_graph',
	center = {x = xCPU, y = yCPU},
	conky_value = 'cpu cpu4',
	radius = 155,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=ngCPU,
	angle_between_graduation=1,
    start_angle = 180,
    end_angle = 360,
	bar_color= color,
	background_color= background_color,
},


-- GPU
------------------------ GPU Temperature
{
	kind = 'ring_graph',
	center = {x = xGPU, y = yGPU},
	conky_value = 'execi 60 nvidia-settings -query [gpu:0]/GPUCoreTemp -t',
	radius = 200,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = false,
	number_graduation=1,
	angle_between_graduation=1,
    start_angle = 0,
    end_angle = 180,
	bar_color= color,
	background_color= background_color,

	max_value=130,
	critical_threshold=70,
	change_color_on_critical=true,
	background_color_critical=0xf71000
},
------------------------ GPU VRAM Utilization
{
	kind = 'ring_graph',
	center = {x = xGPU, y = yGPU},
	conky_value = 'exec nvidia-smi -i 0| grep % | cut -c 37-40',
	radius = 185,
	background_thickness=2,
	bar_thickness=5,
	bar_alpha=1,
	graduated = false,
	number_graduation=1,
	angle_between_graduation=1,
    start_angle = 0,
    end_angle = 180,
	bar_color= color,
	background_color= background_color,

	max_value=1980,
	critical_threshold=1700,
	change_color_on_critical=true,
	background_color_critical=0xf71000
},
------------------------ GPU Utilization
{
	kind = 'ring_graph',
	center = {x = xGPU, y = yGPU},
	conky_value = 'exec nvidia-settings -tq GPUUtilization | awk -F \'[,= ]\' \'{ print $2 }\'',
	radius = 170,
	background_thickness=2,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=100,
	angle_between_graduation=1,
    start_angle = 0,
    end_angle = 180,
	bar_color= color,
	background_color= background_color,

	max_value=100,
	critical_threshold=99,
	change_color_on_critical=true,
	background_color_critical=0xf71000	
},


-- MEMORY
{
	kind = 'ring_graph',
	center = {x = xMEM, y = yMEM},
	conky_value = 'memperc',
	radius = 100,
	background_thickness=8,
	bar_thickness=8,
	bar_alpha=1,
	graduated = true,
	number_graduation=80,
	angle_between_graduation=1,
    start_angle = 0,
    end_angle = 180,
	bar_color= color,
	background_color= background_color,
},


-- INTERNET
{
	kind = 'ring_graph',
	center = {x = xNET, y = yNET},
	conky_value = 'downspeedf eno1',
	radius = 103,
	background_thickness=3,
	bar_thickness=3,
	bar_alpha=1,
	graduated = false,
	number_graduation=80,
	angle_between_graduation=1,
    start_angle = 180,
    end_angle = 360,
	bar_color= color,
	background_color= background_color,

	max_value=10000,
	critical_threshold=5000,
	change_color_on_critical=true,
	background_color_critical=0xf71000	
},
{
	kind = 'ring_graph',
	center = {x = xNET, y = yNET},
	conky_value = 'upspeedf eno1',
	radius = 98,
	background_thickness=3,
	bar_thickness=3,
	bar_alpha=1,
	graduated = false,
	number_graduation=80,
	angle_between_graduation=1,
    start_angle = 180,
    end_angle = 360,
	bar_color= color,
	background_color= background_color,

	max_value=1000,
	critical_threshold=500,
	change_color_on_critical=true,
	background_color_critical=0xf71000	
},

--Lines
--------------- Root
{
    kind = 'line',
    from = {x = 1026, y = 620},
    to = {x = 1180, y = 400},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
{
    kind = 'line',
    from = {x = 1180, y = 400},
    to = {x = 1430, y = 400},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
--------------- HOME
{
    kind = 'line',
    from = {x = 1060, y = 620},
    to = {x = 1190, y = 400},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
--------------- GPU
------------------------ GPU Utilization
{
    kind = 'line',
    from = {x = 1163, y = 650},
    to = {x = 1290, y = 600},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
{
    kind = 'line',
    from = {x = 1290, y = 600},
    to = {x = 1430, y = 600},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
------------------------ GPU VRAM Utilization
{
    kind = 'line',
    from = {x = 1150, y = 720},
    to = {x = 1290, y = 600},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
------------------------ GPU Temperature
{
    kind = 'line',
    from = {x = 1160, y = 730},
    to = {x = 1290, y = 600},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},

--------------- Memory
{
    kind = 'line',
    from = {x = 1030, y = 710},
    to = {x = 900, y = 850},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
{
    kind = 'line',
    from = {x = 900, y = 850},
    to = {x = 500, y = 850},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},

--------------- CPU'S
{
    kind = 'line',
    from = {x = 790, y = 400},
    to = {x = 890, y = 490},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
{
    kind = 'line',
    from = {x = 790, y = 400},
    to = {x = 500, y = 400},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
--------------- CPU'S Temperature
{
    kind = 'line',
    from = {x = 800, y = 240},
    to = {x = 890, y = 430},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
{
    kind = 'line',
    from = {x = 800, y = 240},
    to = {x = 500, y = 240},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
--------------- INTERNET Upload
{
    kind = 'line',
    from = {x = 900, y = 600},
    to = {x = 780, y = 650},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
{
    kind = 'line',
    from = {x = 780, y = 650},
    to = {x = 500, y = 650},
    alpha = 0.2,
    thickness=1,
    color= color,
    background_color= background_color,
    angle_between_graduation=3,
},
}