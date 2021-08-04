#  port code 201 = start recording
#  port code 200 = pause recording
#  port code 17 = standard (100ms sound) isi = 350  soa = 450
#  port code 19 = deviant  (180ms sound) isi = 270  soa = 450

scenario = "visual_oddball_450SOA - Behavioral";

no_logfile = false;
scenario_type = trials;
default_background_color = 128, 128, 128;
default_text_color = 255, 0, 255;
default_font_size = 18;  
active_buttons = 1;
button_codes = 1;
write_codes = true; 
pulse_width = 10;
pcl_file = "visual_oddball_450SOA - Behavioral.PCL";

begin;

# port codes:
# 3 = 100 ms as a standard.
# 5 = 180 ms as a deviant.

#Load the auditory stimuli:
bitmap { filename = "standard.jpg"; preload = true; } standard_bit;
bitmap { filename = "deviant.jpg";  preload = true; } deviant_bit;

picture {
    #background_color = 0, 0, 0;    # no picture parts - a gray screen
	bitmap standard_bit;
	x=0; y=0;
} standard_pic;
picture {
    #background_color = 0, 0, 0;    # no picture parts - a gray screen
	bitmap deviant_bit;
	x=0; y=0;
} deviant_pic;

picture {
} default;

trial {
trial_duration = 2000;
	stimulus_event {
		picture default;
		code = "450 ISI";  
		port_code = 201;  
		time = 0;
	};
} nothing_trial;

trial {
trial_duration = 350;
	stimulus_event {
		picture default;
		time = 0;
	}event_isi;
} isi_trial;

trial {
trial_duration = 100;
	stimulus_event {
		picture standard_pic;  
		time = 0;     
		code = "standard";  
		port_code = 17;  
	} event_standard;
}standard_trial;
  
trial {
trial_duration = 100;
	stimulus_event {
		picture deviant_pic;   
		time = 0;     
		code = "deviant";  
		port_code = 19;  
	} event_deviant;
}deviant_trial;

trial {
trial_duration = 2000; 
	stimulus_event {
		nothing{};
		code = "455 ISI";  
		port_code = 200;  
		time = 0;
      } event_end_block;  
   } end_block_trial;




