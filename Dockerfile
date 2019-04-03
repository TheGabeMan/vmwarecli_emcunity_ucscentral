# Steps to load mysqli modules and git and place the website
# 
FROM mcr.microsoft.com/windows/servercore:1809

# Start PowerShell
SHELL [ "pwsh", "-command" ]

# Install VMware PowerCLI
# Install EMC Unity PowerCLI
# Install UCS Central Module
RUN Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
RUN Install-Module -Name VMware.PowerCLI,Unity-Powershell,Cisco.UCSCentral
