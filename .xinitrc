#Urxvt config
exec xrdb ~/.Xresources &

exec i3

#Start system timer for wallpapers
systemctl start wallpapers.timer

#Start docker daemon
systemctl start docker.service
