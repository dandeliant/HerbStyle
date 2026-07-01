# HerbStyle — automatyczna synchronizacja z GitHub
# Uruchamiany co 5 minut przez Harmonogram zadan Windows.
# Jesli w folderze sa zmiany: commit + push. Jesli nie — konczy sie cicho.

$repo = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $repo
$log = Join-Path $repo 'autosync.log'

function Write-Log($msg) {
    $stamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    Add-Content -Path $log -Value "[$stamp] $msg" -Encoding utf8
}

# czy sa jakiekolwiek zmiany?
$status = git status --porcelain
if (-not $status) { exit 0 }

git add -A | Out-Null
$stamp = Get-Date -Format 'yyyy-MM-dd HH:mm'
git commit -m "Auto-sync: $stamp" | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Log "Blad commita"; exit 1 }

git push origin main 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Log "Wyslano zmiany: $($status.Count) plik(ow)"
} else {
    Write-Log "Blad push — sprawdz polaczenie/logowanie (gh auth status)"
}

# log nie rosnie w nieskonczonosc — zostaw ostatnie 200 linii
if (Test-Path $log) {
    $lines = Get-Content $log
    if ($lines.Count -gt 200) { $lines | Select-Object -Last 200 | Set-Content $log -Encoding utf8 }
}
