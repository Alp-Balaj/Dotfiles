#!/usr/bin/env bash

BREAK_TIME=10   # seconds

# Colors
CYAN="\033[1;36m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

clear
echo -e "${CYAN}⚡ Cognitive Overload Detected${RESET}"
sleep 1
echo -e "${YELLOW}Initiating cooldown protocol...${RESET}"
sleep 1
echo ""

# Spinner function (clean implementation)
spinner() {
    local duration=$1
    local end=$((SECONDS + duration))
    local spin='|/-\'
    
    while [ $SECONDS -lt $end ]; do
        for i in {0..3}; do
            printf "\r${CYAN}[%c] Resetting... ${RESET}" "${spin:$i:1}"
            sleep 0.1
        done
    done
    printf "\r"
}

# Run spinner in background for break duration
spinner $BREAK_TIME &
SPINNER_PID=$!

# Breathing countdown
for ((i=BREAK_TIME; i>0; i--)); do
    printf "\r${GREEN}Time left: %2ds  |  " "$i"
    
    if (( i % 6 < 3 )); then
        printf "⬆️  Inhale   "
    else
        printf "⬇️  Exhale   "
    fi
    
    sleep 1
done

wait $SPINNER_PID

clear
echo -e "${GREEN}✅ Cooldown complete.${RESET}"
echo -e "${CYAN}Back to execution mode.${RESET}"
echo -e "\a"
