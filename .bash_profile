# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

## put everything in .bashrc since this file calls it anyway ##

##
# Your previous /Users/lon/.bash_profile file was backed up as /Users/lon/.bash_profile.macports-saved_2015-10-06_at_18:45:43
##

# MacPorts Installer addition on 2015-10-06_at_18:45:43: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

