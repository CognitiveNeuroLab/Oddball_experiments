#  port code 201 = start recording
#  port code 200 = pause recording
#  port code 21 = standard
#  port code 23 = deviant

scenario = "visual_oddball_316";
active_buttons = 1;
button_codes = 1;
no_logfile = false;
scenario_type = trials;
default_background_color = 128, 128, 128;
default_text_color = 255, 255, 255;
default_font_size = 18;  
write_codes = true; 
pulse_width = 10;
pcl_file = "visual_oddball_316.pcl";

begin;
#Load the auditory stimuli:
bitmap { filename = "standard.jpg"; preload = true; } standard_bit;
bitmap { filename = "standard_et.jpg"; preload = true; } et_bit;

picture {
   # background_color = 0, 0, 0;    # no picture parts - a gray screen
	bitmap standard_bit;
	x=0; y=0;
} standard_pic;


picture {
} default;

trial {
trial_duration = 2000;
	stimulus_event {
		picture default;
		code = "316";  
		port_code = 201;  
		time = 0;
	};
} nothing_trial;

trial {
trial_duration = 896;
	stimulus_event {
		picture standard_pic; 
		time = 0;      
	} event_standard;
	stimulus_event {	
		nothing{};
		deltat=8;
		code = "standard";  
		port_code = 17; 
	} event_std;
	stimulus_event {	
		picture default;
		deltat=84; #84+16.6ms(1refresh rate) = slightly over 100ms. 
		code = "isi";  
	} event_isi_std;
}standard_trial;
  
trial {
trial_duration = 896;
	stimulus_event {
		picture standard_pic;   
		time = 0;
	} event_deviant;
	stimulus_event {	
		nothing{};
		deltat=8;
		code = "deviant";  
		port_code = 18; 
	} dev_code;
	stimulus_event {	
		picture default;
		deltat=294; #closest we can get to 210, the duration is ~316ms
		code = "isi";  
		#port_code = 25; 
	} event_isi_dev;
}deviant_trial;

trial {
trial_duration = 2000;
	stimulus_event {
		picture {
		text {font_size=25; caption ="Block finished, saving eye tracking data, please wait a moment";};
      x=0;y=0;};
		code = "316";  
		port_code = 200;  
		time = 0;
      } event_end_block;  
   } end_block_trial;