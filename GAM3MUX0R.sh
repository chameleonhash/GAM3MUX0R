#!/bin/bash
clear
figlet -c -f Big GAM3MUX0R
figlet -c -f script by chameleonhash
sleep 5
clear
# Function to display a spinner
spinner() {
  local pid=$!
  local delay=0.1
  local spin_chars=("◐" "◓" "◑" "◒")

  while kill -0 $pid >/dev/null 2>&1; do
    for char in "${spin_chars[@]}"; do
      echo -n -e "\r$char Please wait..."
      sleep $delay
    done
  done

  echo -e "\r[✔] Done!        "
}

# Function to install packages quietly with a progress indicator
install_packages() {
  pkg up -y >/dev/null 2>&1 &
  spinner
  apt autoclean >/dev/null 2>&1 &
  spinner
  pkg install -y "$@" >/dev/null 2>&1 &
  spinner
}

# Install game packages
install_packages 0verkill abuse abuse-frabs angband brogue cavez-of-phear csol curseofwar davegnukem dmagnetic dopewars frotz game-music-emu glulxe gnugo gnushogi gnuski greed libchipmunk love mgba moon-buggy moria myman nethack npush bsd-games

# Display ASCII art using figlet
echo ""
figlet -c -f Big "GAM3MUX0R"
figlet -c -f script "almost every termux game"
# Select menu
echo ""
PS3="Enter number of game you wanna play or CTRL+C to exit: "
select game in "0verkill" "abuse" "abuse-frabs" "angband" "brogue" "cavez-of-phear" "csol" "curseofwar" "davegnukem" "dmagnetic" "dopewars" "frotz" "game-music-emu" "glulxe" "gnugo" "gnushogi" "gnuski" "greed" "libchipmunk" "love" "mgba" "moon-buggy" "moria" "myman" "nethack" "npush" "robots" "adventure" "drop4" "spirhunt" "klondike" "arithmetic" "sail" "snake" "hangman" "battlestar" "gofish" "gomoku" "dab" "atc" "wump" "caesar" "cribbage" "worm"

do
    clear
    case $game in
        "0verkill")
            0verkill
            ;;
        "abuse")
            abuse
            ;;
        "abuse-frabs")
            abuse-frabs
            ;;
        "angband")
            angband
            ;;
        "brogue")
            brogue
            ;;
        "cavez-of-phear")
            phear
            ;;
        "csol")
            csol
            ;;
        "curseofwar")
            curseofwar
            ;;
        "davegnukem")
            davegnukem
            ;;
        "dmagnetic")
            dmagnetic
            ;;
        "dopewars")
            dopewars
            ;;
        "frotz")
            frotz
            ;;
        "glulxe")
            glulxe
            ;;
        "gnugo")
            gnugo
            ;;
        "gnushogi")
            gnushogi
            ;;
        "gnuski")
            gnuski
            ;;
        "greed")
            greed
            ;;
        "libchipmunk")
            libchipmunk
            ;;
        "love")
            love
            ;;
        "mgba")
            mgba
            ;;
        "moon-buggy")
            moon-buggy
            ;;
        "moria")
            moria
            ;;
        "myman")
            myman
            ;;
        "nethack")
            nethack
            ;;
        "npush")
            npush
            ;;
        "robots")
            robots
            ;;
        "adventure")
            adventure
            ;;
        "drop4")
            drop4
            ;;
        "spirhunt")
            spirhunt
            ;;
        "klondike")
            klondike
            ;;
        "arithmetic")
            arithmetic
            ;;
        "sail")
            sail
            ;;
        "snake")
            snake
            ;;
        "hangman")
            hangman
            ;;
        "battlestar")
            battlestar
            ;;
        "gofish")
            gofish
            ;;
        "gomoku")
            gomoku
            ;;
        "dab")
            dab
            ;;
        "atc")
            atc
            ;;
        "wump")
            wump
            ;;
        "caesar")
            caesar
            ;;
        "cribbage")
            cribbage
            ;;
        "worm")
            worm
            ;;
         "q")
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
