# export.ps1

. "$PSScriptRoot\config.ps1"

# Export keybindings
$keyOut = Join-Path (Get-Location) "exported/keybindings.json"
$Keybindings | ConvertTo-Json -Depth 10 | Set-Content $keyOut -Encoding utf8
Write-Host "Exported keybindings to $keyOut"

# Export snippets
$snippetOut = Join-Path (Get-Location) "exported/snippets.code-snippets"
$Snippets | ConvertTo-Json -Depth 10 | Set-Content $snippetOut -Encoding utf8
Write-Host "Exported snippets to $snippetOut"

# Format using Prettier from pnpm (via npx or direct path)
npx prettier --write $keyOut
npx prettier --write $snippetOut

Write-Host "Formatted exported files using Prettier from pnpm."
