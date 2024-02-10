# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
# oh-my-posh init pwsh --config 'C:\Users\nmvarinder\.config\powershell\nmvarinder.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config 'C:\Users\nmvarinder\.config\powershell\clean-detailed.omp.json' | Invoke-Expression
# oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/1_shell.omp.json' | Invoke-Expression


# Terminal-Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr


# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
