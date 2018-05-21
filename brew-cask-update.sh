#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

to_update=()
#get all casks and versions
casks=($(brew cask list --versions|awk '{print $1}'))
versions=($(brew cask list --versions|awk '{print $2}'))
#find casks that needs to update
for ((j=0;j<=${#casks[@]}-1;j++))
do
  current=$(brew cask info ${casks[$j]}|head -n 1|awk '{print $2}')
  if [ ${current} != ${versions[$j]} ]; then
	  to_update=(${to_update[@]} ${casks[$j]})
  fi
done
if [ ${#to_update[@]} -eq 0 ]; then
  echo -e "${green}no casks need to update"
else
  echo -e "${yellow}those casks need to update:"
  echo -e ${red}${to_update[@]}
  for cask in ${to_update[@]}
  do
  	echo "${red}installing ${cask}"
	brew cask reinstall ${cask}
  done
fi
#clean temps
brew cask cleanup

