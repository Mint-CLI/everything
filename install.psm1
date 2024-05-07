
function devins ($display, $link, $note) {
    Write-Output "Installing $display..."
    mkdir -Path $packagespath -Name $display
    git clone $link "$packagespath\$display" -q > $null
    echog "Installed $display!"
    if ($null -ne $note) {
        echow "____________"
        echog "Notes"
        echow $note
    }
    

}

if ($cmdd -eq 'install') {
    if ($param -eq 'helloworld') {
        devins "helloworld" "https://github.com/PedroClericuzi1901/HelloWorld_Bash_PowerShell.git"
     
    }

    if ($param -eq 'neofetch' -or $param -eq 'mintfetch') {
        devins "mintfetch" "https://github.com/Mint-CLI/mintfetch.git" "This package has been installed as mintfetch. When referring to it, please use that name."
    }
}
 