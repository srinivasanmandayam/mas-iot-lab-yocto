# www-data user requires admin rights for controlling the USB ports
# on the RPI3 gateway image
do_install_append () {
    echo "www-data ALL= NOPASSWD: /usr/bin/ykushcmd" >> ${D}${sysconfdir}/sudoers.d/www-data
    echo "www-data ALL= NOPASSWD:SETENV: /opt/lora/start.sh" >> ${D}${sysconfdir}/sudoers.d/www-data
    echo "www-data ALL= NOPASSWD:SETENV: /usr/bin/python3" >> ${D}${sysconfdir}/sudoers.d/www-data
    echo "www-data ALL= NOPASSWD:SETENV: /usr/bin/uhubctl" >> ${D}${sysconfdir}/sudoers.d/www-data
    echo "www-data ALL= NOPASSWD:SETENV: /usr/bin/udevadm" >> ${D}${sysconfdir}/sudoers.d/www-data
}
