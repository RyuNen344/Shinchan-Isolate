# Shinchan-Isolate

Shinchan and Isolate test

## Getting Started

### setup tools
```sh
dart pub global activate fvm
fvm install
bundle install
sh ./scripts/flutter-use-bundler.sh
fvm flutter pub get
```

### generate code by build runner
```sh
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```
