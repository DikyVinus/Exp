
### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# Global properties
properties() { '
kernel.string=CoreShift GKI Kernel for android12-5.10 devices by Diky_I
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install

## Boot shell variables
BLOCK=boot
IS_SLOT_DEVICE=1
RAMDISK_COMPRESSION=auto
PATCH_VBMETA_FLAG=auto

# Import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh

## Start boot install

split_boot # Use split_boot to skip ramdisk unpack

# ===== Professional UI PRINT =====
KERNEL_VER="$(strings "${AKHOME}/Image" 2>/dev/null | grep -E -m1 'Linux version.*#' | awk '{print $3}')"

ui_print " "
ui_print "========================================"
ui_print "         CoreShift GKI Kernel"
ui_print "========================================"
ui_print " Android 12 | Linux 5.10 Series"
ui_print " Maintainer  : Diky_I"
ui_print " Kernel Ver  : ${KERNEL_VER}"
ui_print " Slot Device : A/B"
ui_print "----------------------------------------"
ui_print " Flashing boot image..."
ui_print " "

flash_boot # Skip ramdisk repack

ui_print " "
ui_print "----------------------------------------"
ui_print " Flash completed successfully."
ui_print "========================================"
ui_print " "

## End boot install
