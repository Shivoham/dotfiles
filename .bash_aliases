#!/bin/bash

alias sf='php app/console'
alias sfcc='sf cache:clear'
alias selenium='phantomjs --webdriver=4444'
alias sinit='sudo setfacl -R -m u:www-data:rwX -m u:`whoami`:rwX app/cache app/logs ; sudo setfacl -dR -m u:www-data:rwx -m u:`whoami`:rwx app/cache app/logs ; sfcc'
alias rode='sf router:debug'
alias contde='sf container:debug'

alias tmux='tmux -2'
