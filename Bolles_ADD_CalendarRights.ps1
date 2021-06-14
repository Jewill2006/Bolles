$domain = "@bolles.org"
$target = Read-Host -Prompt "Enter TARGET address"
$targetaccount = $target + $domain
$cal = $targetaccount+":\calendar"
Connect-ExchangeOnline
Get-EXOMailboxFolderPermission $cal
$grantedUser = Read-host -prompt "Enter username to grant permission" 
$domuser = $grantedUser + $domain
$reviewer = "Add-MailboxFolderPermission $cal -user $domuser -AccessRights reviewer"
$Editor = "Add-MailboxFolderPermission $cal -user $domuser -AccessRights editor"
$Author = "Add-MailboxFolderPermission $cal -user $domuser -AccessRights author"
$Owner = "Add-MailboxFolderPermission $cal -user $domuser -AccessRights owner"
$reviewer
$Editor
$Author
$owner

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