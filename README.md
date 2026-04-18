# System Monitoring Tool 🖥️
> A Menu-Driven System Performance Monitoring Tool for Linux (Bash)

![Shell Script](https://img.shields.io/badge/Shell-Bash-green)
![Version](https://img.shields.io/badge/Version-1.0-blue)
![Platform](https://img.shields.io/badge/Platform-Linux-orange)

---

## What is this Project?

This is a lightweight, terminal-based System Monitoring Tool developed 
using Bash scripting. It provides real-time system information such as 
CPU usage, memory utilization, disk usage, running processes, network 
details, and system information — all in a simple menu-driven interface.

The tool is designed for Operating System coursework and demonstrates 
how Linux commands can be integrated into a structured monitoring system.

---

## Features

| Module              | Description |
|---------------------|-----------------------------------------------------|
| ⚙️ CPU Monitor     | Displays real-time CPU usage using idle calculation |
| 🧠 Memory Monitor  | Shows total, used, free memory and usage %          |
| 💾 Disk Monitor    | Displays disk usage and available storage           |
| 📊 Process Monitor | Lists top processes sorted by CPU usage             |
| 🌐 Network Info    | Shows network interfaces (clean output)             |
| 🖥️ System Info     | Displays OS, kernel, hostname, and uptime           |
| 👥 User Monitor    | Shows currently logged-in users                     |
| 📋 Complete View   | Combines all system stats in one screen             |
 
---

## Requirements

- Linux OS (Ubuntu / Kali / Fedora recommended)
- Bash Shell
- Standard Linux utilities:
  - `top`
  - `free`
  - `df`
  - `ps`
  - `ip` / `ifconfig`
  - `who`
  - `uptime`

> These utilities are pre-installed in most Linux distributions.

---

## Getting Started

```bash
# Step 1 — Create script file
vi monitor.sh

# Step 2 — Paste the code and save

# Step 3 — Make it executable
chmod +x monitor.sh

# Step 4 — Run the program
./monitor.sh
````

---

## Menu Options

```
1. Show CPU Usage
2. Show Memory Usage
3. Show Disk Usage
4. Show Running Processes
5. Show Complete System Info
6. Show Network Info
7. Show System Details
8. Exit
```

---

## Sample Output

```
===== SYSTEM MONITORING TOOL =====

CPU Usage: 32%

Memory     Usage:
Total:     8000MB
Used:      4200MB
Free:      3800MB
Usage:     52.5%

Disk          Usage:
Total:        100GB
Used:         60GB
Available:    40GB
Usage:        60%

Top    Processes:
PID      CMD           %CPU
1234    chrome         45.2
5678    python         22.1
```

---

## Project Structure

```
System_Monitoring_Tool/
│
└── monitor.sh
```

---

## Concepts Used

* Operating System Resource Monitoring
* Process Management
* Memory Management
* Disk Management
* Shell Scripting
* Command-Line Interface (CLI)

---

## Project Info

* **Course:** Operating Systems
* **Project Type:** Mini Project (BCA)
* **Language:** Bash Shell Scripting
* **Platform:** Linux

---

## Author

* **Name:** [Deekshita Panwar]
* **Roll No:** [243501038]
* **College:** [Lachoo Memorial College of Science & Technology]

---

