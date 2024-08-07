export PATH="~/.composer/vendor/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/lib/node_modules/.bin:$PATH"
export PATH="~/.npm/.bin:$PATH"
export PATH="~/.npm:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"
export PATH="/Users/alessandrominoccheri/.npm-global/bin/:$PATH"
export PATH="/Users/alessandrominoccheri/.npm-global/lib/node_modules:$PATH"
export PATH="/usr/local/opt:$PATH"
export PATH="$HOME/.symfony/bin:$PATH"
export PATH="/Users/alessandrominoccheri/.cargo/bin:$PATH"
export QT5_DIR=/usr/local/opt/qt5
export CMAKE_MODULE_PATH=${QT5_DIR}/lib/cmake:${CMAKE_MODULE_PATH}
export CMAKE_PREFIX_PATH=${QT5_DIR}
export LANG="en_US.UTF-8"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="/Users/alessandrominoccheri/Library/Python/2.7/bin:$PATH"
alias composer="php /usr/local/bin/composer.phar"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH

export ANDROID_HOME=export ANDROID_HOME=/usr/local/opt/android-sdk

alias git='LANG=en_GB git'
alias git='LC_ALL=en_GB git'

###-tns-completion-start-###
if [ -f /Users/alessandrominoccheri/.tnsrc ]; then
    source /Users/alessandrominoccheri/.tnsrc
fi
###-tns-completion-end-###

if [ -f ~/.bash_customer ]; then
    . ~/.bash_customer
fi

. "$HOME/.cargo/env"
export LANG=en_US.UTF-8
