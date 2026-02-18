# Delete the Old Log
  The Objective is to compress the log file and also we need to maintain the compressed log at the given number of days and te rest compressed files should be deleted.

## Execution Instruction
  ./Filename.sh

## Sample Input/Output
  #Input
    set the backup folder location and the logfiles.
  #Output
    Created Backup!

## Improvements
  The script can be more efficient and can add error handling

## Code
  #!/bin/bash
  BackUp="backup"
  mkdir -p $BackUp
  cd $BackUp || echo "Failed to move to that directory"
  Date=$(date +%Y-%m-%d)
  tar -czf "backup_$Date.tar.gz" . 
  find "$BackUp" -name "*.tar.gz" -mtime +7 -delete
  echo "Created Backup!"
  
