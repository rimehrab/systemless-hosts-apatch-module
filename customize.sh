mkdir -p "$MODPATH/system/etc"
cp -af /system/etc/hosts "$MODPATH/system/etc/hosts"
chcon -r u:object_r:system_file:s0 "$MODPATH/system"
chmod 644 "$MODPATH/system/etc/hosts"
mkdir "$MODPATH/worker"
touch "$MODPATH/skip_mount"