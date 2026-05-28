# 🖼️ Linux Wallpaper Rotator

A lightweight and efficient wallpaper rotation system for Linux desktops built using Bash scripting and Cron Jobs.
This project automatically changes wallpapers at fixed intervals without running a continuous background loop, making it resource-friendly and simple to maintain.

Designed specifically for GNOME environments, this project demonstrates practical Linux automation, shell scripting, cron scheduling, file handling, and desktop customization.

---

## ✨ Features

* Automatic wallpaper rotation
* Lightweight and minimal resource usage
* Uses cron jobs instead of infinite loops
* Supports unlimited wallpapers
* Automatically resets after the last wallpaper
* Persistent wallpaper counter using state files
* Easy customization
* Beginner-friendly Bash scripting project
* Works seamlessly on GNOME desktops

---

## ⚙️ How It Works

Instead of keeping a script running continuously in the background, this project follows a more optimized approach:

1. A cron job executes the script periodically.
2. The script reads the current wallpaper number from a temporary state file.
3. The corresponding wallpaper is applied using `gsettings`.
4. The wallpaper counter increments automatically.
5. Once the last wallpaper is reached, the counter resets back to the first wallpaper.

This makes the project:

* efficient
* scalable
* reliable
* low on system resource consumption

---

## 📁 Wallpaper Naming Convention

Wallpapers should follow this naming format:

----------
wall1.png
wall2.png
wall3.png
.
.
.
wallN.png
----------

All wallpapers should be placed inside a single directory.

Example:

-----------------------------------
/home/utkarsh/Downloads/Wallpapers/
-----------------------------------

---
## 🧠 Technologies Used

* Bash Scripting
* Linux Cron Jobs
* GNOME `gsettings`
* Linux File System Operations

---

## 🚀 Installation & Setup

### 1. Clone Repository

--------------------------
git clone https://github.com/utkarshpankaj5/linux-wallpaper-rotator.git
cd linux-wallpaper-rotator

--------------------------

### 2. Make Script Executable

-----------------------------
chmod +x wallpaper_rotator.sh
-----------------------------

---

### 3. Edit Wallpaper Directory

Inside the script, modify:

---------------------------------------
WALLPAPER_DIR="/path/to/your/wallpapers"
---------------------------------------

Also update: (in my case i have 10 wallpapers)

```
TOTAL=10
```

according to your wallpaper count.

---

### 4. Test Script Manually

----------------------
./wallpaper_rotator.sh
----------------------

If the wallpaper changes successfully, proceed to cron setup.

---

## ⏰ Cron Job Setup

Open crontab:

-----------
crontab -e
----------

Add:

---------------------------------------------------------------------------------------------------------
*/5 * * * * DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /path/to/wallpaper_rotator.sh
---------------------------------------------------------------------------------------------------------

This changes wallpapers every 5 minutes.

---

## 📌 Example Cron Timing

| Interval         | Cron Expression |
| ---------------- | --------------- |
| Every 1 minute   | `* * * * *`     |
| Every 5 minutes  | `*/5 * * * *`   |
| Every 10 minutes | `*/10 * * * *`  |
| Every 30 minutes | `*/30 * * * *`  |

---

## 📂 Project Structure


Wallpaper_Rotator/
│
├── wallpaper_rotator.sh
├── README.md
└── Wallpapers/
    ├── wall1.png
    ├── wall2.png
    └── wall3.png

---




## 📜 License

This project is open-source and available under the MIT License.

---

## ⭐ Support

If you found this project useful, consider giving it a star on GitHub.
