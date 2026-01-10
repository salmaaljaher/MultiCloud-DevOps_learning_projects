those are two scripts to create and manage user's passwords 



**data script**

prompting the user to enter the user name and the full name 
then store it in a variable $INFO

then checking with the user if the input was correct , if not the script will be stopped . in case the input was correct this going to print the user information to a csv file and print in the screen that the user has been created successfully 




**user script**

creating a variable that stores the previous csv file that has been created after executing data.sh 

the first if statement checks if the user who's running the script is a root user or not 
if not that will print an error 

if the user is a root that will move us to the next section of the code 

considering the field separator in the CSV file the while loop is going to read the name and the user name 
and then we will create a new password using the encryption method rand base64 12 

then we are going add the user using the command adduser

then connecting the user name with the password 

prompting the user to forcibly changing the password by telling the system that the password wasn't changed a long time ago 

printing all the information that has been created to the screen 



