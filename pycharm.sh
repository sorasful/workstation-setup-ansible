version="2019.2.3"  # set this to the version you want to install

# We need sudo to do some stuff
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root."
   exit 1
fi


# Download Pycharm
if [ ! -f /tmp/pycharm.tar.gz ]; then
    wget -O /tmp/pycharm.tar.gz "https://download.jetbrains.com/python/pycharm-community-$version.tar.gz"
fi

# Decompress Pycharm
tar -xf /tmp/pycharm.tar.gz --directory /opt

# Get rid of existing symlink that points to now-obsolete version
if [ -f /usr/bin/pycharm ]; then
    rm /usr/bin/pycharm
fi

# Create a symlink. Now you can run pycharm on the command line and
# on the first run, it will create a start menu shortcut and such
ln -s "/opt/pycharm-community-$version/bin/pycharm.sh" /usr/bin/pycharm
