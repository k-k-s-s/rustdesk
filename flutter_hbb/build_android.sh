#!/usr/bin/env bash
$ANDROID_NDK/toolchains/aarch64-linux-android-4.9/prebuilt/darwin-x86_64/bin/aarch64-linux-android-strip android/app/src/main/jniLibs/arm64-v8a/*
flutter build apk --target-platform  android-arm64  --release --obfuscate --split-debug-info ./split-debug-info
flutter build appbundle --target-platform  android-arm64  --release --obfuscate --split-debug-info ./split-debug-info
