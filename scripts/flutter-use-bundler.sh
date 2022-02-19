#!/bin/bash

# check fvm sdk
if !(type fvm > /dev/null 2>&1); then
    echo "plz, activate fvm" >&2
    exit 1
fi

# replace pod call to use bundle
sed -i "" -e "s|'which', 'pod'|'bundle', 'show', 'cocoapods'|" ./.fvm/flutter_sdk/packages/flutter_tools/lib/src/macos/cocoapods.dart
sed -i "" -e "s|Running pod install...|Running bundle exec pod install...|" ./.fvm/flutter_sdk/packages/flutter_tools/lib/src/macos/cocoapods.dart
sed -i "" -e "s|'pod',|'bundle', 'exec', 'pod',|" ./.fvm/flutter_sdk/packages/flutter_tools/lib/src/macos/cocoapods.dart

# delete build tools cache
rm -rf ./.fvm/flutter_sdk/bin/cache/flutter_tools.snapshot
