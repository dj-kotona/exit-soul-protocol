# 🌿 Exit Soul Protocol

> A burnout exit ritual for engineers, developers, and humans.  
> Print it, sign it, reclaim your peace.

This repository provides a symbolic tool to support the decision to leave a job responsibly – but soul-first. It includes printable agreements and donation links.

## Features

- 🌱 Soul Peace Agreement (LaTeX-formatted, multilingual)
- 🖨️ Printable PDF files
- ☕ Ko-fi & Bitcoin donation links

## Available PDF Files

| Language | Version    | Download Link                          |
|----------|------------|----------------------------------------|
| 🇬🇧 English | March 2025 | [Soul Peace Agreement (EN)](pdf/soulpeace_en.pdf) |
| 🇫🇮 Finnish | March 2025 | [Soul Peace Agreement (FI)](pdf/soulpeace_fi.pdf) |
| 🇩🇪 German | March 2025 | [Soul Peace Agreement (DE)](pdf/soulpeace_de.pdf) |
| 🇪🇸 Spanish | March 2025 | [Soul Peace Agreement (ES)](pdf/soulpeace_es.pdf) |
| 🇫🇷 French | March 2025 | [Soul Peace Agreement (FR)](pdf/soulpeace_fr.pdf) |
| 🇮🇹 Italian | March 2025 | [Soul Peace Agreement (IT)](pdf/soulpeace_it.pdf) |
| 🇯🇵 Japanese | March 2025 | [Soul Peace Agreement (JP)](pdf/soulpeace_jp.pdf) |
| 🇳🇱 Dutch | March 2025 | [Soul Peace Agreement (NL)](pdf/soulpeace_nl.pdf) |
| 🇵🇱 Polish | March 2025 | [Soul Peace Agreement (PL)](pdf/soulpeace_pl.pdf) |
| 🇵🇹 Portuguese | March 2025 | [Soul Peace Agreement (PT)](pdf/soulpeace_pt.pdf) |
| 🇸🇪 Swedish | March 2025 | [Soul Peace Agreement (SV)](pdf/soulpeace_sv.pdf) |
| 🇺🇦 Ukrainian | March 2025 | [Soul Peace Agreement (UK)](pdf/soulpeace_uk.pdf) |

All PDFs are also available with version numbers (e.g., [soulpeace_en_v1.00.pdf](pdf/soulpeace_en_v1.00.pdf))

## Languages

Available in twelve languages:

- 🇬🇧 English (EN)  
- 🇫🇮 Finnish (FI)  
- 🇺🇦 Ukrainian (UK)
- 🇫🇷 French (FR)
- 🇪🇸 Spanish (ES)  
- 🇩🇪 German (DE)  
- 🇯🇵 Japanese (JP)  
- 🇮🇹 Italian (IT)
- 🇵🇹 Portuguese (PT)
- 🇳🇱 Dutch (NL)
- 🇸🇪 Swedish (SV)
- 🇵🇱 Polish (PL)

## 💖 Donate

If this helped you regain some control –  
☕ [Ko-fi.com/djkotona](https://ko-fi.com/djkotona)  
₿ BTC: `bc1qs0afej629pf5ggxsq5u9tu6juhq9sklmdzztqs`  

See [donate.md](donate.md) for more details about supporting this project.

---
https://war.ukraine.ua/support-ukraine/

## License

CC0 – Use freely, remix, adapt, print.

---

*DJ Kotona*  
*Finnish AI-artist on a mission: end war, crush dictatorships, survive capitalism.*

**Find me online:**  
* 📧 [djkotona@gmail.com](mailto:djkotona@gmail.com)
* 📱 [Reddit](https://www.reddit.com/user/Specific-Yogurt4731/)
* ☕ [Ko-Fi](https://ko-fi.com/djkotona)
* 🎵 [Spotify](https://creators.spotify.com/pod/show/dj-kotona)
* 📺 [YouTube](https://www.youtube.com/@DJKotona)
* 💻 [GitHub](https://github.com/dj-kotona)

*Support the things that really matter:*  
* 🇺🇦 [Help Ukraine](https://war.ukraine.ua/donate/)
* 🌿 [Puoluerekisteri](https://puoluerekisteri.fi/#/puolue/60)

```powershell
powershell.exe -ExecutionPolicy Bypass -File ./build_pdfs.ps1

powershell.exe -ExecutionPolicy Bypass -File ./fix_encoding.ps1

xelatex -output-directory="soulpeace" "soulpeace\soulpeace_jp.tex"
```
