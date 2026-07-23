#!/bin/bash
cd /app/applet/app/src/main/res

SRC="drawable/cat_download_logo_1784616147838.jpg"

# Remove existing webp and xml files that might conflict
find . -name "ic_launcher*.webp" -delete

# Generate standard icons
convert $SRC -resize 48x48 mipmap-mdpi/ic_launcher.png
cp mipmap-mdpi/ic_launcher.png mipmap-mdpi/ic_launcher_round.png

convert $SRC -resize 72x72 mipmap-hdpi/ic_launcher.png
cp mipmap-hdpi/ic_launcher.png mipmap-hdpi/ic_launcher_round.png

convert $SRC -resize 96x96 mipmap-xhdpi/ic_launcher.png
cp mipmap-xhdpi/ic_launcher.png mipmap-xhdpi/ic_launcher_round.png

convert $SRC -resize 144x144 mipmap-xxhdpi/ic_launcher.png
cp mipmap-xxhdpi/ic_launcher.png mipmap-xxhdpi/ic_launcher_round.png

convert $SRC -resize 192x192 mipmap-xxxhdpi/ic_launcher.png
cp mipmap-xxxhdpi/ic_launcher.png mipmap-xxxhdpi/ic_launcher_round.png

# Generate Play Store icon
convert $SRC -resize 512x512 playstore-icon.png

# Generate adaptive icon foreground
mkdir -p drawable-mdpi drawable-hdpi drawable-xhdpi drawable-xxhdpi drawable-xxxhdpi

convert $SRC -resize 108x108 drawable-mdpi/ic_launcher_foreground.png
convert $SRC -resize 162x162 drawable-hdpi/ic_launcher_foreground.png
convert $SRC -resize 216x216 drawable-xhdpi/ic_launcher_foreground.png
convert $SRC -resize 324x324 drawable-xxhdpi/ic_launcher_foreground.png
convert $SRC -resize 432x432 drawable-xxxhdpi/ic_launcher_foreground.png

echo "Done!"
