# ~/.profile: executed by Bourne-compatible login shells.
/usr/sbin/lpadmin -p Label -E -o printer-is-shared=true

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# path set by /etc/profile
# export PATH
