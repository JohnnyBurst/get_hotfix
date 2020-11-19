#Create text file in c:\temp\ with server names in it.
#Open powershell as admin. Run following scripts sequentially

$Computers = Get-content "c:\temp\servers.txt"
Get-hotfix -id "kbnumber" -computername $Computers | Export-Csv -Path c:\temp\hotfix.csv -NoTypeInformation
