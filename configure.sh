#!/usr/bin/sudo /bin/bash
echo "set base_path         /mnt/sdb/apt-mirror
set mirror_path       $base_path/mirror
set skel_path         $base_path/skel
set var_path          $base_path/var
set postmirror_script $var_path/postmirror.sh
set defaultarch       armhf
set run_postmirror    0
set nthreads          20
set limit_rate        100m
set _tilde            0

# Use --unlink with wget (for use with hardlinked directories)
set unlink            1

set use_proxy         off
set http_proxy        127.0.0.1:3128
set proxy_user        user
set proxy_password    password

deb http://mirror.internode.on.net/pub/raspbian/raspbian jessie main contrib non-free firmware rpi
deb http://mirror.internode.on.net/pub/raspbian/raspbian jessie-staging main contrib non-free firmware rpi

#deb-src http://mirror.internode.on.net/pub/raspbian/raspbian jessie main contrib non-free firmware rpi
#deb-src http://mirror.internode.on.net/pub/raspbian/raspbian jessie-staging main contrib non-free firmware rpi

clean http://mirror.internode.on.net/pub/raspbian/raspbian" > mirror.list
