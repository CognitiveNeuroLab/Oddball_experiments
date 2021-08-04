
clear variables
% make a sequence for oddball paradigm with the following rules:
% -> 1 = standard, 2 = deviant.
% -> A deviant has to be preceded by at least 2 standards
% -> standards comprise 85% of the sequence and deviants 15%
% -> the sequence is pseudorandom otherwise.
txt_file_name = '225_sequence_' ; % name of the text files should end in a underscore
ntrls= 125; %amount of total trials for 1 block
nblcks= 50; % amount of files the script makes (need 50 for the experiment)

for b = 1:nblcks
    
    sequence = [];
    
    mini_seq_len = 100;
    
    for j = 1:ntrls/mini_seq_len
        
        standard_vec = ones(1,mini_seq_len*0.85);
        deviant_vec = 2.*ones(1,mini_seq_len*0.15);
        seq = [standard_vec deviant_vec];
        
        valid_seq = 0;
        while ~valid_seq
            
            seq = seq(randperm(length(seq)));
            
            valid_seq = 1;
            
            for i= 1:5 %making sure that there is no deviant in the first 5 stim
            if seq(i) == 2 
                valid_seq = 0;
            end
            end
            
            for i = 2:length(seq) %this loop makes sure that there are at least 2 STD between a DEV
                if i == 2 
                    if seq(i) == 2 && seq(i-1) == 2
                        valid_seq = 0;
                    end
                elseif seq(i) == 2 && (seq(i-1) == 2 || seq(i-2) == 2)
                    valid_seq = 0;
                end
            end
            
            if seq(end) == 2 || seq(end-1) == 2
                valid_seq = 0;
            end
            
        end
        
        sequence = [sequence seq];
        
    end
    
    if any(diff(find(sequence==2))<3)
        disp('Something''s wrong here!!')
        keyboard
    end
    
    % Print the sequence into a text file
    
    fname = sprintf([txt_file_name '%d.txt'],b);
    fid = fopen(['C:\Users\dohorsth\Documents\GitHub\Oddball_experiments\src\Visual_Oddball_duration\Presentation Files\sequences\' fname],'w');
    for n = 1:length(sequence)
        fprintf(fid,'%d\n',sequence(n));
    end
    fclose(fid);
    
end
