param (
    [string[]]$AppsToInstall = @()
)

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

foreach ($app in $AppsToInstall)
{
    try
	{
 	   choco install -y $app
	}
	catch
	{
		Write-Host "$app Failed"
	}
}

