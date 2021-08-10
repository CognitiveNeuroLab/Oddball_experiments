##8/30/2019
##omission Oddball paradigm created by Douwe Horsthuis for Ana Francisco
#addapted from oddball duration paradigm 

#375 SOA
scenario = "omission_oddball_375SOA";

no_logfile = false;
scenario_type = trials;

active_buttons = 1;
button_codes = 255;  

default_background_color = 0, 0, 0;
default_text_color = 255, 0, 255;
default_font_size = 18;  

write_codes = true; 
pulse_width = 10;
pcl_file = "oddball_omission_375SOA.pcl";

begin;

# port codes:
# 23 = 1000 hz as a standard.
# 25 = silent tone as a deviant.

#Load the auditory stimuli:
#STD = 5 ms rise 1000hz 40ms 5 ms fall (total of 50ms tone)
#create a new DEV that is 50ms 0 Hz
sound { wavefile { filename = "50ms_1000hz_5msfadeinandout.wav"; preload = true; }; } standard_tone;
sound { wavefile { filename = "50ms_silence.wav"; preload = true; }; } deviant_tone;


picture {
} default;

picture {
   text {
      caption = "End of Block";
      font_size = 30;
      text_align = align_center;
      font_color = 255, 0, 255;
   } end_block_txt;
	x = 0; y = 0;   
} end_block_pic;

trial {
trial_duration = 2000;
	stimulus_event {
		picture default;
		code = "375 ISI";  
		port_code = 37;  
		time = 0;
	};
} nothing_trial;

trial {
trial_duration = 100;
	stimulus_event {
		picture default;
		code = "201 start recording";  
		port_code = 201;  
		time = 0;
	};
} start_saving;

#duration = 325 ms
trial {
trial_duration = 325;
	stimulus_event {
		picture default;
		time = 0;
	}event_isi;
} isi_trial;

trial {
	stimulus_event {
		sound standard_tone;  
		time = 0;     
		code = "standard";  
		port_code = 23;  
	} event_standard;
}standard_trial;
  
trial {
	stimulus_event {
		sound deviant_tone;   
		time = 0;     
		code = "deviant";  
		port_code = 25;  
	} event_deviant;
}deviant_trial;

trial {
	trial_duration = forever;
	trial_type = first_response; 
	terminator_button = 1;
	stimulus_event {
      picture end_block_pic;
	code = "200 pause recording";  
	port_code = 200; 
   } event_end_block;  
} end_block_trial;