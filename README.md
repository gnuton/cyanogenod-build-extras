# cyanogenod-build-extras
This repository contains my custom script to build cyanogenmod. This is parallel to build/

Samsung Galaxy S2 (i9100) - Build instructions:
'''
. build/envsetup.sh
croot -- e' un semplice cd ~/android/system
export USE_CCACHE=1
export TW_THEME=portrait_mdpi

brunch i9100
'''
