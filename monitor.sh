#!/bin/bash

while true
do
    clear
    echo "===== SYSTEM MONITORING TOOL ====="
    echo "1. Show CPU Usage"
    echo "2. Show Memory Usage"
    echo "3. Show Disk Usage"
    echo "4. Show Running Processes"
    echo "5. Show Complete System Info"
    echo "6. Show Network Info"
    echo "7. Show System Details"
    echo "8. Exit"
    echo ""
    echo -n "Enter your choice: "
    read choice

    [[ -z "$choice" ]] && continue

    case $choice in

        1)
            echo ""
            echo "CPU Usage:"
            top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'
            ;;

        2)
            echo ""
            echo "Memory Usage:"
            free -m | awk 'NR==2{
                printf "Total: %sMB\nUsed: %sMB\nFree: %sMB\nUsage: %.2f%%\n",
                $2,$3,$4,$3*100/$2 }'
            ;;

        3)
            echo ""
            echo "Disk Usage:"
            df -h / | awk 'NR==2{
                printf "Total: %s\nUsed: %s\nAvailable: %s\nUsage: %s\n",
                $2,$3,$4,$5}'
            ;;

        4)
            echo ""
            echo "Top 10 Running Processes (CPU):"
            ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 11
            ;;

        5)
            echo ""
            echo "===== COMPLETE SYSTEM INFO ====="
            echo ""

            echo "Date & Time:"
            date
            echo ""

            echo "System Uptime:"
            uptime
            echo ""

            echo "CPU Usage:"
            top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}'
            echo ""

            echo "Memory Usage:"
            free -m | awk 'NR==2{
                printf "Total: %sMB Used: %sMB Free: %sMB (%.2f%%)\n",
                $2,$3,$4,$3*100/$2 }'
            echo ""

            echo "Disk Usage:"
            df -h / | awk 'NR==2{
                printf "Total: %s Used: %s Available: %s (%s)\n",
                $2,$3,$4,$5}'
            echo ""

            echo "Top Processes:"
            ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
            ;;

        6)
            echo ""
            echo "Network Information:"

            if command -v ip >/dev/null 2>&1
            then
                ip -brief addr show
            else
                ifconfig -s
            fi
            ;;

        7)
            echo ""
            echo "===== SYSTEM DETAILS ====="
            echo ""

            echo "Hostname: $(hostname)"
            echo "OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)"
            echo "Kernel: $(uname -r)"
            echo ""

            echo "Logged-in Users:"
            who
            ;;

        8)
            echo "Exiting..."
            exit
            ;;

        *)
            echo "Invalid choice! Try again."
            ;;

    esac

    echo ""
    echo "Press Enter to continue..."
    read
done
