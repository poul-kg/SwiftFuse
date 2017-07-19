using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Scripting;
using Fuse.Controls;
using Fuse.Controls.Native;
using Uno.Compiler.ExportTargetInterop;
using Uno.UX;

[Require("Source.Include", "SwiftFuse-Swift.h")]

//[Require("Xcode.FrameworkDirectory", "@('Frameworks':Path)")]
//[Require("Xcode.Framework", "@('Frameworks/Mapbox.framework':Path)")]

[UXGlobalModule]
public class SwiftHello : NativeModule
{
    static readonly SwiftHello _instance;

    public SwiftHello(){

         // Make sure we're only initializing the module once
        if(_instance != null) return;
        _instance = this;
        Resource.SetGlobalKey(_instance, "SwiftHello");

        AddMember(new NativeFunction("sayHello",(NativeCallback)SayHello));
        AddMember(new NativeFunction("getInt", (NativeCallback)GetInt));
    }

    //
    // SayHello
    //

    object SayHello(Context c, object[] args) {
        SayHello();

        return null;
    }

    [Foreign(Language.ObjC)]
    static extern(iOS) void SayHello(){
        @{
            Test *test = [[Test alloc] init];
            [test helloFromSwift];
        @}

    }

    static extern(!iOS) void SayHello(){
        debug_log("Not supported on this platform.");
    }

    //
    // GetInt
    //

    int GetInt(Context c, object[] args) {
        return GetInt();
    }

    [Foreign(Language.ObjC)]
    static extern(iOS) int GetInt() {
        @{
            Test *test = [[Test alloc] init];
            return [test getInt];
        @}
    }


}

/*namespace Test {
    extern(iOS) class iOSMapBox : Fuse.Controls.Native.iOS.View
    {
        public iOSMapBox() : base(Create()) { }
        static ObjC.Object Create()
        @{
            Test *test = [[Test alloc] init];
            return [test getMapBox];
        @}
    }

    public class MapBox : Fuse.Controls.Panel
    {
        protected override IView CreateNativeView()
        {
            if defined(iOS)
                return new iOSMapBox();

            else return base.CreateNativeView();
        }
    }
}*/