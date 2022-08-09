# Active-Directory-Auto-Account
Powershell Script that automates the process of manually created accounts.

To run the script you must make a .CSV file with the following fields. 

    $Firstname 
    $Lastname 
    $Initials 
    $Displayname
    Description 
    $Telephone 
    $Email 
    
Once you have the CSV files with the Users information added change line 10:( $userfile = Import-Csv C:\#FILE PATH#.csv ) with YOUR file path.

Now run the script!
