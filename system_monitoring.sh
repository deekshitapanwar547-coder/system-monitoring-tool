#!/bin/bash

while true
do
    clear
    echo "===== SYSTEM MONITORING TOOL ====="
    echo "1. CPU Usage"
    echo "2. Memory Usage"
    echo "3. Disk Usage"
    echo "4. Running Processes"
    echo "5. System Info"
    echo "6. Network Info"
    echo "7. System Details"
    echo "8. Exit"
    echo ""
    
    echo -n "Enter your choice: "
    read choice

    case $choice in

        1)
            echo "CPU Usage:"
            top -n 1
            ;;

        2)
            echo "Memory Usage:"
            free -h
            ;;

        3)
            echo "Disk Usage:"
            df -h
            ;;

        4)
            echo "Running Processes:"
            ps aux | head
            ;;

        5)
            echo "System Info:"
            date
            uptime
            ;;

        6)
            echo "Network Info:"
            ip a
            ;;

        7)
            echo "System Details:"
            hostname
            uname -a
            who
            ;;

        8)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice!"
            ;;

    esac

    echo ""
    echo "Press Enter to continue..."
    read
done
