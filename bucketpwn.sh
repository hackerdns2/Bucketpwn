#!/bin/bash

TARGET=$1

## Checking for root permissions (Just for Better Performance) ##

if [[ $EUID -ne 0 ]]; then
   echo ""
   echo -e "\e[1;91m[-] This script must be run as root"
   echo -e "\e[0m"
   exit 1
fi

## cleaning ##

sudo rm raw.txt 2> /dev/null


## Checking for input ##

if [ -z "$1" ]
  then
    echo ""
    echo -e "\e[1;91m [-] No argument supplied"
    echo " [-] Example : sudo ./script <target_company>"
    echo -e "\e[0m"
    exit 1
fi


## Modifying wordlist according to the target ##

cat wordlist | while read line; do
  echo "http://"$TARGET"-"$line".s3.amazonaws.com"
  echo "http://"$TARGET$line".s3.amazonaws.com"
done > raw.txt


## Simple Banner ##


echo -e "\e[92m"
echo ""
echo "	┌┐ ┬ ┬┌─┐┬┌─┌─┐┌┬┐╔═╗╦ ╦╔╗╔  "
echo "	├┴┐│ ││  ├┴┐├┤  │ ╠═╝║║║║║║  "
echo "	└─┘└─┘└─┘┴ ┴└─┘ ┴ ╩  ╚╩╝╝╚╝ By @vatsalroot "
echo -e "\e[0m"

## Reading wordlist and printing ouput #


echo ""
echo -e "\e[1m[+] Running Bash Parallel process, The output may reflect on RAW format..."
echo -e "\e[0m"
echo ""

cat raw.txt | parallel -P0 -q curl -o /dev/null --silent --head --write-out '%{url_effective}: %{http_code}\n' | egrep ": 200|403"


## cleaning ##

raw=raw.txt
trap 'rm -f $raw' EXIT


## Error message ##

echo -e "\e[1m * THE END!  Tip : If output is blank or empty then try to change your IP address "
