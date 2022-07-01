echo -e "\nInstalling software\n"

PKGS=(
	# Internet
	'brave-bin'
	'xdman'

	# Misc
	'onlyoffice-bin'
	'keepassxc'
	'stacer'
	'dropbox'
	'spotify'
	'timeshift'

	# Web Dev
	'visual-studio-code-bin'
	'runjs-bin'
	'postman-bin'
	'webstorm'
	# 'fleet'
)

for PKG in "${PKGS[@]}"; do
	yay -S $PKG
done

echo -e "\nDone\n"

