#!/usr/bin/bash

# Get commit message
if [ -z "$1" ]
then
message="Update"
else
message=$1
fi

# Clean up the build
flutter clean

# Get the dependencies
flutter pub get

# Analyze for errors
flutter analyze

# Run web build
flutter build web

# Copy the generated files into the Github pages repo directory
cp -R build/web/. ../../portfolio

echo "Pushing with commit message: $message"
ls
# Change into the Github pages repo directory, commit the changes and push
#cd ../../portfolio || exit
git add .
git commit -m "$message"
git push