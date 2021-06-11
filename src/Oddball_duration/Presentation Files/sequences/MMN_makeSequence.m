

% make a sequence for oddball paradigm with the following rules:
% -> 1 = standard, 2 = deviant.
% -> A deviant has to be preceded by at least 2 standards
% -> standards comprise 85% of the sequence and deviants 15%
% -> the sequence is pseudorandom otherwise.
ntrls= 125;
nblcks= 50;
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
            
            
            
            for i = 2:length(seq)
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
    
    fname = sprintf('any_sequence_%d.txt',b);
    fid = fopen(['C:\Users\dohorsth\Dropbox (EinsteinMed)\Ana and Douwe - work\cystinosis paradigms\oddball\Oddball_duration\Presentation Files\sequences\' fname],'w');
    for n = 1:length(sequence)
        fprintf(fid,'%d\n',sequence(n));
    end
    fclose(fid);
    
end
