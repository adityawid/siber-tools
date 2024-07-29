#https://medium.com/@mahmud0x/genymotion-proxying-android-app-traffic-through-burp-suite-in-windows-5754f742a06


openssl x509 -inform DER -in burp.der -out burp.pem
openssl x509 -inform PEM -subject_hash_old -in burp.pem
adb devices
adb root
adb remount
adb push burp.pem /sdcard/
adb shell mv burp.pem 9a5ba575.0
adb shell mv /sdcard/9a5ba575.0 /system/etc/security/cacerts/
adb shell chmod 644 /system/etc/security/cacerts/9a5ba575.0
adb shell settings put global http_proxy localhost:3333
adb reverse tcp:3333 tcp:8082
