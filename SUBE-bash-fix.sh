#!/bin/sh

FILE_PATH='/system/etc/permissions/com.nxp.mifare.xml'
CONTENT='<?xml version="1.0" encoding="utf-8"?><permissions><feature name="com.nxp.mifare" /></permissions>'
adb root
adb remount
adb shell "echo '$CONTENT' > $FILE_PATH"
adb reboot
echo "Done, rebooting phone..."
