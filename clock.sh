#!/bin/bash

draw_clock() {
    clear
    while true; do
        current_time=$(date +"%T")
        echo -e "\n    \033[1m╭──────────────╮"
        echo -e "    │  \033[32m$current_time\033[0m  │"
        echo -e "    ╰──────────────╯\033[0m"
        sleep 1
        clear
    done
}

draw_stopwatch() {
    SECONDS=0
    while true; do
        printf "\r    \033[1m⏱ Stopwatch\033[0m   \033[32m%02d:%02d:%02d\033[0m" $((SECONDS/3600)) $((SECONDS%3600/60)) $((SECONDS%60))
        sleep 1
        ((SECONDS++))
    done
}

draw_timer() {
    duration=$1
    while [ $duration -gt 0 ]; do
        printf "\r    \033[1m⏳ Timer\033[0m   \033[31m%02d:%02d:%02d\033[0m" $((duration/3600)) $(( (duration/60)%60)) $((duration%60))
        sleep 1
        ((duration--))
    done
    clear
    echo -e "\nTimer done!"
}

display_help() {
    echo "Usage: cli_tool.sh [OPTION]..."
    echo "Options:"
    echo "  -c, --clock         Display an ASCII clock"
    echo "  -s, --stopwatch     Start a stopwatch"
    echo "  -t, --timer [SEC]   Start a timer for the specified duration in seconds"
    echo "  -p, --pomodoro      Start a Pomodoro timer"
    echo "  -h, --help          Display this help"
}

draw_pomodoro() {
    pomodoro_duration=1500  # 25 minutes in seconds
    short_break_duration=300  # 5 minutes in seconds
    long_break_duration=900  # 15 minutes in seconds
    pomodoro_count=0

    while true; do
        if [ $pomodoro_count -lt 4 ]; then
            echo -e "\n    \033[1m🍅 Pomodoro $((pomodoro_count + 1))\033[0m (25 minutes)"
            draw_timer $pomodoro_duration
            pomodoro_count=$((pomodoro_count + 1))
            if [ $pomodoro_count -lt 4 ]; then
                echo -e "\n    \033[1m☕ Short Break\033[0m (5 minutes)"
                draw_timer $short_break_duration
            else
                echo -e "\n    \033[1m🍃 Long Break\033[0m (15 minutes)"
                draw_timer $long_break_duration
                pomodoro_count=0
            fi
        else
            pomodoro_count=0
        fi
    done
}

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -c|--clock)
            draw_clock
            exit 0
            ;;
        -s|--stopwatch)
            draw_stopwatch
            exit 0
            ;;
        -t|--timer)
            if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
                draw_timer "$2"
            else
                echo "Invalid input for timer duration. Please provide a valid duration in seconds."
                exit 1
            fi
            exit 0
            ;;
        -h|--help)
            display_help
            exit 0
            ;;
        -p|--pomodoro)
            draw_pomodoro
            exit 0
            ;;
        *)
        echo "Invalid option."
        display_help
        exit 1
        ;;
            
    esac
    shift
done
