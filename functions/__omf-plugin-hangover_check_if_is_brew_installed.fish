function __omf-plugin-hangover_check_if_is_brew_installed
  if type -q brew
    return 0
  else
    echo "Please install 'brew' first in order to use $package"; return 1
  end
end
