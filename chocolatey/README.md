Here is the Userdata for Cloudbase-Init Userdata
```
#ps1_sysnative

$apps = 'notepadplusplus.install','firefox','windirstat','putty','winscp','7zip'
$strTempFile = [System.IO.Path]::GetTempFileName() + ".ps1"
(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/nniehoff/windows-cloudinit/master/chocolatey/install.ps1') | Set-Content $strTempFile
& $strTempFile -AppsToInstall $apps
Remove-Item $strTempFile
```
