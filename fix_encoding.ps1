# Convert all .tex, .md and .txt files in the project to UTF-8 (no BOM)
$files = Get-ChildItem -Recurse -Include *.tex, *.md, *.txt

foreach ($file in $files) {
    Write-Host "Converting:" $file.FullName
    $content = Get-Content $file.FullName -Raw
    $utf8NoBomEncoding = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBomEncoding)
}

Write-Host "`n✅ All files converted to clean UTF-8 encoding.`n"