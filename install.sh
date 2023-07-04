#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install git build-essential -y
sudo apt install python3 python3-pip python3.10-venv -y
clear

echo -e "\n[+] Virtualenv Python3 [+]"
mkdir .virtualenvs
python3 -m venv .virtualenvs/zaya
source .virtualenvs/bbounty/bin/activate
echo -e "\n[+] Done. [+]"

echo "[+] ZSH & Starship [+]"
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "GO"
wget https://go.dev/dl/go1.20.5.linux-amd64.tar.gz
sha256sum go1.20.5.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
source .zshrc

clear
echo -e "\n[+] Installing bug bounty tools [+]"
sudo apt install jq -y
sudo apt install prips -y
sudo apt install nmap -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install cargo -y
sudo snap install amass
pip3 install arjun
pip3 install dirsearch
pip3 install uro
pip3 install shodan

clear
echo "[+] Gopher tools [+]"
go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/httprobe@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/tomnomnom/anew@latest
go install github.com/tomnomnom/gf@latest
go install github.com/tomnomnom/unfurl@latest
go install github.com/tomnomnom/meg@latest
go install github.com/tomnomnom/qsreplace@latest
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/chaos-client/cmd/chaos@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install github.com/projectdiscovery/notify/cmd/notify@latest
go install github.com/sensepost/gowitness@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install github.com/hakluke/hakrevdns@latest
go install github.com/hakluke/hakcheckurl@latest
go install github.com/j3ssie/metabigor@latest
go install github.com/lc/subjs@latest
go install github.com/ffuf/ffuf/v2@latest
go install github.com/deletescape/goop@latest
go install github.com/takshal/freq@latest
go install github.com/j3ssie/sdlookup@latest
go install github.com/hueristiq/hqurlfind3r/v2/cmd/hqurlfind3r@latest
sudo mv $HOME/go/bin/* /usr/bin/
clear

echo "[+] Findomain [+]"
git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/
cd
sudo rm -rf findomain/

clear
echo "[+] Gf configuration [+]"
mkdir .gf
git clone https://github.com/1ndianl33t/Gf-Patterns
mv ~/Gf-Patterns/*.json ~/.gf
sudo rm -rf Gf-Patterns
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.zshrc
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
source /root/.zshrc
parei aqui
clear
echo "[+] ParamSpider [+]"
source .virtualenvs/bbounty/bin/activate
git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
pip3 install -r requirements.txt

clear
echo "[+] LinkFinder [+]"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python setup.py install


#clear
#echo "[+] KiteRunner [+]"
#wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz
#sudo tar -C /usr/bin/ -xvf kiterunner_1.0.2_linux_amd64.tar.gz
#mv kr /usr/bin/

clear
echo "[+] Knock [+]"
git clone https://github.com/guelfoweb/knock.git
cd knock
pip3 install -r requirements.txt
cd

clear
echo "[+] Photon [+]"
git clone https://github.com/s0md3v/Photon.git
cd Photon
pip3 install -r requirements.txt
cd

echo "[+] Sudomy [+]"
git clone --recursive https://github.com/screetsec/Sudomy.git
cd Sudomy
pip3 install -r requirements.txt
cd

clear
echo "[+] DNSValidator [+]"
git clone https://github.com/vortexau/dnsvalidator.git
cd dnsvalidator
python3 setup.py install
cd

clear
echo "[+] PUREDNS [+]"
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo make install
go install github.com/d3mondev/puredns/v2@latest
cd

clear
echo "[+] JSScanner [+]"
git clone https://github.com/0x240x23elu/JSScanner.git
cd JSScanner
pip3 install -r  requirements.txt
cd

clear
echo "[+] Waymore [+]"
git clone https://github.com/xnl-h4ck3r/waymore.git
cd waymore
sudo python setup.py install
sudo pip3 install -r requirements.txt
cd

echo "[+] Shoscan [+]"
git clone https://github.com/imhunterand/shoscan-cli.git
cd shoscan
bash setup.sh
bash run.sh
cd

clear
echo "[+] xnLinkFinder [+]"
git clone https://github.com/xnl-h4ck3r/xnLinkFinder.git
cd xnLinkFinder
sudo python setup.py install
cd

clear
