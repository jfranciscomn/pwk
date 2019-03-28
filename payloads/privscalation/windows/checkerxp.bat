systeminfo 

hostname

echo %username%

net users

ipconfig /all

route print

arp -A

netstat -ano

netsh firewall show state

netsh firewall show config

schtasks /query /fo LIST /v

tasklist /SVC

net start

DRIVERQUERY

wmic /?

wmic qfe get Caption,Description,HotFixID,InstalledOn

reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated

reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated

cd c:\users
cd "c:\Documents and Settings"

dir /s *pass* == *cred* == *vnc* == *.config*

findstr /si password *.xml *.ini *.txt *.conf *.cofig

reg query HKLM /f password /t REG_SZ /s

reg query HKCU /f password /t REG_SZ /s