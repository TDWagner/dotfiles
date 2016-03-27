-----
What
-----

A place to set up config files for bash, git, etc

-----
Plans
-----

create a bash script to automate setting up links to these config files
	check to see if .bash_profile is currently a link or file
		if file, rename to .old(?)
		if currently a link, remove it
	ln -sv ~/dotfiles/bash_profile ~/.bash_profile