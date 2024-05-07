$mintpath = Join-Path -Path $HOME -ChildPath "mint"
$packagespath = Join-Path -Path $mintpath -ChildPath "Packages"
$codepath = Join-Path -Path $mintpath -ChildPath "Scripts"

#$rizz = Join-Path -Path "$codepath" -ChildPath "about.psm1"
#Import-Module $codepath\settings.psm1


$mintpath = Join-Path -Path $HOME -ChildPath "mint"
$packagespath = Join-Path -Path $mintpath -ChildPath "Packages"

Function echog($string) {
   Write-Host $string -ForegroundColor green
}

Function echor($string) {
    Write-Host $string -ForegroundColor red
}

Function echow($string) {
    Write-Host $string -ForegroundColor white
}

Function echoy($string) {
    Write-Host $string -ForegroundColor yellow
}

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

Function mint($cmdd, $param) {
    if ($cmdd -eq 'about') {
        echow "                                        "
        echow "                                        "
        echow "         .-         @@++=@              "
        echow "       .++*%@@@      @@++@%   .         "
        echow "      %@@@@@%*@@@     @*+@      @#      "
        echow "     @@*   %@@@@@@@   @*@@     @@*-     "
        echow "                @@@@  @@@     @@+++:    "
        echow "     .            @@ @@%    @@@++@@@   "
        echow "        -@@@@@@@@@- @.   @@@@%@@@@     "
        echow "      @@@%%@@@@   @@. @@@@@@@@@    *    "
        echow "    #@#=+%@@    @@@ @@                  "
        echow "     +*-%@     @@@  @@@@@               "
        echow "     =*@@     @@*@   =@@@@@@@@@@@@@     "
        echow "      *@     :@+*@     @@@*+++++--     "
        echow "             @@++@@      @@@@*+=:      "
        echow "                                       "
        echow "                                       "
        echog 'Mint CLI'
        echow "Keep your packages Minty fresh!"
        echog '-------------------------------------------------'
        echow ""
        echog 'Version: '
        echow 'Beta 1.0.0'
        echog '-------------------------------------------------'
        echog Author:
        echow 'Cuxdi'
        echog '-------------------------------------------------'
        echog "Status:"
        echow "Latest Version, no need to update."
        echog "-------------------------------------------------"
        echor "Made with love."
    }

    if ($cmdd -eq 'install') {
        if ($null -eq $param) {
            echor "Usage: mint install [PACKAGE]"
        }
        if ($param -eq 'helloworld') {
            devins "helloworld" "https://github.com/PedroClericuzi1901/HelloWorld_Bash_PowerShell.git"
         
        }
    
        if ($param -eq 'neofetch' -or $param -eq 'mintfetch') {
            devins "mintfetch" "https://github.com/Mint-CLI/mintfetch.git" "This package has been installed as mintfetch. When referring to it, please use that name."
        }
    }

    if ($cmdd -eq "get") {
        if ($param -eq "version") {
            echog "Mint CLI Version: "
            echow "Beta 1.0.0"
        }
        if ($param -eq "ip") {
            echog "Your IPv4: "
            Invoke-RestMethod -Uri "https://api.ipify.org" | Write-Output
        }
}   }