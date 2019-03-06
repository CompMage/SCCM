# Install Agent First
.\CLIENT\ccmsetup.exe SMSSITECODE=ABC SMSMP=SCCM02.DOMAIN.Local /forceinstall

Add-LocalGroupMember -Group "Administrators" -Member DOMAIN\Enterprise-SCCM-Admins, DOMAIN\Enterprise-SCCM-Servers

Import-Module ServerManager

# The Features.txt file must be in the working folder.
$(Get-Content .\SITECODE_SCDP_Features.txt) | Add-WindowsFeature

# Set the firewall rules to allow file share
set-netfirewallrule -displaygroup "File and Printer Sharing" -enabled true

# Consider Removing from C after Setup, can block Client Agent Updates
New-Item C:\no_sms_on_drive.sms -ItemType file
New-Item C:\no_sms_on_drive.sms -ItemType file
New-Item C:\no_sms_on_drive.sms -ItemType file