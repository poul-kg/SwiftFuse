```
git clone repoURL
cd SwiftFuse
run local fuse preview
next:

fuse preivew -t=iOS
Xcode opens
Try to run project on device
the error will be shown that Test type/class is not defined


// How to add MapBox if required
Drag & Drop Frameworks/Mapbox.framework to XCode -> Embeded Binaries (Check "Copy items if needed" checkbox)

// How to add Test.swift file if there is an error related to Test.swift file
File -> Add Files to Swift Fuse -> select Test.swift -> Say Yes to generate Bridging headers
```
