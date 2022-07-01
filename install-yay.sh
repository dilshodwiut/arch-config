# Assuming git is installed
echo "Installing yay, tested on arch linux and manjaro"

echo "Changing directory to /opt..."
cd "/opt"

echo "Cloning yay..."
sudo git clone "https://aur.archlinux.org/yay-git.git"

echo "Changing the file permissions from the root to the sudo user..."
sudo chown -R dilshod:dilshod ./yay-git

echo "To build the package from PKGBUILD, navigating into the yay folder..."
cd "yay-git"

makepkg -si

echo "Done!"

echo "Extra Info:"
echo "To remove a package using yay use the command:"
echo "sudo yay -Rns package_name"
echo "To clean up all unwanted dependencies on your system, issue the command:"
echo "sudo yay -Yc"
echo "If you want to print system statistics using yay, run:"
echo "sudo yay -Ps"

