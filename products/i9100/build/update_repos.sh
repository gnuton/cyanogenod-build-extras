#!/bin/bash

# update this array according to the entries in your local manifest file in .repo/local_manifests/
REPOS=(
  "Lysergic-Acid/android_device_samsung_galaxys2-common device/samsung/galaxys2-common cm-12.1"
  "Lysergic-Acid/android_device_samsung_i9100 device/samsung/i9100 cm-12.1"
  "Lysergic-Acid/android_hardware_samsung hardware/samsung cm-12.1"
  "omnirom/android_bootable_recovery bootable/recovery android-5.1"
)


#===== DO NOT EDIT AFTER THIS LINE
. build/envsetup.sh

function merge_repo {
  read -a split <<< $i 
  repo=${split[0]}
  path=${split[1]}
  branch=${split[2]}
  echo "*********** REPO: $path ************"
  echo "* Updating from $repo branch $branch"
  croot
  cd $path
  git checkout -b $branch github/$branch
  git pull https://github.com/$repo $branch
  git push github $branch
}

for i in "${REPOS[@]}"
do
   merge_repo $i
done


