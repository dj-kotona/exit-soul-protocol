# Build PDFs for Exit Soul Protocol
# This script uses xelatex for better Unicode and emoji support
# If not installed, you can download TeX Live or MiKTeX

# Create pdf directory if it doesn't exist
if (-not (Test-Path -Path "pdf")) {
    New-Item -ItemType Directory -Path "pdf" | Out-Null
    Write-Host "Created pdf directory"
}

# Function to extract version from TeX file
function Get-DocumentVersion {
    param (
        [string]$TexFile
    )
    
    $content = Get-Content -Path $TexFile -Raw
    $versionPattern = '(?:Version|Versie|Versão|Versión|Версія|バージョン|Wersja)\s+(\d+\.\d+)'
    $match = [regex]::Match($content, $versionPattern)
    
    if ($match.Success) {
        return $match.Groups[1].Value
    } else {
        return "1.00" # Default version if not found
    }
}

# Function to compile a LaTeX file to PDF using XeLaTeX
function Compile-LaTeX {
    param (
        [string]$TexFile
    )
    
    $directory = Split-Path -Parent $TexFile
    $filename = Split-Path -Leaf $TexFile
    
    Write-Host "Compiling $filename using XeLaTeX..."
    
    # Check if xelatex is available
    $xelatex = Get-Command xelatex -ErrorAction SilentlyContinue
    
    if ($xelatex) {
        # Run xelatex command - fixed output-directory parameter
        & xelatex "-output-directory=$directory" $TexFile
        
        # Run it twice to resolve references if needed
        & xelatex "-output-directory=$directory" $TexFile
    } else {
        Write-Host "Error: xelatex not found. Please install TeX Live or MiKTeX." -ForegroundColor Red
        Write-Host "Download from: https://www.latex-project.org/get/" -ForegroundColor Yellow
        Write-Host "Note: Make sure to install the full version to include XeLaTeX." -ForegroundColor Yellow
        exit 1
    }
}

# Files to compile
$texFiles = @(
    "soulpeace\soulpeace_en.tex",
    "soulpeace\soulpeace_fi.tex",
    "soulpeace\soulpeace_uk.tex",
    "soulpeace\soulpeace_fr.tex",
    "soulpeace\soulpeace_es.tex",
    "soulpeace\soulpeace_de.tex",
    "soulpeace\soulpeace_jp.tex",
    "soulpeace\soulpeace_it.tex",
    "soulpeace\soulpeace_pt.tex",
    "soulpeace\soulpeace_nl.tex",
    "soulpeace\soulpeace_sv.tex",
    "soulpeace\soulpeace_pl.tex"
)

# Compile each file
foreach ($file in $texFiles) {
    Compile-LaTeX -TexFile $file
    
    # Extract version from the TeX file
    $version = Get-DocumentVersion -TexFile $file
    
    # Extract language code from filename
    $baseName = Split-Path -Leaf $file
    $langCode = $baseName -replace "soulpeace_", "" -replace "\.tex$", ""
    
    # Create filename with version
    $versionedFileName = "soulpeace_${langCode}_v$version.pdf"
    $sourcePdf = $file -replace "\.tex$", ".pdf"
    $destPdf = "pdf\$versionedFileName"
    
    if (Test-Path -Path $sourcePdf) {
        Copy-Item -Path $sourcePdf -Destination $destPdf -Force
        Write-Host "Copied $versionedFileName to pdf directory"
        
        # Also create a copy with the standard filename (for backward compatibility)
        $standardDestPdf = "pdf\$($baseName -replace '\.tex$', '.pdf')"
        Copy-Item -Path $sourcePdf -Destination $standardDestPdf -Force
    } else {
        Write-Host "Error: Failed to generate $sourcePdf" -ForegroundColor Red
    }
}

# Clean up auxiliary files
Remove-Item -Path "soulpeace\*.aux" -ErrorAction SilentlyContinue
Remove-Item -Path "soulpeace\*.log" -ErrorAction SilentlyContinue
Remove-Item -Path "soulpeace\*.out" -ErrorAction SilentlyContinue

Write-Host "Build complete!" -ForegroundColor Green
Write-Host "PDF files available in the pdf directory" -ForegroundColor Green