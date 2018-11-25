#Domain Join
Get-NetAdapter | Set-DnsClientServerAddress -ServerAddresses ("192.168.1.4","8.8.8.8")
$username = "CONTOSO\adfsadmin" 
$password = "Password123#" | ConvertTo-SecureString -asPlainText -Force

$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName contoso.com -Credential $credential -Restart -Force

