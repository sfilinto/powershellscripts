#Domain Join
Get-NetAdapter | Set-DnsClientServerAddress -ServerAddresses ("192.168.1.4","8.8.8.8")
$dfqdn = "contoso.com"
$username = "CONTOSO\fabadmin" 
$password = ConvertTo-SecureString "Password123#" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username,$password)

Add-Computer -DomainName $dfqdn -Credential $credential -Restart -Force
