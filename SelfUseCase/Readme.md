## Self UseCase
As a project is running in the server and as unfortunately it got crashed and to check what is the problem we have to check for the log file for the last entry of the log and as with that log we can able to rectify the problem and re run the project.

# Excecution Instruction 
    Python filename.py

# Sample Input/Output
    # Input
        Get a Logfile as a static input
    # Output
        Last Log is : Crashed due to overload.

# Improvements
    As the program is done for the static files but we can also make it for the dynaamic files

# Code
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

