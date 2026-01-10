#!/bin/bash

CSV_FILE="employee.csv"
#!/bin/bash
read -p "enter your username: " user
read -p "enter your full-name: " name

INFO=$user,$name

read -p "please confirm that you have the correct information . Is everything correct? y/n: " input

case $input in
        N | n )
                exit
                ;;
        Y | y )
                echo $INFO >> employee.csv
                ;;
        *)
                exit
                ;;
esac

echo "your data has been stored succesfully "
