function hangover_delete_old_brew_casks -d "Delete older-than-the-last-installed-version casks versions"
  if not test -d /usr/local/Caskroom
    echo "/usr/local/Caskroom does not exists"
    return 1
  end

  cd /usr/local/Caskroom

  for cask in (ls | tr -d '/')
    for old_cask in (ls -t -1 $cask | tail -n +2 | tr -d '/')
      echo "Deleting old cask $cask version $old_cask: "(pwd)"/$cask/$old_cask"
      sleep 2
      rm -rf "$cask/$old_cask"
    end
  end

  prevd
end
