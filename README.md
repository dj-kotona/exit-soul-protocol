# 🌿 Exit Soul Protocol

> A burnout exit ritual for engineers, developers, and humans.  
> Print it, sign it, reclaim your peace.

This repository provides a symbolic tool to support the decision to leave a job responsibly – but soul-first. It includes printable agreements, donation links, memes, and a space to share stories.

## Features

- 🌱 Soul Peace Agreement (LaTeX-formatted, multilingual)
- 🖨️ Printable PDF files
- 📣 Reddit-ready launch post
- ☕ Ko-fi & Bitcoin donation links
- 📚 Burnout story archive

## Available PDF Files

| Language | Version    | Download Link                          |
|----------|------------|----------------------------------------|
| 🇬🇧 English | March 2025 | [Soul Peace Agreement (EN)](pdf/soulpeace_en.pdf) |
| 🇫🇮 Finnish | March 2025 | [Soul Peace Agreement (FI)](pdf/soulpeace_fi.pdf) |

## Languages

- 🇬🇧 English  
- 🇫🇮 Finnish  
- 🇺🇦 Ukrainian
- 🇫🇷 French
- 🇪🇸 Spanish  
- 🇩🇪 German  
- 🇯🇵 Japanese  
- 🇮🇹 Italian
- 🇵🇹 Portuguese
- 🇳🇱 Dutch
- 🇸🇪 Swedish
- 🇵🇱 Polish

## 💖 Donate

If this helped you regain some control –  
☕ [Ko-fi.com/djkotona](https://ko-fi.com/djkotona)  
₿ BTC: `bc1qs0afej629pf5ggxsq5u9tu6juhq9sklmdzztqs`

---
https://war.ukraine.ua/support-ukraine/

## License

CC0 – Use freely, remix, adapt, print.

---

*DJ Kotona*
*I just started as a paskapostaajanananananana😊*
*See my other work:*
*https://ko-fi.com/djkotona*
*https://www.reddit.com/user/Specific-Yogurt4731/*
*https://www.youtube.com/@DJKotona*
---
*Support the things that really matters:*
*https://war.ukraine.ua/donate/*


```powershell
powershell.exe -ExecutionPolicy Bypass -File ./build_pdfs.ps1

powershell.exe -ExecutionPolicy Bypass -File ./fix_encoding.ps1

xelatex -output-directory="soulpeace" "soulpeace\soulpeace_jp.tex"
```
