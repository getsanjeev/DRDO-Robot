x = 1;
%w = waitforbuttonpress;
prev_read = dataread('file', 'sent.txt', '%s', 'delimiter', '\n'); 
prev_line = length(prev_read);
while x  
  reading = dataread('file', 'sent.txt', '%s', 'delimiter', '\n'); 
  lines = length(reading);
  if(lines > prev_line)
      disp ('QWERTY');
      fileID = fopen('instruction.txt','w');      
      fprintf(fileID, '%s\n','go Left bot');
      fclose(fileID);            
      %code goes here
  end
  prev_line = lines;
  pause(1);      
end