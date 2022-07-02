# commit-msg.ps1

param(
    [string]$MessageFile
)

$message = Get-Content $MessageFile

if (-not ($message -match '^[A-Z]+-\d+:\x20')) {
    Write-Host 'Jira issue prefix required, for example "ABC-123:"'
    exit -1
}
