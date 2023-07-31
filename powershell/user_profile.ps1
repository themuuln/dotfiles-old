# Alias
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias g git
Set-alias ll ls
Set-Alias c clear

# Starship
Invoke-Expression (&starship init powershell)

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module -Name Terminal-Icons

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
