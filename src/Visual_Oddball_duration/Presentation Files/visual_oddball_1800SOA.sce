#  port code 201 = start recording
#  port code 200 = pause recording
#  port code 25 = standard (100ms sound) isi = 1700 soa = 1800
#  port code 27 = deviant  (180ms sound) isi = 1620 soa = 1800

scenario = "visual_oddball_1800SOA";

no_logfile = false;
scenario_type = trials;

default_background_color = 128, 128, 128;
default_text_color = 255, 0, 255;
default_font_size = 18;  

write_codes = true; 
pulse_width = 10;
pcl_file = "visual_oddball_1800SOA.pcl";

begin;

#Load the auditory stimuli:
bitmap { filename = "standard.jpg"; preload = true; } standard_bit;
bitmap { filename = "deviant.jpg";  preload = true; } deviant_bit;
bitmap { filename = "standard_et.jpg"; preload = true; } et_bit;

picture {
   # background_color = 0, 0, 0;    # no picture parts - a gray screen
	bitmap standard_bit;
	x=0; y=0;
} standard_pic;
picture {
   # background_color = 0, 0, 0;    # no picture parts - a gray screen
	bitmap deviant_bit;
	x=0; y=0;
} deviant_pic;

picture {
} default;

trial {
trial_duration = 2000;
	stimulus_event {
		picture default;
		code = "1800 ISI";  
		port_code = 201;  
		time = 0;
	};
} nothing_trial;

trial {
trial_duration = 1700;
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
	} event_standard;
	stimulus_event {	
		nothing{};
		deltat=8;
		code = "standard";  
		port_code = 25; 
	} event_std;
}standard_trial;
  
trial {
trial_duration = 100;
	stimulus_event {
		picture deviant_pic;   
		time = 0;     
	} event_deviant;
	stimulus_event {	
		nothing{};
		deltat=8;
		code = "deviant";  
		port_code = 27; 
	} dev_code;
}deviant_trial;

trial {
trial_duration = 2000;
	stimulus_event {
		nothing{};
		code = "1800 ISI";  
		port_code = 200;  
		time = 0;
      } event_end_block;  
   } end_block_trial;