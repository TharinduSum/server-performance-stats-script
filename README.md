# Server Performance Stats Script

A lightweight Bash script designed to analyze and display vital server performance metrics on any Linux-based system. This tool provides a quick snapshot of resource usage to help administrators debug and monitor server health.

## Features

The script provides the following real-time statistics:
* **OS Information**: Current Operating System version.
* **System Uptime**: How long the server has been running and load averages.
* **CPU Usage**: Total percentage of CPU currently in use.
* **Memory Usage**: Total, used, and free memory including percentage breakdown.
* **Disk Usage**: Current disk utilization (Used vs. Free) in a human-readable format.
* **Top Processes**:
    * Top 5 processes consuming the most **CPU**.
    * Top 5 processes consuming the most **Memory**.

## Installation & Setup

1.  **Clone or Create the Script**:
    Create a new file named `server-stats.sh` on your server:
    ```bash
    nano server-stats.sh
    ```
    *(Paste the script content into this file and save it.)*

2.  **Make it Executable**:
    Grant the script permission to run:
    ```bash
    chmod +x server-stats.sh
    ```

## Usage

Run the script directly from your terminal:
```bash
./server-stats.sh
```

## Example Output
```bash
--- Server Performance Stats ---

[ OS Version ]
Ubuntu 22.04.3 LTS

[ Uptime & Load Average ]
 14:20:01 up 10 days,  4:12,  1 user,  load average: 0.05, 0.12, 0.09

[ CPU Usage ]
Total CPU Usage: 12.5%

[ Memory Usage ]
Used: 1024MB / Total: 8192MB (12.50%)

[ Disk Usage ]
Used: 20G / Total: 100G (20%)

[ Top 5 Processes by CPU Usage ]
  PID  PPID CMD                         %MEM  %CPU
 1234     1 /usr/bin/python3 my_app.py   2.1  15.5
 ...
```

## Prerequisites

- A Linux-based environment (Ubuntu, Debian, RHEL, CentOS, etc)
- Standard utilities: top, ps, awk, grep, sed (Pre-installed on most distributions)

