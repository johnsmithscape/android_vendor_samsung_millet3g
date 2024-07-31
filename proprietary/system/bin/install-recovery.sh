#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9691136:5bc747ad3a1c94c221991d6c48a5c2ddb040930b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8833024:a268b99e05a4f5c56929bdb27e28efd62d2445e7 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 5bc747ad3a1c94c221991d6c48a5c2ddb040930b 9691136 a268b99e05a4f5c56929bdb27e28efd62d2445e7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
