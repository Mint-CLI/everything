# test functions and features to use in real code 

$mintpath = Join-Path -Path $HOME -ChildPath "mint"
$packagespath = Join-Path -Path $mintpath -ChildPath "Packages"

$packagespath

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
Function mintascii() {
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

}