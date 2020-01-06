export PATH="$PATH:/Applications/XAMPP/bin"
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
alias composer="php /usr/local/bin/composer.phar"
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
