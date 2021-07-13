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

	# Text-editor
	'visual-studio-code-bin'
)

for PKG in "${PKGS[@]}"; do
	pamac build $PKG --no-confirm
done

echo -e "\nDone\n"
