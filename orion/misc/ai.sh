#!/bin/bash
clear

# ANSI escape code for blue color
blue="\033[1;34m"

# Reset ANSI escape code
reset="\033[0m"

# Text to be printed in blue
text=".d8b.  d888888b 
d8' \`8b   \`88'   
88ooo88    88    
88~~~88    88    
88   88   .88.   
YP   YP Y888888P"

# Print the text in blue color
echo -e "${blue}$text${reset}"
pink="\033[1;35m"

echo -e""
echo -e""

# Prompt for tool options in pink color
echo -e "${pink}Select a tool for recon:${reset}"
echo -e "${pink}1. POEai${reset}"
echo -e "${pink}2. Blackbox ai${reset}"
echo -e "${pink}3. Dark Web ai${reset}"
echo -e "${pink}b. Back to the menu ${reset}"

echo -e""
echo -e""

read -p "Enter the number of the tool: " tool_number

case $tool_number in
    1)
        website_url="https://poe.com"
        xdg-open "$website_url"
        ;;
    2)
    
        xdg-open "https://www.useblackbox.io/landingPage"
        ;;
    3)
        xdg-open "https://www.useblackbox.io/landingPage"
        ;;
    b)
        ./orion.sh
        exit 0
        ;;
    *)
        echo "Invalid tool number. Exiting."
        exit 1
        ;;
esac

# Execute the tool command and store the output
output=$(eval $tool_command)

# Save the output to a file in the parent directory
output_file="$output.txt"
echo "$output" > "$output_file"

echo "Output saved to $output_file"