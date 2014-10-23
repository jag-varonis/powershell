Import-Module Varonis -Force -ArgumentList $args

# Rule IDs are listed in the DatAlert Real-Time Alerts screen
# Each Rule ID corresponds to a different command below. 
#
# Inclusion of the Varonis Powershell module passes in the $ruleID variable to this script (when configured)
# Please see: https://github.com/varonis/powershell for directions

# Extend this to match each RuleID that you are passing a Command-line script Alert Method to


switch ($ruleID){

    1 {
        "Rule ID 1 was called"
    }

    2 {
        "Rule ID 2 was called"
    }

    default {
        "Rule ID Not Found"
    }
    
}