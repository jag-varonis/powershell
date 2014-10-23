Import-Module Varonis -Force -ArgumentList $args

Write-Host $ruleID " is the Rule ID"
Write-Host $ruleName " is the Rule Name"
Write-Host $alertTime " is the Alert Time"
Write-Host $eventTime " is the Event Time"
Write-Host $actingObject " is the Acting Object"
Write-Host $fileServerDomain " is the File Server Domain"
Write-Host $path " is the Path"
Write-Host $affectedObject " is the Affected Object"
Write-Host $eventType " is the Event Type"
Write-Host $ipAddressHost " is the IP Address / Host"
Write-Host $severity " is the Severity"


# Invoke in Powershell with:
#
#     test-varonis-module.ps1 "ruleID" "ruleName" "alertTime" "eventTime" "actingObject" "fileServerDomain" "path" "affectedObject" "eventType" "IP Address / Host" "severity"
#
