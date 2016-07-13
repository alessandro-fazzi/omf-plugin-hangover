function hangover -d "Upgrade brew and brew-cask packages and clean 'open with' menu"
  brew update
  brew upgrade

  for app in (brew cask list)
    brew cask install $app
  end

  brew cleanup
  brew cask cleanup
  hangover_delete_old_brew_casks

  /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user
  killall Finder
  echo "Open With menu has been rebuilt, Finder will relaunch"
end
