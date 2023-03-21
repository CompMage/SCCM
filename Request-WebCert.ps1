#Before you start, make sure both the host and user have access to request the web certificate. 

#Web Cert Template - You may need to request the exact name from your CA Admin with "Certutil -Templates" Use the Name before the :
$CertTemplateName = "MECM_Web_Cert"

#Gets Host Name
$ME = ([System.Net.Dns]::GetHostByName($env:computerName)).HostName

#Sets Working Cert Location to LocalMachine Personal Store
cd Cert:\LocalMachine\My

#Request the Web Cert
Get-Certificate -Template $CertTemplateName -Url ldap: -DnsName $ME -SubjectName CN=$ME
