old_path=$(pwd) 
sudo apt install autoconf automake autotools-dev curl -y
sudo apt install libmpc-dev libmpfr-dev libgmp-dev gawk -y
sudo apt install build-essential bison flex texinfo gperf -y
sudo apt install libtool patchutils bc zlib1g-dev libexpat-dev -y
sudo apt install pkg-config libglib2.0-dev libpixman-1-dev -y
sudo apt install git tmux python3 python3-pip -y

cd 
wget https://download.qemu.org/qemu-5.0.0.tar.xz
tar xvJf qemu-5.0.0.tar.xz

cd qemu-5.0.0
./configure --target-list=riscv64-softmmu,riscv64-linux-user
make -j$(nproc)

cur_path=$(pwd)

str1= "export PATH=\$PATH:$cur_path/qemu-5.0.0"
str2= "export PATH=\$PATH:$cur_path/qemu-5.0.0/riscv64-softmmu"
str3= "export PATH=\$PATH:$cur_path/qemu-5.0.0/riscv64-linux-user"

sudo echo $str1 >> ~/.bashrc
sudo echo $str2 >> ~/.bashrc
sudo echo $str3 >> ~/.bashrc

source ~/.bashrc

cd $old_path
