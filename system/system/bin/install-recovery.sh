#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:17271712:cdd3d66ac0df34c31a5f0c50330d9a200cf66c56; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9470880:6a98bfa6ab9a7ff3dadb8076db18e2e64a35422c EMMC:/dev/block/platform/bootdevice/by-name/recovery cdd3d66ac0df34c31a5f0c50330d9a200cf66c56 17271712 6a98bfa6ab9a7ff3dadb8076db18e2e64a35422c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
