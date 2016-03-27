#
# http://eli.thegreenplace.net/2013/12/18/makefile-functions-and-color-output
define colorecho
      @tput setaf 6
      @echo [$@] $1
      @tput sgr0
endef
