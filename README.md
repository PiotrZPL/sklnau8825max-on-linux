# Fixing sklnau8825max audio for Linux

### This guide will present ways of getting the sklnau8825max sound card to work under the mainline Linux kernel

## Supported devices

### Tested and working:
- Acer Chromebook 14 for Work (CP5-471) (codename: LARS)

### Should work but not tested:
- Acer Chromebook 11 (C771, C771T) (codename: LARS)
- ASUS Chromebook Flip C302 (codename: CAVE)
- other chromebooks with sklnau8825max sound card

## Supported operating systems

### Tested and working:
- Ubuntu 20.04 and derivatives (Linux Mint 20.x)

### Tested and not working:
- Ubuntu 22.04
- Debian 11

## Guide

### Prerequisites:
- supported chromebook
- Internet connection
- basic command line knowledge

### Firmware installation
Install [MrChromebox's UEFI firmware](https://mrchromebox.tech/) on your device
<br>Warning!
<br>This will void your warranty and may brick your device!

### OS installation
Normally install one of supported operating systems. Nothing fancy here.

### 1st way - fast and insecure
> #### 1. Clone the repository and enter it
> #### 2. Run the script with root privileges

### 2nd way - slower and still insecure
> #### 1. Clone the repository and enter it
> #### 2. Install required packages
> It is the step that makes this way insecure. You should not install random kernels from the Internet.
> #### 3. Point intel-hda-snd at old firmware and ensure it doesn't get switched back
> #### 4. Copy the topology file. It is based on `src/skl_n88l25_m98357a-tplg`
> #### 5. Copy the alsa configuration files and give them appropriate permissions
> #### 6. Copy event listeners and give them appropriate permissions
