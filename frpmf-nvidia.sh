#bin/bash
#Starting from a Fedora Workstation install

#Installing codecs and firmware from RPM Fusion
sudo dnf upgrade
sudo dnf install fedora-workstation-repositories -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf groupupdate core -y
sudo dnf groupupdate multimedia -y
sudo dnf groupupdate sound-and-video -y
sudo dnf install rpmfusion-free-release-tainted -y
sudo dnf install rpmfusion-nonfree-release-tainted -y
sudo dnf install \*-firmware -y

#Installing NVIDIA GPU firmware - current Geforce/Quadro/Tesla + cuda + hwenc&hwdec
sudo dnf install akmod-nvidia -y
sudo dnf install xorg-x11-drv-nvidia-cuda -y 
sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y
sudo dnf install vdpauinfo libva-vdpau-driver libva-utils -y