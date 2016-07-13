function hangover_delete_old_brew_casks -d "Delete older-than-the-last-installed-version casks versions"
  if not test -d /usr/local/Caskroom
    echo "/usr/local/Caskroom does not exists"
    return 1
  end

  if not test -d /opt/homebrew-cask/Caskroom
    echo "/opt/homebrew-cask/Caskroom does not "
    return 1
  end

  cd /opt/homebrew-cask/Caskroom

  for cask in (ls | tr -d '/')
    for old_cask in (ls -t -1 $cask | tail -n +2 | tr -d '/')
      echo "Deleting old cask $cask version $old_cask: (pwd)/$cask/$old_cask"
      rm -r "$cask/$old_cask"
    end
  end

  prevd
end
