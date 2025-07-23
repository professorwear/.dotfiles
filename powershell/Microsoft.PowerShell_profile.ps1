function show_saved_history {
	Get-Content (Get-PSReadlineOption).HistorySavePath
}

Set-PSReadLineKeyHandler -Key ctrl+u -Function BackwardKillLine
Set-PSReadLineKeyHandler -Key Ctrl+a -Function BeginningOfLine
Set-PSReadLineKeyHandler -Key Ctrl+e -Function EndOfLine
Set-PSReadLineKeyHandler -Key Ctrl+k -Function KillLine
Set-PSReadLineKeyHandler -Key Ctrl+w -Function BackwardKillWord

Set-Alias -Name "vim" -Value "nvim"
Set-Alias -Name "history" -Value "show_saved_history"
