#!/bin/bash

mkdir tools

## Installing dependencies
sudo apt update -y
sudo apt install -y git
sudo apt install -y wget
sudo apt install unzip
sudo apt install -y libpcap-dev
sudo apt install -y cmake
sudo apt install -y cargo
sudo apt-get install -y  python3-pip

# Install Python dependencies
python3 -m pip install -r requirements.txt
python3 -m pip install -r requirements.txt --break-system-packages

# pip install python-telegram-bot
# sudo apt install gccgo-go -y
sudo apt install golang-go -y


mkdir ~/.gf


## Installing go tools
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/tomnomnom/assetfinder@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install github.com/bp0lr/gauplus@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/hakluke/hakrawler@latest
go install github.com/tomnomnom/gf@latest
go install github.com/tomnomnom/qsreplace@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
go install github.com/incogbyte/shosubgo@latest
go install github.com/gwen001/github-subdomains@latest
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
go install -v github.com/owasp-amass/amass/v3/...@master
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
go install -v github.com/tomnomnom/anew@latest
go install github.com/jaeles-project/gospider@latest
go install github.com/ferreiraklet/airixss@latest
go install -v github.com/xm1k3/cent@latest

pip3 install arjun
sudo apt install arjun

echo "move bin"
cd go/bin
sudo mv -v * /usr/local/bin
cd ~


## manage gf template
git clone https://github.com/Sherlock297/gf_patterns.git
cd gf_patterns/
sudo mv *.json ~/.gf
cd ~

## installing bhedak 
wget -O bhedak https://raw.githubusercontent.com/R0X4R/bhedak/main/bhedak.py -q && chmod +x bhedak && sudo mv bhedak /usr/local/bin/

## installing urldedupe
cd tools && git clone https://github.com/ameenmaali/urldedupe.git
cd urldedupe
cmake CMakeLists.txt
make
sudo cp urldedupe /usr/local/bin
cd ~


## installing paramspider
cd tools && git clone https://github.com/devanshbatham/paramspider
cd paramspider
sudo pip install . --break-system-packages
cd ~

## installing crtsh
cd tools && git clone https://github.com/YashGoti/crtsh.py.git
cd crtsh.py
mv crtsh.py crtsh
chmod +x crtsh
cp crtsh /usr/local/bin/
cd ~

## installing dirsearch
## python3 -m pip install -r requirements.txt
### sudo apt install python3
### python3 -m pip3 install setuptools
### python3 -m pip install setuptools
### python3 dirsearch.py -u "https://example.com" -e *
### cd ../tools/dirsearch-master
cd tools && git clone https://github.com/maurosoria/dirsearch.git --depth 1
cd dirsearch
sudo python3 dirsearch.py -h
pip3 install -r requirements.txt
sudo pip3 install -r requirements.txt
python3 -m pip install setuptools --break-system-packages
sudo python3 dirsearch.py -u "https://example.com" -e *
python3 setup.py install
sudo python3 setup.py install
python3 dirsearch.py
cd ~

## installing findomain
cd tools && git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/local/bin/
cd ~

## installing xray
cd tools
wget https://github.com/chaitin/xray/releases/download/1.9.11/xray_linux_amd64.zip
sudo unzip xray_linux_amd64.zip
mv xray_linux_amd64 xray
sudo ./xray
sudo ./xray
cd ~
