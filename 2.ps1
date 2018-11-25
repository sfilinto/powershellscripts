$dfqdn = "contoso.com"
$dnetb = "CONTOSO"
$fmode = "Win2012"
$dmode = "Win2012"
$password = ConvertTo-SecureString "Password123#" -AsPlainText -Force

Install-windowsfeature -name AD-Domain-Services –IncludeManagementTools
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode $dmode -DomainName $dfqdn -DomainNetbiosName $dnetb -ForestMode $fmode -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true -safemodeadministratorpassword $password
