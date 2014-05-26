#!/bin/sh

# how long should the popup remain?
duration=3

# define geometry
barx=10
bary=10
barw=120
barh=20

# colors
bar_bg='#333333'
bar_fg='#ffffff' # white is default

# font used
bar_font='Tamsyn'

# compute all this
baropt='-g ${barw}x${barh}+${barx}+${bary} -B${bar_bg} -f ${bar_font}'

#Create the popup and make it live for 3 seconds
(echo " $@"; sleep ${duration}) | bar ${baropt}
