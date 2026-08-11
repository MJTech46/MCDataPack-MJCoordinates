<div align="center">

  <img src="pack.png" alt="MJCoordinates Icon" width="128" height="128" />

  # MJCoordinates

  **A lightweight, accurate actionbar coordinate display datapack for Minecraft.**

</div>

---

## 📖 Overview

**MJCoordinates** is a clean, performance-friendly Minecraft datapack that displays your real-time **X, Y, Z coordinates**, the current **world day count**, and your **cardinal facing direction** directly on the action bar.

Unlike basic `data get` setups, MJCoordinates includes smart negative coordinate rounding corrections so your actionbar coordinates perfectly match the F3 debug screen across all dimensions.

---

## 🎬 Preview & Media

### 📸 Screenshots

<div align="center">
  <img src="https://github.com/user-attachments/assets/308202ad-b922-4e77-939e-f2d295973261" alt="Actionbar HUD Preview" width="31%" />
  <img src="https://github.com/user-attachments/assets/f667c3c1-682a-4516-9622-a942f17b8a56" alt="Compass & Direction Display" width="31%" />
  <img src="https://github.com/user-attachments/assets/22663396-adc5-403b-9ebc-d287fa244769" alt="In-Game Gameplay View" width="31%" />
</div>

### 📹 Demo Video

<video src="https://github.com/user-attachments/assets/9f7deb3b-ea8f-4f23-8cd9-c8d431ab16ac" width="100%" controls preload="metadata"></video>

---

## ✨ Features

* 📍 **Real-time Actionbar HUD:** Shows X, Y, Z coordinates, world day count, and facing direction without cluttering your screen.
* 🛠️ **Negative Coordinate Truncation Fix:** Corrects the standard Java integer truncation bug where negative coordinates are off by `+1`.
* 🧭 **Full 360° Compass:** Accurately maps player yaw angles (`-180°` to `180°`) across all 8 cardinal directions (`N`, `NE`, `E`, `SE`, `S`, `SW`, `W`, `NW`).
* ⚡ **Optimized Performance:** Runs efficiently every tick with minimal score calculations and single-tick tag initialization.
* 🔄 **Multi-Version Support:** Built natively using Datapack Overlays to support Minecraft versions **1.19 through 26.2** in a single file.

---

## 🎯 Supported Versions

* **Minecraft Java Edition:** `1.19` – `26.2`
* **Note on Incompatibility Warning:** When loading on versions higher than 1.19, Minecraft may show a warning saying the pack is *"Made for an older/newer version of Minecraft"*. You can safely ignore this warning—the native `overlays` system automatically loads the correct syntax and folders for your game version!

---

## 🚀 Installation

1. Go to the [MJCoordinates Releases](https://github.com/MJTech46/MCDataPack-MJCoordinates/releases) page on GitHub.
2. Download the latest release file: **`MJCoordinates_v2.0.0_MCv1.19-1.26.zip`**.
3. Open your Minecraft world folder:
   * **Windows:** `%appdata%\.minecraft\saves\<your-world-name>\datapacks\`
   * **macOS:** `~/Library/Application Support/minecraft/saves/<your-world-name>/datapacks/`
   * **Linux:** `~/.minecraft/saves/<your-world-name>/datapacks/`
4. Place `MJCoordinates_v2.0.0_MCv1.19-1.26.zip` directly into the `datapacks` folder.
5. Open your world in Minecraft and run:
   ```mcfunction
   /reload
   ```

---

## 📁 Multi-Version Pack Structure

```text
MJCoordinates/
├── pack.mcmeta            # Multi-version overlay configuration
├── pack.png               # Pack icon displayed in-game
├── data/                  # Base pack (1.19 - 1.20.6)
├── overlay_1_21/          # Overlay for 1.21 - 1.21.10
├── overlay_1_21_11/       # Overlay for 1.21.11
└── overlay_26/            # Overlay for 26.1 - 26.2
```

---

## 📄 License

This project is open-source and free to use or modify for your own worlds and servers.