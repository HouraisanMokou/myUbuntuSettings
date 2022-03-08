sudo cp /etc/apt/sources.list $(dirname "$0")/default_cfg/default_soucre.list
sudo cp $(dirname "$0")/my_cfg/source.list /etc/apt/sources.lis

sudo apt update
