$domain = "@bolles.org"
$target = Read-Host -Prompt "Enter TARGET address"
$targetaccount = $target + $domain
$cal = $targetaccount+":\calendar"
Connect-ExchangeOnline
## Get-EXOMailboxFolderPermission $cal
Get-MailboxFolderPermission -Identity $cal| Select-Object User, AccessRights, Deny
$grantedUser = Read-host -prompt "Enter username to REMOVE permission" 
$domuser = $grantedUser + $domain
$reviewer = "Remove-MailboxFolderPermission $cal -user $domuser"
$reviewer
## $message = "What permission would you like to grant?"
## $options = ($reviewer, $Editor, $Author, $owner)
## $result = $host.ui.promptforchoice($message, $option, 0)
## switch ($result)
## {
## 0 {'Your choice was Reviewer'}
## 1 {'Your choice was Editor'}
## 2 {'Your choice was Author'}
## 3 {'Your choice was Owner'}
## }