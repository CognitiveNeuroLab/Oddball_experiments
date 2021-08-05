#  port code 201 = start recording
#  port code 200 = pause recording
#  port code 13 = standard (100ms sound) isi = 125 soa = 225
#  port code 15 = deviant  (180ms sound) isi = 45  soa = 225

scenario = "visual_oddball_225SOA";

no_logfile = false;
scenario_type = trials;
default_background_color = 128, 128, 128;
default_text_color = 255, 0, 255;
default_font_size = 18;  

write_codes = true; 
pulse_width = 10;
pcl_file = "visual_oddball_225SOA.pcl";

begin;

#Load the stimuli:
bitmap { filename = "standard.jpg"; preload = true; } standard_bit;
bitmap { filename = "deviant.jpg";  preload = true; } deviant_bit;
bitmap { filename = "standard_et.jpg"; preload = true; } et_bit;
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
		code = "225 ISI";  
		port_code = 201;  
		time = 0;
	};
} nothing_trial;

trial {
trial_duration = 125;
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
		deltat=7;
		code = "standard";  
		port_code = 13; 
	}code_std;
}standard_trial;
  
trial {
trial_duration = 100;
	stimulus_event {
		picture deviant_pic;   
		time = 0;     
	} event_deviant;
		stimulus_event {
		nothing{};
		deltat=7;
		code = "deviant";  
		port_code = 15;  
	}code_dev;
}deviant_trial;

trial {
trial_duration = 2000; 
	stimulus_event {
		nothing{};
		code = "225 ISI";  
		port_code = 200;  
		time = 0;
      } event_end_block;  
   } end_block_trial;



