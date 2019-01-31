Here is the Userdata for Cloudbase-Init Userdata
```
$apps = 'notepadplusplus','firefox','windirstat','putty','winscp'
$strTempFile = [System.IO.Path]::GetTempFileName() + ".ps1"
(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/nniehoff/windows-cloudinit/master/chocolatey/install.ps1') | Set-Content $strTempFile
& $strTempFile -AppsToInstall $apps
Remove-Item $strTempFile
```
