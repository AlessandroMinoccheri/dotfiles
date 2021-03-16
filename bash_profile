export PATH="~/.composer/vendor/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/lib/node_modules/.bin:$PATH"
export PATH="~/.npm/.bin:$PATH"
export PATH="~/.npm:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"
export PATH="/Users/alessandrominoccheri/.npm-global/bin/:$PATH"
export PATH="/Users/alessandrominoccheri/.npm-global/lib/node_modules:$PATH"
export PATH="$HOME/.symfony/bin:$PATH"
export QT5_DIR=/usr/local/opt/qt5
export CMAKE_MODULE_PATH=${QT5_DIR}/lib/cmake:${CMAKE_MODULE_PATH}
export CMAKE_PREFIX_PATH=${QT5_DIR}
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-13.jdk/Contents/Home
export PATH="/usr/local/Cellar/php@7.4/7.4.15/bin:$PATH"
export PATH="/Users/alessandrominoccheri/Library/Python/2.7/bin:$PATH"
alias composer="php /usr/local/bin/composer.phar"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH

export ANDROID_HOME=export ANDROID_HOME=/usr/local/opt/android-sdk

###-tns-completion-start-###
if [ -f /Users/alessandrominoccheri/.tnsrc ]; then
    source /Users/alessandrominoccheri/.tnsrc
fi
###-tns-completion-end-###

if [ -f ~/.bash_customer ]; then
    . ~/.bash_customer
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/alessandrominoccheri/.sdkman"
[[ -s "/Users/alessandrominoccheri/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/alessandrominoccheri/.sdkman/bin/sdkman-init.sh"
