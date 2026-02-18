import os

log_F="Application_log.txt"
if not os.path.exists(log_F):
    print("File not found!")
    exit(1)
try:
    log_text=None
    with open(log_F,"r")as log:
        for read in log:
            log_text=read
    print("Last log is : ",log_text)
except Exception as e:
    print("Something went wrong : ",e)