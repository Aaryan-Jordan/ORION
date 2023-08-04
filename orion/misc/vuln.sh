#!/bin/bash
clear

# ANSI escape code for blue color
blue="\033[1;34m"

# Reset ANSI escape code
reset="\033[0m"

# Text to be printed in blue
text="db    db db    db db      d8b   db      d888888b d8b   db d88888b  .d88b.  
88    88 88    88 88      888o  88        \`88'   888o  88 88'     .8P  Y8. 
Y8    8P 88    88 88      88V8o 88         88    88V8o 88 88ooo   88    88 
\`8b  d8' 88    88 88      88 V8o88         88    88 V8o88 88~~~   88    88 
 \`8bd8'  88b  d88 88booo. 88  V888        .88.   88  V888 88      \`8b  d8' 
   YP    ~Y8888P' Y88888P VP   V8P      Y888888P VP   V8P YP       \`Y88P'"

# Print the text in blue color
echo -e "${blue}$text${reset}"
pink="\033[1;35m"

echo -e""
echo -e""

# Prompt for tool options in pink color
echo -e "${pink}Select a tool for recon:${reset}"
echo -e "${pink}1. Tool 1${reset}"
echo -e "${pink}2. Tool 2${reset}"
echo -e "${pink}3. Tool 3${reset}"
echo -e "${pink}b. Back to the menu ${reset}"

echo -e""
echo -e""

read -p "Enter the number of the tool: " tool_number

case $tool_number in
    1)
        tool_command="tool1 command here"
        ;;
    2)
        tool_command="tool2 command here"
        ;;
    3)
        tool_command="tool3 command here"
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