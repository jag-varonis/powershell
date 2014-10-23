#Varonis PowerShell Resources

![](https://github.com/varonis/assets/logos.png)


This repository is a collection of PowerShell scripts, modules and resources to extend the functionality of the Varonis Software Suite.

--- 

## Current Status

The scripts included in this repository are being actively worked on and should not be considered ready for production use. It is expected that the names and directions will most likely undergo large breaking changes.

They are provided here for review and community input as we work to test, document and release them.

## Getting Started

### Prerequisites

- PowerShell 3.0
- DatAlert 5.9+
- Admin Rights for Installation

### Getting Started

#### 1. Install the Varonis PowerShell Module
In the root of the repository is a file: `varonis.psm1` which should be copied to:

`%UserProfile%\Documents\WindowsPowerShell\Modules\Varonis`

Alternatively, the PSModulePath could be extended or an alternate location specified. Instructions for making these modifications can be found on MSDN at:

[http://msdn.microsoft.com/en-us/library/dd878350.aspx](http://msdn.microsoft.com/en-us/library/dd878350.aspx)

You can test if you have included the module by executing the `test-varonis-module.ps1` script with the following series of parameters:

```powershell
test-varonis-module.ps1 "ruleID" "ruleName" "alertTime" "eventTime" "actingObject" "fileServerDomain" "path" "affectedObject" "eventType" "IP Address / Host" "severity"
```

Which should check that the variables are being mapped and exported correctly.

#### 2. Configure an Alert Template in Varonis DatAlert

The Varonis PowerShell Module relies upon a specific configuration of the Real Time Alert Template. A new Real Time Alert Template should be created that has the following format:

```powershell
<Rule ID> <Rule Name> <Alert Time> <Event Time> <Acting Object> <File Server/Domain> <Path> <Affected Object> <Event Type> <IP Address/Host> <Additional Data> <Severity>
```

The field order of the template must exactly match that of the above or variables won't be passed correctly into the PowerShell scripts as they are called.

#### 3. Set the Alert Method

Rules can be edited to include multiple Alert Methods - to enable PowerShell scripting you'll need to check 'Command-line script' under Edit Rule > Alert Method.

It is important that you setup the Command Line Alert Template first or the 'Command-line script' Alert Method checkbox will be disabled.

#### 4. Import the Varonis Module to a PowerShell Script

At the beginning of a new PowerShell script, include the following line:

`Import-Module Varonis -Force -ArgumentList $args`

This will pass the arguments specified in the Alert Template into the script as referenceable variables. 

This greatly improves the ease with which new scripts can be written as the variables are exposed as first class PowerShell objects; which will be available in PowerShell ISE and behave accordingly. 

The variables are:

```powershell
	$ruleID
	$ruleName
	$alertTime
	$eventTime
	$actingObject
	$fileServerDomain
	$path
	$affectedObject
	$eventType
	$ipAddressHost
	$severity
```

This greatly simplifies the development of scripts, often to a single line:
	
ex: 
```powershell
Disable-ADAccount -Identity $actingObject
```

Additional example scripts utilizing this technique are included in the `scripts` directory. 

---- 

We welcome feedback on this ongoing project in our Varonis Connect Developer Community:

[https://connect.varonis.com/community/developer-community](https://connect.varonis.com/community/developer-community)













