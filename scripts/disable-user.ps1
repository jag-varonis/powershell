Import-Module Varonis -Force -ArgumentList $args
 
$actingObject = $args[0].trimstart("domain.com\")
$user = get-aduser -identity $actingObject | get-aduser -properties * | select samAccountName
Disable-ADAccount -Identity $user
