# Find Disk usage and Threshold value
  The objetive is to check the disk usage and to compaire with threshold value and if it exceeded it should be marked in the log file

## Execution Instruction
  ./Filename.sh

## Improvements
  I've got some errors need to solve in this.

## Code
  Threshold=80
  Usage=df 
  Log="Application_Log.txt"
  if [$Usage -gt $Threshold] then
      Date=$(date +%Y-%m-%d)
      echo "Threshold Limit exceeded $Usage $Date" >> Log
