#!/bin/sh

if on_ac_power; then
	# laptop mode off
	echo 0 > /proc/sys/vm/laptop_mode

	# max memory size (pct) for storing dirty process data
	echo 20 > /proc/sys/vm/dirty_ratio

	# min memory size (pct) for storing dirty process data
	echo 10 > /proc/sys/vm/dirty_background_ratio

	# dirty data check frequency
	echo 500 > /proc/sys/vm/dirty_writeback_centisecs

	# turn off intel sound card power saving
	echo 0 > /sys/module/snd_hda_intel/parameters/power_save

	# power save mode for SATA devices
	echo max_performance > /sys/class/scsi_host/host0/link_power_management_policy

	# cpu profile: ondemand - fast increase cpu frequency on load
	echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
	echo ondemand > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor 

	# enable web-camera driver
	#modprobe uvcvideo

	# PCI Express power saving mechanism off
	echo default > /sys/module/pcie_aspm/parameters/policy

	# set brightness up
	echo 6 > /sys/class/backlight/acpi_video0/brightness
else
	# argessive laptop mode on
	echo 5 > /proc/sys/vm/laptop_mode

	# max memory size (pct) for storing dirty process data
	echo 90 > /proc/sys/vm/dirty_ratio

	# min memory size (pct) for storing dirty process data
	echo 1 > /proc/sys/vm/dirty_background_ratio

	# dirty data check frequency
	echo 50000 > /proc/sys/vm/dirty_writeback_centisecs

	# turn on intel sound card power saving
	echo 10 > /sys/module/snd_hda_intel/parameters/power_save

	# power save mode for SATA devices
	echo min_power > /sys/class/scsi_host/host0/link_power_management_policy

	# cpu profile: ondemand - fast increase cpu frequency on load
	echo powersave > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
	echo powersave > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor 

	# enable web-camera driver
	modprobe -r uvcvideo

	# PCI Express power saving mechanism on 
	echo powersave > /sys/module/pcie_aspm/parameters/policy

	# set brightness down 
	echo 3 > /sys/class/backlight/acpi_video0/brightness
fi
