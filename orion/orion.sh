#!/bin/bash
clear

echo -e "\033[31m          .                                                      .\033[0m"
echo -e "\033[31m        .n                   .                 .                  n.\033[0m"
echo -e "\033[31m  .   .dP                  dP                   9b                 9b.    .\033[0m"
echo -e "\033[31m 4    qXb         .       dX                     Xb       .        dXp     t\033[0m"
echo -e "\033[31mdX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb\033[0m"
echo -e "\033[31m9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP\033[0m"
echo -e "\033[31m 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP\033[0m"
echo -e "\033[31m  .9XXXXXXXXXXXXXXXXXXXXX.~   ~.OOO8b   d8OOO.~   ~.XXXXXXXXXXXXXXXXXXXXXP.\033[0m"
echo -e "\033[31m    .9XXXXXXXXXXXP. .9XX.   DIE    .98v8P.  HUMAN   .XXP. .9XXXXXXXXXXXP.\033[0m"
echo -e "\033[31m        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~\033[0m"
echo -e "\033[31m                        )b.  .dbo.dP..v..9b.odb.  .dX(\033[0m"
echo -e "\033[31m                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.\033[0m"
echo -e "\033[31m                     dXXXXXXXXXXXP.   .   .9XXXXXXXXXXXb\033[0m"
echo -e "\033[31m                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb\033[0m"
echo -e "\033[31m                    9XXb.   .XXXXXb.dX|Xb.dXXXXX.   .dXXP\033[0m"
echo -e "\033[31m                     ..      9XXXXXX(   )XXXXXXP      ..\033[0m"
echo -e "\033[31m                              XXXX X..v..X XXXX\033[0m"
echo -e "\033[31m                              XP^X..b   d..X^XX\033[0m"
echo -e "\033[31m                              X. 9  .   .  P )X\033[0m"
echo -e "\033[31m                              .b  .       .  d.\033[0m"
echo -e "\033[31m                               .             .\033[0m"

echo ""
echo -e "\033[32m                                    ORION \033[0m"
echo -e "\033[32m                          Made by Aaryan Jordan.. \033[0m"
echo ""                                                               

# ANSI escape sequences for pink and turquoise colors
PINK='\033[1;35m'
TURQUOISE='\033[1;36m'
NC='\033[0m' # No Color

osint() {
  if [ -f "pentest/osint.sh" ]; then
    bash pentest/osint.sh
  else
    echo "Error: osint.sh not found in sub directory"
  fi
}

recon() {
  if [ -f "pentest/recon.sh" ]; then
    bash pentest/recon.sh
  else
    echo "Error: recon.sh not found in sub directory"
  fi
}

exploitation() {
  if [ -f "pentest/exploitation.sh" ]; then
    bash pentest/exploitation.sh
  else
    echo "Error: exploitation.sh not found in sub directory"
  fi
}

postexploit() {
  if [ -f "pentest/postexploit.sh" ]; then
    bash pentest/post.sh
  else
    echo "Error: postexploit.sh not found in sub directory"
  fi
}

c2server() {
  if [ -f "pentest/c2server.sh" ]; then
    bash pentest/c2.sh
  else
    echo "Error: c2server.sh not found in sub directory"
  fi
}

enable_tor() {
  if [ -f "utility/tor.sh" ]; then
    bash utility/tor.sh
  else
    echo "Error: tor.sh not found in sub directory"
  fi
}

enable_anon_surf() {
  if [ -f "utility/anon_surf.sh" ]; then
    bash utility/anon_surf.sh
  else
    echo "Error: anon_surf.sh not found in sub directory"
  fi
}

enable_mon_mode() {
  if [ -f "utility/mon_mode.sh" ]; then
    bash utility/mon_mode.sh
  else
    echo "Error: mon_mode.sh not found in sub directory"
  fi
}

install_tools() {
  if [ -f "utility/install_tools.sh" ]; then
    bash utility/install_tools.sh
  else
    echo "Error: install_tools.sh not found in sub directory"
  fi
}

fix_things() {
  if [ -f "utility/fix_things.sh" ]; then
    bash utility/fix_things.sh
  else
    echo "Error: fix_things.sh not found in sub directory"
  fi
}

payload_for_all() {
  if [ -f "misc/payload.sh" ]; then
    bash misc/payload.sh
  else
    echo "Error: payload.sh not found in sub directory"
  fi
}

search_vuln_info() {
  if [ -f "misc/vuln.sh" ]; then
    bash misc/vuln.sh
  else
    echo "Error: vuln.sh not found in sub directory"
  fi
}

open_ai() {
  if [ -f "misc/ai.sh" ]; then
    bash misc/ai.sh
  else
    echo "Error: ai.sh not found in sub directory"
  fi
}

scrape_materials() {
  if [ -f "misc/scrape.sh" ]; then
    bash misc/scrape.sh
  else
    echo "Error: scrape.sh not found in sub directory"
  fi
}

kill_everything() {
  if [ -f "misc/kill.sh" ]; then
    bash misc/kill.sh
  else
    echo "Error: kill.sh not found in sub directory"
  fi
}

# Display options and sub-options to the user
echo -e "${TURQUOISE}MENU${NC}"
echo -e ""
echo -e ""
echo -e "${TURQUOISE}1. Pentest${NC}        |    ${TURQUOISE}2. Utility${NC}                     |    ${TURQUOISE}3. Mics${NC}"       
echo -e "" 
echo -e " ${PINK}1. Osint${NC}         |            ${PINK}2. Enable Tor${NC}          |         ${PINK}1. Payload for All${NC}"
echo -e " ${PINK}2. Recon${NC}         |            ${PINK}2. Enable Anon Surf${NC}    |         ${PINK}2. Search Vuln Info${NC}"
echo -e " ${PINK}3. Exploitation${NC}  |            ${PINK}3. Enable Mon Mode${NC}     |         ${PINK}3. Open AI${NC}"
echo -e " ${PINK}4. PostExploit${NC}   |            ${PINK}4. Install Tools${NC}       |         ${PINK}4. Scrape Materials${NC}"
echo -e " ${PINK}5. C2 server${NC}     |            ${PINK}5. Fix Things${NC}          |         ${PINK}5. Kill Everything${NC}"
echo -e ""
echo -e "                                  ${TURQUOISE}0. Exit${NC}"

# Read user's choice
read -p "Enter your option: " choice

case $choice in
  0)
      echo "Exiting..."
      clear
      exit
      ;;
  1)
    read -p "Enter sub-option: " sub_choice
    case $sub_choice in
      1) osint ;;
      2) recon ;;
      3) exploitation ;;
      4) postexploit ;;
      5) c2server ;;
      *) echo "Invalid sub-option" ;;
    esac
    ;;
  2)
    read -p "Enter sub-option: " sub_choice
    case $sub_choice in
      1) enable_tor ;;
      2) enable_anon_surf ;;
      3) enable_mon_mode ;;
      4) install_tools ;;
      5) fix_things ;;
      *) echo "Invalid sub-option" ;;
    esac
    ;;
  3)
    read -p "Enter sub-option: " sub_choice
    case $sub_choice in
      1) payload_for_all ;;
      2) search_vuln_info ;;
      3) open_ai ;;
      4) scrape_materials ;;
      5) kill_everything ;;
      *) echo "Invalid sub-option" ;;
    esac
    ;;
  *) echo "Invalid option" ;;
esac