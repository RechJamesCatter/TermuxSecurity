pkg install figlet
pkg install neofetch
echo -e "\e[1;31m$(figlet KURULUM)\e[0m"
#unzip TermuxSecurity.zip
cp protokol /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/protokol
rm -rf /data/data/com.termux/files/usr/etc/bash.bahrc
cp bash.bashrc /data/data/com.termux/files/usr/etc
chmod +x /data/data/com.termux/files/usr/etc/bash.bashrc
echo -n "Termux İçin Kullanıcı Adı Gir: "
read tusername
echo -n "Termux İçin Şifreyi Gir: "
read entry_pw
sed -i 's/Password/'$entry_pw'/g' /data/data/com.termux/files/usr/bin/protokol
sed -i 's/TerUN/'$tusername'/g' /data/data/com.termux/files/usr/bin/protokol
login
