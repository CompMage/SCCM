Configuration SCCMDistro {

    param
        (
        [string[]]$ComputerName = 'localhost'
        )

    node $ComputerName 
{

    LocalConfigurationManager 
        {
            ConfigurationMode = "ApplyAndAutoCorrect"
            ConfigurationModeFrequenceMins = 15
            RefreshMode = "Push"
        }


WindowsFeature "File and Storage Services" { Name = "FileAndStorage-Services" Ensure = "Present" DependsOn = @("[WindowsFeature]") }

WindowsFeature "File and iSCSI Services" { Name = "File-Services" Ensure = "Present" DependsOn = @("[WindowsFeature]File and Storage Services") }

WindowsFeature "File Server" { Name = "FS-FileServer" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Storage Services" { Name = "Storage-Services" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Web Server (IIS)" { Name = "Web-Server" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Web Server" { Name = "Web-WebServer" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Common HTTP Features" { Name = "Web-Common-Http" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Default Document" { Name = "Web-Default-Doc" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Directory Browsing" { Name = "Web-Dir-Browsing" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "HTTP Errors" { Name = "Web-Http-Errors" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Static Content" { Name = "Web-Static-Content" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "HTTP Redirection" { Name = "Web-Http-Redirect" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Health and Diagnostics" { Name = "Web-Health" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "HTTP Logging" { Name = "Web-Http-Logging" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Logging Tools" { Name = "Web-Log-Libraries" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Request Monitor" { Name = "Web-Request-Monitor" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Tracing" { Name = "Web-Http-Tracing" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Performance" { Name = "Web-Performance" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Static Content Compression" { Name = "Web-Stat-Compression" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Security" { Name = "Web-Security" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Request Filtering" { Name = "Web-Filtering" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Basic Authentication" { Name = "Web-Basic-Auth" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "IP and Domain Restrictions" { Name = "Web-IP-Security" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "URL Authorization" { Name = "Web-Url-Auth" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Windows Authentication" { Name = "Web-Windows-Auth" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Application Development" { Name = "Web-App-Dev" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature ".NET Extensibility 4.6" { Name = "Web-Net-Ext45" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "ASP.NET 4.6" { Name = "Web-Asp-Net45" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "ISAPI Extensions" { Name = "Web-ISAPI-Ext" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "ISAPI Filters" { Name = "Web-ISAPI-Filter" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Management Tools" { Name = "Web-Mgmt-Tools" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "IIS Management Console" { Name = "Web-Mgmt-Console" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "IIS 6 Management Compatibility" { Name = "Web-Mgmt-Compat" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "IIS 6 Metabase Compatibility" { Name = "Web-Metabase" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "IIS 6 WMI Compatibility" { Name = "Web-WMI" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "IIS Management Scripts and Tools" { Name = "Web-Scripting-Tools" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Windows Deployment Services" { Name = "WDS" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Deployment Server" { Name = "WDS-Deployment" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Transport Server" { Name = "WDS-Transport" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature ".NET Framework 4.6 Features" { Name = "NET-Framework-45-Fea..." Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature ".NET Framework 4.6" { Name = "NET-Framework-45-Core" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "ASP.NET 4.6" { Name = "NET-Framework-45-ASPNET" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "WCF Services" { Name = "NET-WCF-Services45" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "HTTP Activation" { Name = "NET-WCF-HTTP-Activat..." Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Message Queuing (MSMQ) Activation" { Name = "NET-WCF-MSMQ-Activat..." Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Named Pipe Activation" { Name = "NET-WCF-Pipe-Activat..." Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "TCP Activation" { Name = "NET-WCF-TCP-Activati..." Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "TCP Port Sharing" { Name = "NET-WCF-TCP-PortShar..." Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Background Intelligent Transfer Service (BITS)" { Name = "BITS" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "IIS Server Extension" { Name = "BITS-IIS-Ext" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Message Queuing" { Name = "MSMQ" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Message Queuing Services" { Name = "MSMQ-Services" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Message Queuing Server" { Name = "MSMQ-Server" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Remote Differential Compression" { Name = "RDC" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Remote Server Administration Tools" { Name = "RSAT" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Feature Administration Tools" { Name = "RSAT-Feature-Tools" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "BITS Server Extensions Tools" { Name = "RSAT-Bits-Server" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Role Administration Tools" { Name = "RSAT-Role-Tools" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Windows Deployment Services Tools" { Name = "WDS-AdminPack" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "SMB 1.0/CIFS File Sharing Support" { Name = "FS-SMB1" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Windows PowerShell" { Name = "PowerShellRoot" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Windows PowerShell 5.1" { Name = "PowerShell" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Windows PowerShell ISE" { Name = "PowerShell-ISE" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Windows Process Activation Service" { Name = "WAS" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Process Model" { Name = "WAS-Process-Model" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "Configuration APIs" { Name = "WAS-Config-APIs" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }

WindowsFeature "WoW64 Support" { Name = "WoW64-Support" Ensure = "Present" DependsOn = @("[WindowsFeature]Depend") }


}