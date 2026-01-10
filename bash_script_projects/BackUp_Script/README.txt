this is a simple script to back up a file and we can edit crontab file to schedual it to make an automated backup

script explnation 

first :
**initialzing 5 variables**

- time : storing the exact time during the backup (later will be used in the name of the backup file )

- Backup_file : this is going to be the first argument (the folder or the file path that the user would like to backup )

- Dest : this is going to be used in 2 functionaliies , one : to creat the backup folder in the desired path . two : to show the user the backup path after the script is done .

- filename : this is going to be the name of the backup file adding to it the timing of the back up so we can know when was the last time the script preformed the back up

- LOG_FILE : this is the name of the file that we are going to store information about every time we have used the script , whether successfully or not 


second 

**The Logic**
- checking if the user typed any folder name as an argument or not , if not we will print a statment , then we are going to store this failure in logfile.log 

- checking if the last condition ended with exit 2 or not. if not , we have two cases :
1- if the file has been already backed up before , and that will be done by comparing the name of the file that is going to be created and with any file in the directory that we have created for backups , this is where the variable $filename and $time is important , that is not going to be usefull to back  up a file that has been already backed up a second ago 

2- if the file hasn't been backed up a second ago , we are going to create the compressed folder that will contain the folder that we want to backup , in the destination that is determind using the path of the two variables $Dest and $filename (that contains the time ) . then the statment that we have backed up the file successfully !



