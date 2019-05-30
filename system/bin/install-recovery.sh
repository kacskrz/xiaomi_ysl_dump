#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32779598:707e23c93e346d02a3db779b4b9edc0ce74a4126; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27915594:f6eac81bde9530108fbcb93c1f5f85a0b95d1c47 EMMC:/dev/block/bootdevice/by-name/recovery 707e23c93e346d02a3db779b4b9edc0ce74a4126 32779598 f6eac81bde9530108fbcb93c1f5f85a0b95d1c47:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
