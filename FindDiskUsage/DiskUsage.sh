Threshold=80
Usage=df 
Log="Application_Log.txt"
if [$Usage -gt $Threshold] then
    Date=$(date +%Y-%m-%d)
    echo "Threshold Limit exceeded $Usage $Date" >> Log
