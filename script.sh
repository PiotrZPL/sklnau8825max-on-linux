#!/bin/bash

echo "Installing required kernel, headers and libc packages..."
dpkg -i ./debs/*.deb

echo "Pointing intel-hda-snd at old firmware and ensuring it doesn't get switched back..."
ln -sf /lib/firmware/intel/dsp_fw_release_v969.bin /lib/firmware/intel/dsp_fw_release.bin
install ./fs/etc/apt/apt.conf.d/98old-firmware /etc/apt/apt.conf.d/98old-firmware

echo "Copying the topology file..."
cp ./fs/lib/firmware/skl_n88l25_m98357a-tplg.bin /lib/firmware/

echo "Copying the alsa configuration files..."
cp -r ./fs/usr/share/alsa/ucm2/sklnau8825max /usr/share/alsa/ucm2/
chmod -R +r /usr/share/alsa/ucm2/sklnau8825max

echo "Copying event listeners..."
cp ./fs/etc/acpi/events/* /etc/acpi/events/
chmod +r /etc/acpi/events/{plugheadphone,plugheadset,unplugheadphone}

echo "Please reboot to the new kernel now and check if your audio is working."
echo "If you do not hear any sound comming from the speakers, try plugging in your wired headphones."
echo "If the soundcard works with headphones, change audio mode in your audio mixer."
