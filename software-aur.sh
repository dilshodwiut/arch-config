# Arch Linux Post Install Setup and Config

echo -e "\nInstalling AUR software\n"

cd "${HOME}"

echo "Cloning pamac"

git clone "git clone https://aur.archlinux.org/pamac-aur.git"

cd "${HOME}/pamac-aur"

makepkg -si

PKGS=(
	# Internet
	'brave-bin'
	'xdman'
	
	# Misc
	'onlyoffice-bin'
	'keepassx'	

	# Web Dev
	'visual-studio-code-bin'
	'runjs-bin'
	'postman-bin'
	'webstorm'
	'nvm'
	# 'fleet'
)

for PKG in "${PKGS[@]}"; do
	pamac build $PKG --no-confirm
done

echo -e "\nDone\n"
