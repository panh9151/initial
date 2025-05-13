# install.ps1

. "$PSScriptRoot\config.ps1"

# Install extensions if missing
$installed = code --list-extensions
foreach ($ext in $Extensions) {
  if (-not ($installed -contains $ext)) {
    Write-Host "➕ Installing: $ext"
    code --install-extension $ext
  } else {
    Write-Host "✅ Exists: $ext"
  }
}

# Add keybindings
$keyPath = "$env:APPDATA\Code\User\keybindings.json"
$dir = Split-Path $keyPath
if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force }

if (Test-Path $keyPath) {
  $existing = Get-Content $keyPath -Raw | ConvertFrom-Json
} else {
  $existing = @()
}

foreach ($bind in $Keybindings) {
  if (-not ($existing | Where-Object { $_.key -eq $bind.key -and $_.command -eq $bind.command })) {
    $existing += $bind
  }
}

$existing | ConvertTo-Json -Depth 10 | Set-Content $keyPath -Encoding utf8

# Add snippets
$snippetDir = "$env:APPDATA\Code\User\snippets"
$snippetPath = Join-Path $snippetDir "php-css.code-snippets"
if (-not (Test-Path $snippetDir)) { New-Item -ItemType Directory -Path $snippetDir -Force }

if (Test-Path $snippetPath) {
  $existingSnippets = Get-Content $snippetPath -Raw | ConvertFrom-Json
  foreach ($k in $Snippets.Keys) {
    $existingSnippets[$k] = $Snippets[$k]
  }
} else {
  $existingSnippets = $Snippets
}

$existingSnippets | ConvertTo-Json -Depth 10 | Set-Content $snippetPath -Encoding utf8

Write-Host "`n🎉 VS Code (extensions, keybindings, snippets) setup successfully"
