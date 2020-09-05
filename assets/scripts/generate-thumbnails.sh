#! /bin/bash

# wow this is ugly. is there no better way to get the current directory?
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd $parent_path # go to the scripts folder
cd ../img
rm -rf thumbs

# create the same directory structure in the thumbs folder
function create_thumbnail_folder_structure() {
  for f in $(find . -type d)
  do
    if [ $f != "." ]; then
      mkdir -p thumbs/$f
    fi
  done
}

function make_thumbnails() {
  find . -type f -iname "*[.jpg, .png]" -exec convert "{}" -thumbnail 200x200 ./thumbs/"{}" \;
}

create_thumbnail_folder_structure
make_thumbnails
