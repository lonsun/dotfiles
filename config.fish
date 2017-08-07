#            #
### Global ###
#            #

# Environment Vars
set -g -x PATH /usr/local/bin $PATH
set -g -x PATH /Users/lon/Library/Android/sdk/tools /Users/lon/Library/Android/sdk/platform-tools $PATH


# Fish Greeting
set quotes "You don't worry about Planet Express, let me worry about blank." "Insane theories one, regular theories a billion." \
"Sweet zombie Jesus!" "60% of the time, it works everytime." \
"[The city is being attacked by Lucy Liu robots] Now there’s a wave of destruction that’s easy on the eyes" "What is that, velvet?" \
"It was a regulation date that ended in regulation dissapointment" \
"[The court orders Bart to be emancipated and for Homer's wages to be garnished.] Mmmm...garnish." \
"You are technically correct - the best kind of correct."

function fish_greeting
  # pick a random quote...
  set cnt (count $quotes)
  set random_idx_cmd awk "'BEGIN { srand(); printf(\"%d\n\",rand()*"$cnt") }'"
  set idx (eval $random_idx_cmd)

  # ...and output in white font
  set_color "white"
  echo -e "\n"\"$quotes[(math "$idx+1")]"\"\n"
end


# iTerm2 shell integration
source ~/.iterm2_shell_integration.fish

# Aliases
alias rm 'rm -i'
alias vi 'mvim'
alias updatedb '/usr/libexec/locate.updatedb'

## Postgres (installed via homebrew)
alias start_pg 'pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start'
alias stop_pg 'pg_ctl -D /usr/local/var/postgres/ stop -s -m fast'
alias start_pg95 'pg_ctl -D /usr/local/var/postgres-9.5/ -l /usr/local/var/postgres/server.log start'
alias stop_pg95 'pg_ctl -D /usr/local/var/postgres-9.5/ stop -s -m fast'


#                 #
### SpotOn Work ###
#                 #
. ~/code/spoton/scripts/spoton_funcs.fish
