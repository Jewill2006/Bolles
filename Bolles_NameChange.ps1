# Make change to username in AD FIRST
$Change = "MAKE CHANGES IN AD FIRST BEFORE CONTINUING"
$Change
Connect-MsolService
$Change
$Change
$domain = "@bolles.org"
$Current = Read-Host -Prompt "Enter CURRENT address"
$targetaccount = $current + $domain
$grantedUser = Read-host -prompt "Enter proposed NEW username" 
$NewUserAccount = $grantedUser + $domain
Set-MsolUserPrincipalName -UserPrincipalName $targetaccount -NewUserPrincipalName $NewUserAccount
