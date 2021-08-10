scenario = "tone_rhythm_720";

no_logfile = false;
scenario_type = trials;

active_buttons = 1;
button_codes = 255;  

default_background_color = 0, 0, 0;
default_text_color = 255, 0, 255;
default_font_size = 18;  

write_codes = true; 
pulse_width = 10;
pcl_file = "tone_rhythm_720.pcl";

begin;

# port codes:
# 3 = 900 soa standard.
# 5 = 720 soa deviant.

#Load the auditory stimuli:
sound { wavefile { filename = "1000hz_100ms_10msfade.wav"; preload = true; }; } tone;



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
		code = "720 ISI";  
		port_code = 72;  
		time = 0;
	};
} nothing_trial;

trial {
trial_duration = 800;
	stimulus_event {
		picture default;
		time = 0;
	}event_isi;
} isi_trial;

trial {
	stimulus_event {
		sound tone;  
		time = 0;     
		code = "standard";  
		port_code = 3;  
	} event_standard;
}standard_trial;
  
trial {
	stimulus_event {
		sound tone;   
		time = 0;     
		code = "deviant";  
		port_code = 5;  
	} event_deviant;
}deviant_trial;

trial {
	trial_duration = forever;
	trial_type = first_response; 
	terminator_button = 1;
	stimulus_event {
      picture end_block_pic;
   } event_end_block;  
} end_block_trial;





