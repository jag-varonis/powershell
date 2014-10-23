# This script schould be integrated into the switcher.ps1 script called from DatAlert
# which handles the logic of which script is associated with which rule.
# 
# The variables from DatAlert will not be available in this script otherwise.
# 
# This script relies upon the Send-MailMessage CmdLet
# 
# Official MSDN Documentation at: http://msdn.microsoft.com/en-US/us-en/windows/hh849925
#
# Email Customization Variables
# 
# Receipient (sysadmin to receive the alert)
$recipientEmail = 'sysadmin@example.com'

# From Email - will need to be an account with access to send email
$fromEmail = 'alerts@example.com'

# SMTP Server
$smtpServer = 'mail.example.com'


send-mailmessage -to $recipientEmail -from $fromEmail -SmtpServer $smtpServer -subject "Varonis Alert: $($ruleName) of user $($affectedObject) on $($ipAddressHost)/$($path)"