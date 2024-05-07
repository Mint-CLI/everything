Write-Output "This is the installer for Mint CLI."

$mintpath = 'mint'

if (Test-Path $mintpath){
    Write-Output "Mint CLI is already installed."
    Write-Output "If you want to reinstall, please delete the folder mint in your home directory."
    exit
 }

if (!(Test-Path $mintpath)){
    $confirmation = Read-Host "Are you sure you want to proceed with the installation? (y or n)"
    if ($confirmation -eq 'y') {
        Write-Output "Starting installation.."
        New-Item -Path $mintpath -ItemType Directory
        New-Item -Path $mintpath/Packages -ItemType Directory
        New-Item -Path $mintpath/Code -ItemType Directory
    }

    if ($confirmation -eq 'n') {
        Write-Output "Aborted installation."
        exit
    }
 }

