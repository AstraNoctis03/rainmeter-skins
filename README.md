# MdaC

Three Rainmeter skins by **AstraNoctis03**.

## Skins

- **Clock** — 24-hour clock with day-of-week and date, transparent overlay
- **DA_yilin** — Animated character skin (「独爱伊琳」), three illustrations cycling with synchronized text and color gradient
- **Visualiser** — 48-band audio spectrum visualiser with rainbow color animation

## Installation

1. Copy the `MdaC` folder into your Rainmeter skin directory.
   - Default Standard install: `%USERPROFILE%\Documents\Rainmeter\Skins\`
   - Or wherever your `SkinPath=` in `Rainmeter.ini` points.
2. Refresh Rainmeter: right-click tray icon → **Refresh all**.
3. In **Manage Rainmeter** → expand **MdaC** → select **Clock** / **DA_yilin** / **Visualiser** → click **Load**.

## Fonts

Bundled in `@Resources/Fonts/` and auto-loaded by Rainmeter at skin load time (no system install required):

| File | Used by | Source |
|---|---|---|
| `MyriadPro-SemiboldIt.ttf` | Clock (time, date) | Adobe Inc. |
| `Ruthligos.ttf` | Clock (day-of-week) | Free decorative |
| `TsangerJinKai03-W04.ttf` | DA_yilin (Chinese characters) | Tsanger Technology (仓耳科技) |

> ⚠️ **Font licensing**: Myriad Pro and TsangerJinKai03 are **commercial fonts**. They are included for skin functionality but their publishers' licenses do **not** automatically permit redistribution. By using this repository you accept responsibility for licensing compliance (personal use is generally permitted; commercial use requires separate font licensing).

## Customization

`@Resources/Variables.inc` is a placeholder file `@include`d by Clock.ini. Define `KEY=VALUE` pairs there to override any variables (date format, text strings, colors) without modifying the skin source.

## Changelog

- **Visualiser**: Added missing `AverageSize=#AverageSize#` to `[MeasureAudio34]`
- **Visualiser**: `Sensitivity=25` → `35` (Rainmeter default, better response at moderate volume)
- **Visualiser**: `Update=0` → `33` (~30 FPS, fixes stutter on busy systems; `Update=0` was clamped to 60 FPS and saturated CPU with 48 bands)
- **Visualiser**: `AverageSize=6` → `3` (halves the smoothing window from ~200ms to ~100ms — bars track beats more tightly)
- **Visualiser**: `FreqMin=65` → `30` (extends to sub-bass / kick-drum range; redistributes 48 bands so leftmost bars now respond to 30–65 Hz)
- **All .ini files**: Encoded as UTF-16 LE with BOM (Rainmeter requirement — UTF-8 causes garbled non-ASCII text)
- Added `[Metadata]` blocks to Clock and Visualiser for consistency with DA_yilin
- Added `Variables.inc` placeholder for user customization

## Author

**AstraNoctis03**

## License

[CC BY-NC 4.0](LICENSE) — Attribution, NonCommercial. See `LICENSE` for full terms and font sublicensing note.
