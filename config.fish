### Global ###
set -g -x PATH /usr/local/bin $PATH

# Fish Greeting
set quotes "You don't worry about Planet Express, let me worry about blank." "Insane theories one, regular theories a billion." \
"Sweet zombie Jesus!" "60% of the time, it works everytime." \
"[The city is being attacked by Lucy Liu robots] Now there’s a wave of destruction that’s easy on the eyes" "What is that, velvet?" \
"It was a regulation date that ended in regulation dissapointment"

function fish_greeting
  # pick a random quote
  set cnt (count $quotes)
  set random_idx_cmd awk "'BEGIN { srand(); printf(\"%d\n\",rand()*"$cnt") }'"
  set idx (eval $random_idx_cmd)
  echo $quotes[(math "$idx+1")]
end

alias rm 'rm -i'
alias vi 'mvim'

### CPAY Work ###
set -g -x PATH ~/code/cpay/forte/vendor/bin $PATH
