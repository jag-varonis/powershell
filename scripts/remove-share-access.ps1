Import-Module Varonis -Force -ArgumentList $args

Block-SmbShareAccess -Name $affectedObject -AccountName $actingObject -Force