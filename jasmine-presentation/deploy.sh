#!/bin/sh

git checkout master

echo "  Generating presentation"
slidedown jasmine-presenation.md > index.html

echo "  Copying assets"
mkdir ../tmp

cp -R images ../tmp/
cp index.html ../tmp/
cp styles.css ../tmp/

git checkout gh-pages

echo "  Moving Assets"
mv ../tmp/index.html .
mv ../tmp/styles.css .
rm -rf images
mv -f ../tmp/images images

rm -rf ../tmp