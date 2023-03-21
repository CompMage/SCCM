# Setup MECM DP Based on 2103 Req. 

#Transfers Roles from SILCIO-SCDP03 to current server.
Get-WindowsFeature -ComputerName SourceHostName | ? { $_.Installed } | Select Name | foreach{Add-WindowsFeature $_.name}

# The no_sms_on_drive.sms file must be in the working folder. Install Client first.
Write-Host "" | Out-File C:\no_sms_on_drive.sms 
Write-Host "" | Out-File E:\no_sms_on_drive.sms 
Write-Host "" | Out-File P:\no_sms_on_drive.sms 

#Enabling SQL Server Ports
New-NetFirewallRule -DisplayName "SCCM MP Client Port" -Direction Inbound -Protocol TCP -LocalPort 10123 -Action allow
New-NetFirewallRule -DisplayName “SQL Server” -Direction Inbound –Protocol TCP –LocalPort 1433 -Action allow
New-NetFirewallRule -DisplayName “SQL Admin Connection” -Direction Inbound –Protocol TCP –LocalPort 1434 -Action allow
New-NetFirewallRule -DisplayName “SQL Database Management” -Direction Inbound –Protocol UDP –LocalPort 1434 -Action allow
New-NetFirewallRule -DisplayName “SQL Service Broker” -Direction Inbound –Protocol TCP –LocalPort 4022 -Action allow
New-NetFirewallRule -DisplayName “SQL Debugger/RPC” -Direction Inbound –Protocol TCP –LocalPort 135 -Action allow

#Enabling SQL Analysis Ports
New-NetFirewallRule -DisplayName “SQL Analysis Services” -Direction Inbound –Protocol TCP –LocalPort 2383 -Action allow
New-NetFirewallRule -DisplayName “SQL Browser” -Direction Inbound –Protocol TCP –LocalPort 2382 -Action allow

#Enabling Misc. Applications
New-NetFirewallRule -DisplayName “HTTP” -Direction Inbound –Protocol TCP –LocalPort 80 -Action allow
New-NetFirewallRule -DisplayName “SSL” -Direction Inbound –Protocol TCP –LocalPort 443 -Action allow
New-NetFirewallRule -DisplayName “SQL Server Browse Button Service” -Direction Inbound –Protocol UDP –LocalPort 1433 -Action allow

#Enable Windows File and Print
set-netfirewallrule -displaygroup ‘File and Printer Sharing’ -enabled true

#Enable Remote Desktop
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0

#Set Local Permissions
Add-LocalGroupMember -Member CMLAB\Enterprise-SCCM-Admins -Name Administrators
Add-LocalGroupMember -Member CMLAB\Enterprise-SCCM-Primary Site Servers -Name Administrators
Add-LocalGroupMember -Member CMLAB\Enterprise-SCCM-Servers -Name Administrators
Add-LocalGroupMember -Member CMLAB\HQCentral -Name Administrators
