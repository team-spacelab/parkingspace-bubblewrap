#!/bin/bash
apt-get update
apt-get install openjdk-11-jdk jq wget unzip -y

wget https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip -O android.zip
unzip android.zip  -d /root/android

/root/android/tools/bin/sdkmanager "platforms;android-31" "build-tools;30.0.3" --sdk_root=/root/android
yes | /root/android/tools/bin/sdkmanager --licenses --sdk_root=/root/android

mkdir ~/.bubblewrap
jq --null-input '.jdkPath = "/usr/lib/jvm/java-11-openjdk-amd64" | .androidSdkPath="/root/android"' > ~/.bubblewrap/config.json
