echo -e "\nInstalling software\n"

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
	yay -S $PKG --no-confirm
done

echo -e "\nDone\n"

