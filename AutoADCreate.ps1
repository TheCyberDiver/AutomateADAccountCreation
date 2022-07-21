#Automating AD Account creation through powershell. Create a CSV and add all of the VARs to it.
#info menu
"***Welcome to the automation tool***"
"***Please click one of the following***"
""
$option1 = Read-Host -Prompt "1. Make AD Accounts `r`n2. Nothing  'r'ninput here"

#if statement for either option
if ($option1 -eq 1) {
  $userfile = Import-Csv C:\#FILE PATH#.csv
 
foreach ($User in $userfile) {

    $Firstname = $User.Firstname
    $Lastname = $User.Lastname
    $Initials = $User.Initials
    $Displayname = $User.Displayname
    Description = $User.description
    $Telephone = $User.Telephone
    $Email = $User.email
    
    New-ADUser "$Firstname, $Lastname, $Initials, $Displayname, $Description, $Telephone, $Email"
    }
    
}else {
"Carry On"
}
