if [ "$1" != "" ]; then
  case "$1" in
    github)
      git add --all
      if [ "$2" != "" ]; then
        echo "$2"
        git commit -m "$1"
      else
        echo "undocumented Changes of Version"
        git commit -m "undocumented Changes of Version"
      fi
      git push https://github.com/horald/riseup_help.git
      ;;
    setproxy)
      echo "Proxy setzen..."
      git config --add remote.origin.proxy "http://192.168.0.105:3129"
      ;;
    unsetproxy)
      echo "Proxy löschen..."
      git config --unset remote.origin.proxy
      ;;
  esac
else
  echo "Bitte Übergabeparameter angeben: setproxy, unsetproxy oder github"
fi




