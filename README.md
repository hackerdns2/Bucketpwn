# Bucketpwn

<h1 align="center">
  <br>
  <img src="https://github.com/vatsalroot/Bucketpwn/raw/main/img/Logo.png" width="400px" </img>
</h1>

<h4 align="center">Fast and Simple Bash Script to Brute Force Amazonaws s3 Buckets!</h4>

<p align="center">
<a href="https://www.gnu.org/software/bash"><img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg"> </a>
<a href="https://github.com/vatsalroot/Bucketpwn/issues"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"></a>
</p>

## How it works?

<b>Bucketpwn</b> is powerful bash script which uses bash parallel process to bruteforce s3 buckets. The script put together wordlist of more than 2000 comman prefix to make cracking process much healthier. 


## Requirements

- Bash Parallel


## Installation 

Just copy and paste following commands, It will install parallel too.

1. Ubuntu/Debian

```
sudo git clone https://github.com/vatsalroot/Bucketpwn.git; sudo apt install parallel -y;
```

2. Arch Based

```
sudo git clone https://github.com/vatsalroot/Bucketpwn.git; sudo pacman -S parallel;
```


## Usage

```
cd Bucketpwn
sudo chmod +x bucketpwn.sh
sudo ./bucketpwn.sh target
```

## Example

- Syntax : sudo ./bucketpwn.sh <target_company>
<h1 align="center">
  <br>
  <img src="https://github.com/vatsalroot/Bucketpwn/raw/main/img/carbon.png" width="300px" </img>
</h1>


## Warning!

You won't get any result If you are using the same IP address for each scan. Please make sure to change your IP address after 2 to 3 scans!

## Credits

The wordlist which used to prefix the targets is created using the various open source projects. Million thanks to the work done by all the amazing people of community.
