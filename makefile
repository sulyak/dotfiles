.PHONY: stow
stow:  # Install configs
	find . -mindepth 1 ! -path '*/.*' -type d -printf '%f\n' | xargs -n 1 stow --target=$${HOME} --dir="."

.PHONY: unstow
unstow: # Uninstall configuration files
	find . -mindepth 1 ! -path '*/.*' -type d -printf '%f\n' | xargs -n 1 stow --delete --target=$${HOME} --dir="."
