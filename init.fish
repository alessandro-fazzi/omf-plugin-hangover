# omf-plugin-hangover initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

if not type -q brew
  echo "Please install 'brew' first!"; return 1
end
