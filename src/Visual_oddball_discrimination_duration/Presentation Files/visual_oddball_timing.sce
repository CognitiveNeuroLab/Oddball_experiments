#  port code 201 = start recording
#  port code 200 = pause recording
#  port code 25 = standard 
#  port code 27 = deviant  

scenario = "visual_oddball_165";
no_logfile = false;
scenario_type = trials;
active_buttons = 1;
button_codes = 1;
default_background_color = 0, 0, 0;
default_text_color = 255, 255, 255;
default_font_size = 18;  
write_codes = true; 
pulse_width = 10;
pcl_file = "visual_oddball_165.pcl";

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
		code = "165";  
		port_code = 201;  
		time = 0;
	};
} nothing_trial;

#trial {
#trial_duration = 798;
#	stimulus_event {
#		picture default;
#		time = 0;
#		duration = 795;
#	}event_isi;
#} isi_trial;

trial {
trial_duration = 896;
	stimulus_event {
		picture standard_pic; 
		#duration= 95; 
		time = 0;      
	} event_standard;
	stimulus_event {	
		nothing{};
		deltat=8;
		code = "standard";  
		port_code = 25; 
	} event_std;
	stimulus_event {	
		picture default;
		#deltat=84; #84+16.6ms(1refresh rate) = slightly over 100ms. 
		#deltat=84;
		#deltat=194; #closest we can get to 210, the duration is ~216ms
		deltat=244;
		code = "isi";  
		#port_code = 25; 
	} event_isi_std;
}standard_trial;
  
trial {
trial_duration = 896;
	stimulus_event {
		picture standard_pic;   
		time = 0;
		#duration= 155;
	} event_deviant;
	stimulus_event {	
		nothing{};
		deltat=8;
		code = "deviant";  
		#port_code = 27; 
	} dev_code;
	stimulus_event {	
		picture default;
		deltat=144; #closest we can get, the duration is ~165ms
		code = "165 isi";  
	} event_isi_dev;
}deviant_trial;

trial {
trial_duration = 2000;
	stimulus_event {
		picture {
		text {font_size=25; caption ="Block finished, saving eye tracking data, please wait a moment";};
      x=0;y=0;};
		code = "165";  
		port_code = 200;  
		time = 0;
      } event_end_block;  
   } end_block_trial;