#!/bin/bash

xcodebuild -project Repro/Repro.xcodeproj -scheme 'Repro' -destination 'generic/platform=iOS' -archivePath ./build/archive.xarchive -derivedDataPath  './build/deriveddata' clean archive
cp -R build builds/$(date +%y%m%d-%H%M%S)
