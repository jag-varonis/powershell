Import-Module Varonis -Force -ArgumentList $args

remove-adgroupmember $affectedObject $actingObjects -Confirm $false