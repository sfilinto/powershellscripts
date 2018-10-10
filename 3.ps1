#Domain Join
Get-NetAdapter | Set-DnsClientServerAddress -ServerAddresses ("192.168.1.4","8.8.8.8")
$username = "abc\xyz" 
$password = "pqrs" | ConvertTo-SecureString -asPlainText -Force

$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName abcd.com -Credential $credential -Restart -Force

