```
git clone repoURL
cd SwiftFuse
run local fuse preview
next:

fuse preivew -t=iOS
Xcode opens

Drag & Drop Mapbox.framework to Embeded Binaries (Check "Copy items if needed" checkbox)

File -> Add Files to Swift Fuse -> select Test.swift -> Say Yes to generate Bridging headers

now try to build project

the erros will be shown that Test class is not defined
```
