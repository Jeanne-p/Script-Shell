#!/bin/sh

cd files
Ficher=$(ls)

for fichier in $Ficher; do
${file##*.}
done

cd ..
mkdir "Files_$USER"

cp /home/$USER/Desktop/files/* /home/$USER/Desktop/Files_$USER

cd "Files_$USER"
mkdir "images"
mkdir "code"
mkdir "docs"

mv /home/$USER/Desktop/Files_$USER/*.jpg /home/$USER/Desktop/Files_$USER/images
mv /home/$USER/Desktop/Files_$USER/*.png /home/$USER/Desktop/Files_$USER/images
mv /home/$USER/Desktop/Files_$USER/*.gif /home/$USER/Desktop/Files_$USER/images

mv /home/$USER/Desktop/Files_$USER/*.py /home/$USER/Desktop/Files_$USER/code
mv /home/$USER/Desktop/Files_$USER/*.php /home/$USER/Desktop/Files_$USER/code
mv /home/$USER/Desktop/Files_$USER/*.cpp /home/$USER/Desktop/Files_$USER/code

mv /home/$USER/Desktop/Files_$USER/*.od? /home/$USER/Desktop/Files_$USER/docs
mv /home/$USER/Desktop/Files_$USER/*.txt /home/$USER/Desktop/Files_$USER/docs


touch info.txt 
find /home/$USER/Desktop/Files_$USER/images -type f | wc -l >> info.txt
find /home/$USER/Desktop/Files_$USER/docs -type f | wc -l >> info.txt
find /home/$USER/Desktop/Files_$USER/code -type f | wc -l >> info.txt
find /home/$USER/Desktop/Files_$USER -type f | wc -l >> info.txt
echo "$(date +%Y%m%d)" >> info.txt
echo "$USER" >> info.txt

