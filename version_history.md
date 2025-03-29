# Exit Soul Protocol - Version History

This document tracks the version history of all Exit Soul Protocol translations.

## Version Numbering System

- **Format**: `Major.Minor`
  - **Major version**: Incremented for substantial changes to the document content or structure
  - **Minor version**: Incremented for minor text corrections, formatting changes, or clarifications

## Current Document Versions

| Language | Code | Current Version | Release Date | Notes |
|----------|------|----------------|--------------|-------|
| English | en | 1.00 | March 2025 | Initial release |
| Finnish | fi | 1.00 | March 2025 | Initial release |
| Ukrainian | uk | 1.00 | March 2025 | Initial release |
| French | fr | 1.00 | March 2025 | Initial release |
| Spanish | es | 1.00 | March 2025 | Initial release |
| German | de | 1.00 | March 2025 | Initial release |
| Japanese | jp | 1.00 | March 2025 | Initial release |
| Italian | it | 1.00 | March 2025 | Initial release |
| Portuguese | pt | 1.00 | March 2025 | Initial release |
| Dutch | nl | 1.00 | March 2025 | Initial release |
| Swedish | sv | 1.00 | March 2025 | Initial release |
| Polish | pl | 1.00 | March 2025 | Initial release |

## Version History

### English (en)
- **1.00** (March 2025): Initial release

### Finnish (fi)
- **1.00** (March 2025): Initial release

### Ukrainian (uk)
- **1.00** (March 2025): Initial release

### French (fr)
- **1.00** (March 2025): Initial release

### Spanish (es)
- **1.00** (March 2025): Initial release

### German (de)
- **1.00** (March 2025): Initial release

### Japanese (jp)
- **1.00** (March 2025): Initial release

### Italian (it)
- **1.00** (March 2025): Initial release

### Portuguese (pt)
- **1.00** (March 2025): Initial release

### Dutch (nl)
- **1.00** (March 2025): Initial release

### Swedish (sv)
- **1.00** (March 2025): Initial release

### Polish (pl)
- **1.00** (March 2025): Initial release

## How to Update a Version

When updating a document:

1. Increment the appropriate version number:
   - For minor text changes, formatting fixes: increment minor version (e.g., 1.00 → 1.01)
   - For substantial content changes: increment major version (e.g., 1.00 → 2.00)
   
2. Update the version number in:
   - The corresponding .tex file in the version line `{\small Version X.XX - Month YYYY}`
   - This version_history.md file in both the "Current Document Versions" table and the language-specific history section
   
3. Add a brief description of the changes in the Version History section of this file

4. Rebuild the PDFs using the build script:
   ```powershell
   powershell.exe -ExecutionPolicy Bypass -File ./build_pdfs.ps1
   ```

## Example Version Update

For a minor correction to the Spanish version:

1. Update the version in soulpeace_es.tex from `{\small Versión 1.00 - Marzo 2025}` to `{\small Versión 1.01 - Marzo 2025}`

2. Update this version history file:
   - Change Spanish current version to 1.01 in the table
   - Add a new entry under "Spanish (es)" section: `- **1.01** (March 2025): Fixed translation error in paragraph 2`