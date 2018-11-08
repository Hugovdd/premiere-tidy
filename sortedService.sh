#!/bin/bash

#Directory to look in


# File extensions
videoEXT="(.mov|.3gp|.mp4|.avi|.flv|.wmv|.mxf|.dpx)"
imageEXT="(.jpg|.png|.tiff|.gif|.pdf)" 
audioEXT="(.mp3|.wav|.ogg)"

vectorEXT="(.svg|.ai|.eps)"
psdEXT="(.psd|.psb)"

# Name your folders
videoFolder="Footage"
imageFolder="Images"
audioFolder="Audio"
vectorFolder="Vectors"
psdFolder="PSDs"


#regEx
RegExFilter="([a-zA-Z0-9!-?\u0020-\uE007F\#\s_\\.\-\(\):])"

cd $1

# Make directories
mkdir Footage
mkdir Audio
mkdir Images
mkdir Vectors
mkdir PSDs



# Look for file and move to appropriate folder
for file in *
do
    # echo ""$file""
    # VIDEO
    if [[ "$file" =~ $RegExFilter+$videoEXT$ ]]; then
    mv "$file" $videoFolder
    #IMAGES
    elif [[ "$file" =~ $RegExFilter+$imageEXT$ ]]; then
    mv "$file" $imageFolder
    #VECTORS
    elif [[ "$file" =~ $RegExFilter+$vectorEXT$ ]]; then
    mv "$file" $vectorFolder
    #PSDs
    elif [[ "$file" =~ $RegExFilter+$psdEXT$ ]]; then
    mv "$file" $psdFolder
    #AUDIO
    elif [[ "$file" =~ $RegExFilter+$audioEXT$ ]]; then
    mv "$file" $audioFolder
    fi
done