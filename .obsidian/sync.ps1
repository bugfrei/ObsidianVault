$path = "/Users/carstenschlegel/Library/Mobile Documents/iCloud~md~obsidian/Documents/SUPORTIS/.obsidian"


Set-Clipboard "`$data = (Get-Content ./plugins/obsidian-style-settings/data.json -Raw | ConvertFrom-Json);`n`$color = `$data.`"custom-backgrounds@@pane-color`";copy `"$path/*`" . -Exclude backcolor.css -Recurse -Force;`n`$data = (Get-Content ./plugins/obsidian-style-settings/data.json -Raw | ConvertFrom-Json);`n`$data.`"custom-backgrounds@@pane-color`" = `$color;`n`$s = ConvertTo-Json `$data;`nSet-Content ./plugins/obsidian-style-settings/data.json `$s -Force;"

Write-Host "In den Ziel-Ordner (.obsidian) wechseln und Zwischenablage einfügen/ausführen"

