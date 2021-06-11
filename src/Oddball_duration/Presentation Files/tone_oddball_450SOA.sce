#  port code 201 = start recording
#  port code 200 = pause recording
#  port code 17 = standard (100ms sound) isi = 350  soa = 450
#  port code 19 = deviant  (180ms sound) isi = 270  soa = 450

scenario = "tone_oddball_450SOA";

no_logfile = false;
scenario_type = trials;

default_background_color = 0, 0, 0;
default_text_color = 255, 0, 255;
default_font_size = 18;  

write_codes = true; 
pulse_width = 10;
pcl_file = "tone_oddball_450SOA.pcl";

begin;

# port codes:
# 3 = 100 ms as a standard.
# 5 = 180 ms as a deviant.

#Load the auditory stimuli:
sound { wavefile { filename = "1000Hz_100ms.wav"; preload = true; }; } standard_tone;
sound { wavefile { filename = "1000Hz_180ms.wav"; preload = true; }; } deviant_tone;

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
		nothing{};
		time = 0;
	}event_isi;
} isi_trial;

trial {
	stimulus_event {
		sound standard_tone;  
		time = 0;     
		code = "standard";  
		port_code = 17;  
	} event_standard;
}standard_trial;
  
trial {
	stimulus_event {
		sound deviant_tone;   
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




