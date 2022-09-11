#!/bin/bash
rm android.keystore
printf "Minhyeok Park\nEngineering Team\nSpaceLab\n\n\nKR\nyes" | keytool -genkey -v -keystore android.keystore -alias android -keyalg RSA -keysize 2048 -validity 10000 --storepass password
