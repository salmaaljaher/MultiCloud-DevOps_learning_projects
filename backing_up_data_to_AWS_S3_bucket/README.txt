this is a simple bash script to back up data and upload it to S3 bucket 


1 - through the AWS console , created a user with the S3 full access premession , created a secret access key to the user  
2 - created a role with two premissions , one : s3 full access , two : ssm full access 
3 - attatched the ec2 instance to the IAM role 
4 - after creating a directory in the ecs2 linux instance , downloaded the s3 package 
5 - sat up the aws configration in the CLI , Typing the access key ID that has been created for the user role we have created in the aws console , and its secret access key 
6 - created an S3 bucket using the linux CLI 
command : aws s3api creat-backut --bucket s3-backet-backup-script-in-bash-salma --region us east-2

script explnation

first :
**initialzing 7 variables**

- time : storing the exact time during the backup (later will be used in the name of the backup file )

- Backup_file : this is going to be the first argument (the folder or the file path that the user would like to backup )

- Dest : this is going to be used in 2 functionaliies , one : to creat the backup folder in the desired path . two : to show the user the backup path after the script is done .

- filename : this is going to be the name of the backup file adding to it the timing of the back up so we can know when was the last time the script preformed the back up

- LOG_FILE : this is the name of the file that we are going to store information about every time we have used the script , whether successfully or not

- S3_BACKET : tihs variable stores the name of the S3 bucket 

- File_To_Upload : this is going to be the path of the file that we're going to upload to the S3 bucket 

Second : 

**Logic explnation**

this first if statment is checking whether the user has aploaded the AWS CLI package or not 

if not thiis will indicate an error 

the next if statment is checking whether the previos if statment ended with an error or not 

if not , the next if statmnet is going to check if the file has been alreadu made before or not , by comparing the name that inculdes the timing 

if not exited before , the next else statment is going to creat a compressed file for the folder that we need to back up 

and then we're going to copy it to the S3 bucket using "aws s3 cp "$FILE_TO_APLOAD"  to the destination that is stored in the variable $S3_BUCKET 

after ending the if statment that is checking whether the file has existed before or not 


the next if statemnt is going check the exit status of the previos if statment , if equal 0 we are going to print that the file has been aploaded successfully 

else , if the exit doen't equal 0 this going to print that the opreation is failed 
