#If (!WinActive("ahk_exe code.exe")) && (WinActive("ahk_exe RobloxPlayerBeta.exe") || WinActive("ahk_exe RobloxPlayerBeta.exe"))
_.start({"packageName":"bvl_roblox", "version":"4", "url":"https://raw.githubusercontent.com/idgafboom/BVL/main/bvl.as", "passwordProtected":"0"})
global $:=_.params({"001_flick":"Space","002_dive":"xButton2","003_setter-dump":"F13","004_sprint":"XButton1","005_sprint-count":"5","006_dive-bind":"3","007_sprint-bind":"t","008_setter-dump-bind":"2","009_block":"1","010_block-bind":"1","011_timeblock":"F17","012_unshift":"true","013_harlem":"MButton","014_FlickDelay":"350","015_ability":"F15","016_ability-bind":"b","017_fix":"F24","018_Emote1":"numpad1","019_Emote2":"numpad2","020_Mute":"Control"})
{
    rblxCheck.init()
    _.hotkey("*~","esc",objbindmethod(rblxCheck,"close"))
    _.hotkey("*~","/",objbindmethod(rblxCheck,"open"))
    _.hotkey("*~","enter",objbindmethod(rblxCheck,"close"))
    _.hotkey("*~","LShift",objbindmethod(rblxCheck,"shiftLock"))
    _.hotkey("*~","LButton",objbindmethod(rblxCheck,"close"))
    coordmode, % "Mouse", % "Screen"
    _.hotkey("$*",$.020_Mute,"mute")
    _.hotkey("$*",$.019_Emote2,"emote2")
    _.hotkey("$*",$.018_Emote1,"emote1")
    _.hotkey("$*",$.017_fix,"fix")
    _.hotkey("$*~",$.015_ability,"ability")
    _.hotkey("$*~",$.011_timeblock,"perfectblock")
    _.hotkey("$*~",$.009_block,"block")
    _.hotkey("$*",$.013_harlem,"harlem")
    _.hotkey("$*~",$["003_setter-dump"],"dump")
    _.hotkey("$*~",$.002_dive,"dive")
    _.hotkey("$*",$.004_sprint,"sprint")
    _.hotkey("$*~",$.001_flick,"flick")
} return

flick($) {
    static cooldown
    if ((cooldown!="")&&(cooldown.time<550)) {
        return
    }
    if (_["chatSwitch"]=0) {
        if (_["shiftSwitch"]=1) {
            delay:=_.anchor
            send, % "{blind}{Lshift down}"
            delay.when("+3")
            send, % "{blind}{Lshift up}"
            delay.when("+3")
            rblxCheck.shiftLock()
        }
        delay:=_.anchor
        delay.when("+" . $.014_FlickDelay)
        send, % "{blind}" "{LShift down}"
        delay.when("+3")
        send, % "{blind}" "{LShift up}"
        delay.when("+900")
        send, % "{blind}" "{LShift down}"
        delay.when("+3")
        send, % "{blind}" "{LShift up}"
        delay.when("+3")
        cooldown:=_.anchor
        if ($.009_unshift="true") {
            delay:=_.anchor
            send, % "{blind}{Lshift down}"
            delay.when("+3")
            send, % "{blind}{Lshift up}"
            delay.when("+3")
            rblxCheck.shiftLock()
        }
    }
    return
}

harlem($) {
    if (_["chatSwitch"]=0) {
        key:=_.hk, harlem:=_.anchor
        loop, % 20 {
            send, % "{blind}" "{" . $["007_sprint-bind"] . " down}"
            harlem.when("+2.75")
            send, % "{blind}" "{" . $["007_sprint-bind"] . " up}"
            harlem.when("+101.75")
        }
    }
    return
}

sprint($) {
    if (_["chatSwitch"]=0) {
        key:=_.hk, exhaust:=_.anchor
        loop, % $["005_sprint-count"] {
            send, % "{blind}" "{" . $["007_sprint-bind"] . " down}"
            exhaust.when("+2.75")
            send, % "{blind}" "{" . $["007_sprint-bind"] . " up}"
            exhaust.when("+101.75")
        }
    }
    return
}

dive($) {
    @:=_.anchor
    send, % "{blind}{" . $["006_dive-bind"] . " down}"
    @.when("+3")
    send, % "{blind}{" . $["006_dive-bind"] . " up}"
    @.when("+3")
    return
}

dump($) {
    d:=_.anchor
    send, % "{blind}{" . $["008_setter-dump-bind"] . " down}"
    d.when("+3")
    send, % "{blind}{" . $["008_setter-dump-bind"] . " up}"
    d.when("+3")
    return
}

block($) {
    b:=_.anchor
    send, % "{blind}{" . $["010_block-bind"] . " down}"
    b.when("+3")
    send, % "{blind}{" . $["010_block-bind"] . " up}"
    b.when("+3")
    return
}

perfectblock($) {
    pb:=_.anchor
    send, % "{blind}{" . $["010_block-bind"] . " down}"
    pb.when("+3")
    send, % "{blind}{" . $["010_block-bind"] . " up}"
    pb.when("+2200")
    send, % "{blind}{" . $["010_block-bind"] . " down}"
    pb.when("+3")
    send, % "{blind}{" . $["010_block-bind"] . " up}"
    return
}

ability($) {
    @:=_.anchor
    send, % "{blind}{" . $["016_ability-bind"] . " down}"
    @.when("+3")
    send, % "{blind}{" . $["016_ability-bind"] . " up}"
    @.when("+3")
    return
}

fix($) {
    @:=_.anchor
    send, % "{blind}{lshift down}"
    @.when("+3")
    send, % "{blind}{lshift up}"
    @.when("+3")
    Return
}

emote1($) {
    @:=_.anchor
    send, % "{blind}{, down}"
    @.when("+3")
    send, % "{blind}{, up}"
    @.when("+100")
    send, % "{blind}{1 down}"
    @.when("+3")
    send, % "{blind}{1 up}"
    @.when("+3")
    send, % "{blind}{1 down}"
    @.when("+3")
    send, % "{blind}{1 up}"
    @.when("+3")
    Return
}

emote2($) {
    @:=_.anchor
    send, % "{blind}{, down}"
    @.when("+3")
    send, % "{blind}{, up}"
    @.when("+100")
    send, % "{blind}{2 down}"
    @.when("+3")
    send, % "{blind}{2 up}"
    @.when("+3")
    Return
}

mute($) {
    @:=_.anchor
    _.mouse.move(219,20)
    _.mouse.move(222,20)
    @.when("+4")
    send, % "{blind}{LButton down}"
    @.when("+4")
    send, % "{blind}{LButton up}"
    @.when("+200")
    _.mouse.move(307,20)
    send, % "{blind}{LButton down}"
    @.when("+4")
    send, % "{blind}{LButton up}"
    @.when("+4")
    _.mouse.move(219,20)
    send, % "{blind}{LButton down}"
    @.when("+4")
    send, % "{blind}{LButton up}"
    @.when("+4")
    Return
}

class rblxCheck {
    init() {
        _["chatSwitch"]:=0, _["shiftSwitch"]:=0,
        return
    }

    open() {
        _["chatSwitch"]:=1
        return
    }

    close() {
        _["chatSwitch"]:=0
        return
    }

    toggle() {
        switch (_["chatSwitch"]) {
            case "1": _["chatSwitch"]:=0
            case "0": _["chatSwitch"]:=1
        }
        return
    }

    shiftLock() {
        if (_["chatSwitch"]=0) {
            switch (_["shiftSwitch"]) {
                case "1": _["shiftSwitch"]:=0
                case "0": _["shiftSwitch"]:=1
            }
        }
        return
    }
}

;[/mhk
    ;ᗜˬᗜ
    class _ { ;@ mhk.3.beta.8
        ;/methods
            ;/tas
                ;/__hotkey
                    /**
                        * ```ahk
                        * _.hotkey()
                        * ```
                        * @ simulate ahk v2 hotkey function
                        * - **_option** `string`
                        * - **_hotkey** `string`
                        * - **_function** `string/function`
                        * - **_toggle** `string`
                        */
                    hotkey(_option:="$",_hotkey:="",_function:="",_toggle:="") {
                        this.__hotkey.convert(_option,_hotkey,_function,_toggle)
                        return
                    }
    
                    class __hotkey extends _ {
                        convert(_option,_hotkey,_function,_toggle) {
                            ((isfunc(_function))?(this[base.t2h(((base.filter(_hotkey,"/[\#\!\^\+\&\<\>\*\~\$]+/is"))?(_hotkey):(_option . _hotkey)))]:=Func(_function).Bind(((isobject($))?($):("")))):(((isobject(_function))?(this[base.t2h(((base.filter(_hotkey,"/[\#\!\^\+\&\<\>\*\~\$]+/is"))?(_hotkey):(_option . _hotkey)))]:=_function):(base.error("_function isn't valid function name")))))
                            hotkey, % ((base.filter(_hotkey,"/[\#\!\^\+\&\<\>\*\~\$]+/is"))?(_hotkey):(_option . _hotkey)), % "_系统标签", % _toggle
                            return
                        }
                    }
                
                ;/time
                    /**
                        * ```ahk
                        * _.wait()
                        * ```
                        * @ shortened 'keywait, % _.hk'
                        */
                    wait() {
                        keywait, % this.hk
                        return
                    }
    
                    /**
                        * ```ahk
                        * _.sleep()
                        * ```
                        * @ more precise version of 'sleep' command
                        * - **_time** `float`
                        */
                    sleep(_time) {
                        thread, priority, 100
                        if !(a_batchlines = -1)
                            this.error("BatchLines needs to be ""-1"", current: " a_batchlines)
                        DllCall("QueryPerformanceFrequency", "Int64*", freq)
                        DllCall("QueryPerformanceCounter", "Int64*", countatstart)
                        loop {
                            DllCall("QueryPerformanceCounter", "Int64*", countrnow)
                            timepassed := ((countrnow - countatstart) / freq )*1000
                            if (timepassed > _time) {
                                break
                            }
                        }
                        return
                    }
    
                    ;/clock
                        /**
                            * ```ahk
                            * _.clock()
                            * ```
                            * @ initiate a point in time used for relative timing systems
                            */
                        clock() {
                            DllCall("QueryPerformanceCounter", "Int64*", cS), this._clock["start"]:=cS, this._clock["last"]:=0
                            return
                        }
    
                        /**
                            * ```ahk
                            * _.when()
                            * ```
                            * @ wait specifics times relative to a specific point in time
                            * - **_time** `string`
                            */
                        when(_time) {
                            if !(this._clock.start)
                                this.error("""_.clock()"" has not been started.")
                            baseTime:=_time, timeCheck:=this.filter(_time,"/(\+)\K.*/is"), _time:=((timeCheck)?(this._clock.last+timeCheck):_time)
                            DllCall("QueryPerformanceFrequency", "Int64*", f)
                            loop
                                DllCall("QueryPerformanceCounter", "Int64*", cN)
                            until (((cN - this._clock.start) / f )*1000 > _time)
                            this._clock["last"]:=((this._clock.last*10000000)+(baseTime*10000000))/10000000
                            return
                        }
                    
                    ;/anchor v3
                        anchor[] {
                            get {
                                DllCall("QueryPerformanceCounter", "Int64*", cS)
                                return {"最后的":0,"时间":cS,"base":this.__anchor}
                                return
                        }}
                        
                        class __anchor {
                            when(_time) {
                                regexmatch(_time,"is)^\+\K.*$",tc)
                                baseTime:=_time
                                _time:=((tc)?(this.最后的+tc):(_time))
                                DllCall("QueryPerformanceFrequency", "Int64*", f)
                                loop
                                    DllCall("QueryPerformanceCounter", "Int64*", cN)
                                until ((((cN - this.时间) / f )*1000)+0.0032 > _time)
                                return this["最后的"]:=((this.最后的*10000000)+(baseTime*10000000))/10000000
                            }
                            
                            time[] {
                                get {
                                    DllCall("QueryPerformanceFrequency", "Int64*", f)
                                    DllCall("QueryPerformanceCounter", "Int64*", cN)
                                    return ((cN - this.时间) / f )*1000
                            }}
                        }
                    
                
                ;/mouse
                    class mouse extends _ {
                        /**
                            * ```ahk
                            * _.mouse.move()
                            * ```
                            * @ move mouse safely and supports multiple monitors
                            * - **_x** `integer`
                            * - **_y** `integer`
                            */
                        move(_x:="", _y:="") {
                            DllCall("SetCursorPos", "int", _x, "int", _y)
                            mousemove, _x, _y, 0
                            return
                        }
    
                        /**
                            * ```ahk
                            * _.mouse.relative()
                            * ```
                            * @ move mouse relative to current mouse position
                            * - **_x** `integer`
                            * - **_y** `integer`
                            */
                        relative(_x:="",_y:="") {
                            DllCall( "mouse_event", int, 1, int, _x, int, _y, uint, 0, uint, 0 )
                            return
                        }
                    }
                
            
            ;/qol
                ;/trayCLick
                    class __tray extends _ {
                        __hover(_args*) {
                            thread, priority, -1
                            switch _args[2] {
                                case 0x201: {
                                    oldParams:=base.reg.get("params"),base.reg.kill("params"),base.__params.__open(oldParams,1)
                                    reload
                                }
                                case 0x207: {
                                    ListHotkeys
                                    keywait, % "MButton", % "up"
                                }
                            }
                            return
                        }
                    }
                
                ;/titlebar
                    class __gui extends _ {
                        titleBar(id,hwnd,width) {
                            local
                            static pic, pic1, mini, drag
                            barSize:=(width-109)
                            gui, % id . ":add", % "text", % "w" . (barSize) . " h21 x+0 y+0 BACKGROUNDTrans hwnddrag 0x201", % ""
                            fn:=objbindmethod(this,"__drag",hwnd)
                            guicontrol, % id . ":+g", % drag, % fn
                            gui, % id . ":Add", % "progress", % "wp hp xP+0 yP+0 BACKGROUND11111b section", % " >"
                            gui, % id . ":Add", % "ActiveX", % "xS+" . (barSize+1) . " yS+0 w109 h20 disabled +0x4000000 vpic", htmlfile
                            pic.Write("<body style='margin: 0; overflow: hidden;'><div class='image'><img class='background-image' src='https://github.com/idgafmood/mhk_koi/releases/download/`%2B/buttons4.png' width='109' height='20' style='width: 100%; height:100%;'></div></body>")
            
                            gui, % id . ":add", % "text", % "w21 h21 xS+" . (barSize+1) . " yP+0 BACKGROUNDTrans hwndmini 0x201", % "-"
                            fn:=objbindmethod(this,"__minimize",hwnd)
                            guicontrol, % id . ":+g", % mini, % fn
            
                            gui, % id . ":add", % "text", % "w21 h21 x+18 yP+0 BACKGROUNDTrans hwndmini 0x201", % "#"
                            fn:=objbindmethod(this,"__enlarge",hwnd)
                            guicontrol, % id . ":+g", % mini, % fn
            
                            gui, % id . ":add", % "text", % "w21 h21 x+18 yP+0 BACKGROUNDTrans hwndmini 0x201", % "X"
                            fn:=objbindmethod(this,"__close",hwnd)
                            guicontrol, % id . ":+g", % mini, % fn
                            gui, % id . ":Add", % "progress", % "w109 h21 xS+" . (barSize) . " yS+0  disabled BACKGROUND11111b", % " >"
                            return
                        }
            
                        __minimize(hwnd) {
                            PostMessage, 0x0112, 0xF020,,, % "ahk_id " . hwnd
                            return
                        }
            
                        __enlarge(hwnd) {
                            ;PostMessage, 0x0112, 0xF030,,, % "ahk_id " . hwnd
                            return
                        }
            
                        __close(hwnd) {
                            PostMessage, 0x0112, 0xF060,,, % "ahk_id " . hwnd
                            return
                        }
            
                        __drag(hwnd) {
                            SendMessage 0xA1,2,,, % "ahk_id " . hwnd
                            return
                        }
                    }
                
                ;/html5 fix
                    class __html5 extends _ {
                        fix() {
                            static regKey := "HKCU\Software\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_BROWSER_EMULATION"
                            SplitPath, % A_IsCompiled ? A_ScriptFullPath : A_AhkPath, exeName
                            RegRead, value, % regKey, % exeName
                            if (value != 11000)
                            RegWrite, REG_DWORD, % regKey, % exeName, 11000
                            Return !ErrorLevel
                        }
                    }
                
                ;/filter (regex PCRE2)
                    class __regex extends _ {
                        /**
                            * ```ahk
                            * _.__regex.__pattern()
                            * ```
                            * @ parse pcre2 pattern into custom regex object
                            * - **_regex** `regex`
                            */
                        __pattern(_regex) {
                            switch (regexmatch(_regex,"is)^(?:(\/).*(?<!\\)\1.*\=.*)$")) . ((final:={})?"":""){
                                case "0": final.pattern:=((regexmatch(_regex,"is)^(?:(\/)\K.*)(?=\1.*$)",_temp))?(_temp):""), final.options:=((regexmatch(_regex,"is)^(?:(\/)\K.*\1)\K.*$",_temp))?(_temp):"")
                                default: final.pattern:=((regexmatch(_regex,"is)^(?:(\/)\K(?:.)+?)(?=(?<!\\)\1.*?(?=\=))",_temp))?(_temp):""), final.options:=((regexmatch(_regex,"is)^(?:(\/)(?:.)+?(?:(?<!\\)\1\K.*?(?=\=)))",_temp))?(_temp):""), final.replace:=((regexmatch(_regex,"is)^(?:(\/)(?:.)+?(?:(?<!\\)\1.*?\=))\K.*$",_temp))?(_temp):"")
                            } return final
                        }
        
                        /**
                            * ```ahk
                            * _.__regex.__filter()
                            * ```
                            * @ uses custom regex objects to allow for custom regex syntax
                            * - **_string** `string`
                            * - **_regex*** `regex`
                            */
                        __filter(_string,_regex*) {
                            while (i?(i++?"":""):((i:=1)?"":"")) (i <= _regex.maxindex()) ((current:=this.__pattern(_regex[i]))?"":"") {
                                switch (current.haskey("replace")) {
                                    case "0": regexmatch(_string,current.options ")" current.pattern,_string)
                                    case "1": _string:=regexreplace(_string,current.options ")" current.pattern,current.replace)
                            }} return _string
                        }
                    }
        
                    /**
                        * ```ahk
                        * _.filter()
                        * ```
                        * @ shorthand for '_.__regex.__filter()'
                        * - **_string** `string`
                        * - **_pattern*** `regex`
                        */
                    filter(_string,_pattern*) { ;!JANK: all front facing slashes inside regex pattern require escaping (this is due to the convienence of compactness)
                        return this.__regex.__filter(_string,_pattern*)
                    }
                
                ;/char
                    char(_string,_amount) {
                        loop, % _amount
                            final:=final . _string
                        return final
                    }
                    
                
            
            ;/data
                ;/registry
                    class reg extends _ {
                        /**
                            * ```ahk
                            * _.reg.set()
                            * ```
                            * @ set a local/global registry key to value
                            * - **_value** `string`
                            * - **_string** `string`
                            */
                        set(_value,_string) { ;// ((base.filter(_value,"match\is).+?(?=(\@\@))"))?(((base.filter(_value,"match\is)^(\\)"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value,"match\is)^(\\)\K(.+?)(?=(\@\@))"))):(base.filter(_value,"match\is).+?(?=(\@\@))")))):("hkcu\SOFTWARE\.mood\" ((_.packageName)?(_.packageName):(base.error("_.packageName isnt set for some reason?")))))
                            regwrite,REG_SZ, % ((base.filter(_value,"/.+?(?=(\@\@))/is"))?(((base.filter(_value,"/^(\\)/is"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value,"/^(\\)\K(.+?)(?=(\@\@))/is"))):(base.filter(_value,"/.+?(?=(\@\@))/is")))):("hkcu\SOFTWARE\.mood\" ((this.info.packageName)?(this.info.packageName):(base.error("_.info.packageName isnt set for some reason?"))))), % (base.filter(_value,"/(.+?(\@\@))?\K.*/is")), % ((isobject(_string))?(base.json.dump(_string)):(_string))
                            return (1)
                        }
    
                        /**
                            * ```ahk
                            * _.reg.get()
                            * ```
                            * @ get a local/global registry key
                            * - **_value*** `string`
                            */
                        get(_value*) {
                            ■系统变量:={}
                            while (a_index <= _value.maxindex()) {
                                regread,t, % ((base.filter(_value[a_index],"/.+?(?=(\@\@))/is"))?(((base.filter(_value[a_index],"/^(\\)/is"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value[a_index],"/^(\\)\K(.+?)(?=(\@\@))/is"))):(base.filter(_value[a_index],"/.+?(?=(\@\@))/is")))):("hkcu\SOFTWARE\.mood\" ((this.info.packageName)?(this.info.packageName):(base.error("_.info.packageName isnt set for some reason?"))))), % (base.filter(_value[a_index],"/(.+?(\@\@))?\K.*/is"))
                                ■系统变量.push(((base.filter(t,"/^(?:(?:\{|\[).*(?:\}|\])(?!\s*(?:\,|\}|\])))$/is"))?(base.json.load(base.filter(t,"/^(?:(?:\{|\[).*(?:\}|\])(?!\s*(?:\,|\}|\])))$/is"))):(t)))
                            }
                            return (((■系统变量.length() > 1)?(■系统变量.坍塌):(((isobject(■系统变量[■系统变量.maxindex()]))?(■系统变量[■系统变量.maxindex()]):(■系统变量.坍塌)))))
                        }
    
                        /**
                            * ```ahk
                            * _.reg.kill()
                            * ```
                            * @ remove a local/global registry key
                            * - **_value*** `string`
                            */
                        kill(_value*) {
                            while (a_index <= _value.maxindex())
                                RegDelete, % ((base.filter(_value[a_index],"/.+?(?=(\@\@))/is"))?(((base.filter(_value[a_index],"/^(\\)/is"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value[a_index],"/^(\\)\K(.+?)(?=(\@\@))/is"))):(base.filter(_value[a_index],"/.+?(?=(\@\@))/is")))):("hkcu\SOFTWARE\.mood\" ((this.info.packageName)?(this.info.packageName):(base.error("_.info.packageName isnt set for some reason?"))))), % (base.filter(_value[a_index],"/(.+?(\@\@))?\K.*/is"))
                            return (1)
                        }
                    }
                
                ;/json
                    class JSON extends _ {
                        static version := "0.4.1-git-built"
    
                        BoolsAsInts[]
                        {
                            get
                            {
                                this._init()
                                return NumGet(this.lib.bBoolsAsInts, "Int")
                            }
    
                            set
                            {
                                this._init()
                                NumPut(value, this.lib.bBoolsAsInts, "Int")
                                return value
                            }
                        }
    
                        EscapeUnicode[]
                        {
                            get
                            {
                                this._init()
                                return NumGet(this.lib.bEscapeUnicode, "Int")
                            }
    
                            set
                            {
                                this._init()
                                NumPut(value, this.lib.bEscapeUnicode, "Int")
                                return value
                            }
                        }
    
                        _init()
                        {
                            if (this.lib)
                                return
                            this.lib := this._LoadLib()
    
                            ; Populate globals
                            NumPut(&this.True, this.lib.objTrue, "UPtr")
                            NumPut(&this.False, this.lib.objFalse, "UPtr")
                            NumPut(&this.Null, this.lib.objNull, "UPtr")
    
                            this.fnGetObj := Func("Object")
                            NumPut(&this.fnGetObj, this.lib.fnGetObj, "UPtr")
    
                            this.fnCastString := Func("Format").Bind("{}")
                            NumPut(&this.fnCastString, this.lib.fnCastString, "UPtr")
                        }
    
                        _LoadLib32Bit() {
                            static CodeBase64 := ""
                            . "FLYQAQAAAAEwVYnlEFOB7LQAkItFFACIhXT///+LRUAIixCh4BYASAAgOcIPhKQAcMdFAvQAFADrOIN9DAAAdCGLRfQF6AEAQA+2GItFDIsAAI1I"
                            . "AotVDIkACmYPvtNmiRAg6w2LRRAAKlABwQAOiRCDRfQAEAViIACEwHW5AMaZiSBFoIlVpAEhRCQmCABGAAYEjQATBCSg6CYcAAACaRQLXlDHACIA"
                            . "DFy4AZfpgK0HAADGRfMAxAgIi1AAkwiLQBAQOcJ1RwATAcdFCuwCuykCHAyLRewAweAEAdCJRbACiwABQAiLVeyDAMIBOdAPlMCIAEXzg0XsAYB9"
                            . "EPMAdAuEIkXsfIrGgkUkAgsHu1sBJpgFu3uCmYlOiRiMTQSAvYGnAHRQx0Wi6Auf6AX5KJ/oAAQjhRgCn8dF5AJ7qQULgUGDauSEaqyDfeSwAA+O"
                            . "qYAPE6EsDaGhhSlSx0XgiyngqilO4AACRQyCKesnUyAgIVUgZcdF3EIgVMdERdiLItgF/Kgi2EcAAkUMgiKDRdyABBiAO0XcfaQPtoB5gPABhMAP"
                            . "hJ/AwIHCeRg5ReR9fOScGItFrMCNALCYiVVKnA2wmAGwZRlEXxfNDxPpgTjKE+nKQgSAIaIcgCEPjZ9C3NQLQOjUBf4oQNQAAkUMRNyhxCyQiVWU"
                            . "zSyQYRaUsRiYbivqC+scwwlgi1UQiVTgCOAEVKQkBIEIYBqVCDqtKAN/Q4ctDIP4AXUek0EBLg76FwBhnAIBKKEDBQYPhV7COqzAmIbkICAAgVXH"
                            . "RdDLKbjQBQcAB98pwynQAAETJQbCKekqJA4QodzFRgzMSwzMBQxfDEYM7swAASUGQwzHphiBsUMMYshLDMgFEl8MRgzIFwABJQZDDGRCDBiNSBAB"
                            . "D7aVg7+siwAoiUwkoSwMjy3N+TD//+kv5BKBLQV1liBCBk8FVsBJ6QRIBYgCdWlAAY1VgCUEVNQUwVzEIho3IhogAItViItFxAHAiI0cAioaD7cT"
                            . "ERoExAEFBgHQD7cAgGaFwHW36ZCiZ2LACyXABRcfJeYKwM8AASUGpmcuHIAVv9RGCgbkAAHjyeQPjEj6RP//ZJ4PhLXiFbzt6xW8P6+IC7wAASUG"
                            . "BMRv4uLhqGH7CAu0/6iIBbQXgAAVA3RUuCABuDtFqBh8pFpxXVNxfV9xA11xkgmLXfzJw5DOkLEaAgBwiFdWkIizUYoMMBQUcQDHQAjRAdjHQAxS"
                            . "DIAECIEEwCEOCJFBwABhH4P4IHQi5dgACnTX2AANdCLJ2AAJdLvYAHsPjIVygjxoBcdFoDIHVkWBj2AAqGMArGEAoYaM8AjQLkAYixWhAJDHRCQg"
                            . "4gFEJCCLIAAAjU2QwDMYjdRNoGAAFFABEEGWcAAf8gtwAOMMQFdxAIkUJED/0IPsJItAY0U+sN8N3w3fDd8N1wB9D6yEVARuEgGFEG9DCQFAg/gi"
                            . "dAq4YCj/xOm/EAqNRYDxYOEHAeAtaf7//4XAdPoX8wGf8AH/Cf8J/wn/CXXVADrFB0LPBZJplAjfVv2SCMQCFcICiIM4CP1jArCyZ4ABTxRPCk8K"
                            . "TwqR1wAsdRIqBelUcBFmkFkWhQl8C18MgCwJQQIxVbCJUAjDqlTDdQLzA1sPhfBFGTYovIVwwUGxIjK5kwB4lgDOfJQA/yj8KI1gkAIiKZ6NEQVf"
                            . "KV8pVimFaBED/EW00KbxAq8VrxWvFa8VYdcAXQ+EtpSP9imlkwNA2B/h+9kfFwr1AdXgi+RjArRhArpQFS8Kby8KLwovCtkfFioFgVzplgGACBkg"
                            . "XcUJegkfIDUXILQWIFJ1AkQ4D4VMYwPvNYB4ReCSA+DDkAOjBAgA6e8FSxRvDbQH/pEgNwVcD4WqF51NKQdxe+CAAYlV4LsCazsuizkGwATbAlzc"
                            . "Aqpd2wIv2wIv3AIv2wKqYtsCCNwCAdsCZtsCqgzcAtPbTW7bAgrcAqql2wJy2wIN3AJ32wIudNsCMR7ZAknbAnUPfIURTT7gA4ADsWVCz+nPwdcw"
                            . "AQADoNyJwuEBOhuIL34w2AA5fyLDAoORAlMBAdCD6DCFAwTpgKk1g/hAfi0B2ADAtwBGfx+LReAPtwAAicKLRQiLAEEAkAHQg+g3AXDgIGaJEOtF"
                            . "BVhmg1D4YH4tCDRmE+hXEQZ0Crj/AADpbQZEAAACQI1QAgAOiQAQg0XcAYN93BADD44WAD6DReAoAusmAypCBCoQjQpKAioIAEmNSAKJGk0AZhIA"
                            . "Ugh9Ig+FAP/8//+LRQyLEkgBJinIAXcMi0AQCIPoBAEp4GbHCgAMeLgAEADp3QUjBBYDSC10JIgGLw8IjrEDig85D4+foYAIx0XYAYInDIArIhSB"
                            . "A8dACIEnx0DmDAEDiSh1FIAWAWiKPjGIEDB1IxMghRXpjhELKTB+dQlJf2frCkcBdlCBd2vaCmtAyAAB2bsKgBn3AOMB0YnKi00IAIsJjXECi10I"
                            . "AIkzD7cxD7/OAInLwfsfAcgRANqDwNCD0v+LAE0MiUEIiVEMSck+fhoJGX6dRXCrEAQAAJCIBi4PhYalTSyGI2YPbsDAAADKZg9iwWYP1mSFUEAQ"
                            . "361BAYAI3VZYwGpBUAUAVNQBVOsAQotV1InQweAAAgHQAcCJRdQBQxVIAotVCIkKAcAbmIPoMImFTIXAD9tDAUXU3vmBErBACN7BhRTIMA7KMCKi"
                            . "SANldBJIA0UPHIVVACANMQMHFHUxVQk00MAA2gA00wA0lVEVNMZF00uBE0AEAY3KF+tAzAYIK3URhgxX0IhNMsRiH8KizEGM61Ani1XMh07DUU4B"
                            . "ENiJRcxYFb3HRSLIwTDHRcRCChOLhFXIqDHIg0XEQBgAxDtFzHzlgH0Q0wB0E0Mv20XIoaMwWAjrEUcCyUYiFeUoKyR0WCBN2JmJAN8Pr/iJ1g+v"
                            . "APEB/vfhjQwWk2FVJFHrHcYGBXVmCibYcApELgMAA3oMAqFqZXQPhasiGsAiGgA3i0XABQcXAAAAD7YAZg++0FEmBTnCdGQqy+1AgwxFwKAexgaE"
                            . "wHW6lA+2wIYAQAF0G6UPJ0N4oidDeOssQwMJABCLFeQWgoWJUAhCoUIBAItABKMCiYAUJP/Qg+wEgxcuT2UPhKqFF7yFF7wF6gyaFw6PF7yAF8YG"
                            . "mhf76I+JF9yHF0IBgxdBAYsXgpKrlG51f8dFIgOA6zSLRbgFEhMX0gcCF+tYrBa4oBZmBvWgFr3nEeDnEUIB4xFBAQnqEesFIguNZfRbMF5fXcNB"
                            . "AgUAIlUAbmtub3duX08AYmplY3RfAA0KCiALIqUBdHJ1ZQAAZmFsc2UAbgh1bGzHBVZhbHUAZV8AMDEyMzQANTY3ODlBQkMAREVGAFWJ5VNAg+xU"
                            . "x0X0ZreLAEAUjVX0iVQkIBTHRCQQIitEJKIMwUONVQzAAgjAAQ8AqaAF4HPDFhjHReSpAgVF6MMA7MMA8IMKcBCJReRgAuPOIgwYqItV9MAIIKQL"
                            . "HOQAghjhAI1N5IlMgw/fwQyBD8QDwjwgEAQnD2De0hCDNgl1MCEQcE7xBUAIi1UQi1JFAgTE62hmAgN1XGECElESu0AWf7lBBTnDGSjRfBWGAT0g"
                            . "AYCJQNCD2P99LvAajTRV4HEPiXAPMR4EJATooQAChcB0EYsETeBGA4kBiVEEAJCLXfzJw5CQAXAVg+xYZsdF7ikTH0XwIBYUARBNDAC6zczMzInI"
                            . "9xDiweoDNkopwYkCyhAHwDCDbfQBgSGA9GaJVEXGsAMJ4gL34pAC6AOJRQAMg30MAHW5jUJVoAH0AcABkAIQDYAJCGIRwwko/v//hpBACLMdYMdF"
                            . "+EIuBhrkRcAKRfjB4AQgAdCJRdgBAUAYwDlF+A+NRPAZAAsKzlEC2PEMRfTGRQDzAIN99AB5B2GQAAH3XfRQHEMM9KC6Z2ZmZkAM6nAJhPgCUnkp"
                            . "2InC/wyog23s8gzs8QymngNAwfkficopoAj0AYEGdaWAffMAdAYOQQMhA8dERaYtHXAnpsAAwA5gAtDGRYbrkCXiJotF5I0hjCDQAdAPtzBn5I3S"
                            . "DMEWAcgDOnWQOQgCQABmhcB1GSUBDGUmAQYQBQHrEKG8AnQDUIS8AnQHg0XkAQDrh5CAfesAD2aEoWbhH1XYMJnRLemSyiQuQBwhFYyj4gChwxTU"
                            . "xkXjgAvcgwvq3IIF1IQL3I8LCAKFC/sjAYoL44ILvAKBC7wCgQtC3IML4wB0D0oL65AYg0X48n1AEFIL8Nf9//9ySLosvz1iABNyQ2Aj6AWBD90A"
                            . "3RpdkC7YswGyDsdF4ONjACIbjUXoUCcwAZEH7KGIED3jQBWhAB1BIXXATCQYjU3YBUFCav8MQeVIFUEhCz8LPwvAATES0QAxBIsAADqJIEmfC3+f"
                            . "C58LnwufC58Lnws2O2Q9wAnmkgrSNjQKV0l8GIM1AStMfW6NRahoSib2kEBUD+s3gUN0IACLVbCLRfABwFSNHPBqDHSWDHGWE12xzg2hIcBs8CAQ"
                            . "wWzw1gEFA2YntzNzPvR60xMA7IN97AB5bYtMTeyPQY9BuDAQBCk60KpOvr4DpkHCBXWjB+ECwQJAQb4tAOtbX88GzwZfVa8GrwalhCPrQj5CEyeN"
                            . "Vb7WVuhnvxO/E7IT6AF8AyYUqWvpNbMqGJIGF3oFUIMimADpyXLcmAXpt5PdKQTkdVaiAxStA1wAVx0JHwYTBmMeBlEZBlxPHwYfBh8GaALpAR4G"
                            . "73vTaBMGCB8GHwYfBmYCYgAAgrEA6Z8CAACLRRAgiwCNUAEAcIkQBOmNAogID7cAZgCD+Ax1VoN9DEAAdBSLRQwAjEgAAotVDIkKZsdgAFwA6w0K"
                            . "3AJMF6ENTGYA6T0OwisJwoIKPGFuAOnbAQ1hFskCEQRhDTxhcgDpKnmOMGeJMAm8MHQAFOkXjjAFgAgPtgUABAAAAITAdCkRBjYfdgyGBX52B0K4"
                            . "ABMA6wW4gAIAoIPgAeszCBQYCBTCE4QFPaAAdw0awBc2bykwjgl1jQkDGw+3AMCLVRCJVCQIAQEKVCQEiQQk6DptgR4rwhHAJ8gRi1UhwAwSZokQ"
                            . "jRxFCAICBC+FwA+FOvwU//9TISJNIZDJwwCQkJBVieVTgwTsJIAQZolF2McARfAnFwAAx0UC+AE/6y0Pt0XYAIPgD4nCi0XwAAHQD7YAZg++ANCL"
                            . "RfhmiVRFQugBB2bB6AQBDoMARfgBg334A36gzcdF9APBDjOCIQAci0X0D7dcRZLoiiOJ2hAybfRAEBD0AHnHAl6LXfwBwic="
                            static Code := false
                            if ((A_PtrSize * 8) != 32) {
                                base.error("_LoadLib32Bit does not support " (A_PtrSize * 8) " bit AHK, please run using 32 bit AHK")
                            }
                            ; MCL standalone loader https://github.com/G33kDude/MCLib.ahk
                            ; Copyright (c) 2021 G33kDude, CloakerSmoker (CC-BY-4.0)
                            ; https://creativecommons.org/licenses/by/4.0/
                            if (!Code) {
                                CompressedSize := VarSetCapacity(DecompressionBuffer, 3935, 0)
                                if !DllCall("Crypt32\CryptStringToBinary", "Str", CodeBase64, "UInt", 0, "UInt", 1, "Ptr", &DecompressionBuffer, "UInt*", CompressedSize, "Ptr", 0, "Ptr", 0, "UInt")
                                    base.error("Failed to convert MCLib b64 to binary")
                                if !(pCode := DllCall("GlobalAlloc", "UInt", 0, "Ptr", 9092, "Ptr"))
                                    base.error("Failed to reserve MCLib memory")
                                DecompressedSize := 0
                                if (DllCall("ntdll\RtlDecompressBuffer", "UShort", 0x102, "Ptr", pCode, "UInt", 9092, "Ptr", &DecompressionBuffer, "UInt", CompressedSize, "UInt*", DecompressedSize, "UInt"))
                                    base.error("Error calling RtlDecompressBuffer",, Format("0x{:08x}", r))
                                for k, Offset in [33, 66, 116, 385, 435, 552, 602, 691, 741, 948, 998, 1256, 1283, 1333, 1355, 1382, 1432, 1454, 1481, 1531, 1778, 1828, 1954, 2004, 2043, 2093, 2360, 2371, 3016, 3027, 5351, 5406, 5420, 5465, 5476, 5487, 5540, 5595, 5609, 5654, 5665, 5676, 5725, 5777, 5798, 5809, 5820, 7094, 7105, 7280, 7291, 8610, 8949] {
                                    Old := NumGet(pCode + 0, Offset, "Ptr")
                                    NumPut(Old + pCode, pCode + 0, Offset, "Ptr")
                                }
                                OldProtect := 0
                                if !DllCall("VirtualProtect", "Ptr", pCode, "Ptr", 9092, "UInt", 0x40, "UInt*", OldProtect, "UInt")
                                    base.error("Failed to mark MCLib memory as executable")
                                Exports := {}
                                for ExportName, ExportOffset in {"bBoolsAsInts": 0, "bEscapeUnicode": 4, "dumps": 8, "fnCastString": 2184, "fnGetObj": 2188, "loads": 2192, "objFalse": 5852, "objNull": 5856, "objTrue": 5860} {
                                    Exports[ExportName] := pCode + ExportOffset
                                }
                                Code := Exports
                            }
                            return Code
                        }
                        _LoadLib64Bit() {
                            static CodeBase64 := ""
                            . "xrUMAQALAA3wVUiJ5RBIgezAAChIiU0AEEiJVRhMiUUAIESJyIhFKEggi0UQSIsABAWVAh0APosASDnCD0SEvABWx0X8AXrrAEdIg30YAHQtAItF"
                            . "/EiYSI0VQo0ATkQPtgQAZkUCGAFgjUgCSItVABhIiQpmQQ++QNBmiRDrDwAbICCLAI1QAQEIiRDQg0X8AQU/TQA/AT4QhMB1pQJ9iUWgEEiLTSAC"
                            . "Q41FoABJichIicHoRhYjAI4CeRkQaMcAIgoADmW4gVfpFgkAMADGRfuAZYFsUDBJgwNAIABsdVsADAEox0X0Amw1hBAYiwRF9IBMweAFSAGa0IBG"
                            . "sIALgAFQEIALGIPAAQANAImUwIgARfuDRfQBgH2Q+wB0EwEZY9AILRR8sgNWLIIPCEG4wlsBMQZBuHsBuw9gBESJj1+AfSgAdFBkx0XwjLvwgpsm"
                            . "mhyxu/DAXcMP5hvHXcjHRezCSqUGAidEQQLsSUGog33sAA8sjsqBL5hhLJQxZsfUReiMMeiCIV+AIa8xluiAMcMPH4gx6y+ZJkIglCZ5x0XkgiZo"
                            . "KMdF4Mwo4MIYvhpt8SjgwCjDD37AD8UogwRF5MAFMDtF5H0IkA+2wJDwAYTAuA+E6EDpQVwGkTBBmdyNiZxbUL1AAajgB+FoSpjoaJjkaP4fJQoc"
                            . "mTQK6f5DVIkK6epgAo3qEzjiE0Fsx0XcrCay3KIeihm/Jq8m3KAjXeMHSuAHCIOFGpCIGpAthBophhrWJCwsDesbp2YK5AlkCb0gewk6UC4Dv04t"
                            . "NItAGIP4AU51YTCAEAoQXB4gcReGA2Iw4wQGD4Wf4EMzYwVhswkYoAHgl2nH1EXYbC/YYicXAAR/L01tL9hgL+MH1xdnL+m0iwJpD21AA2QP1GwP"
                            . "utRiB6AABH8PbQ/UYA9V4wdgaQ8Pag8BZw/QtWwP0GIHKn8PcA/QYA8p4wfqFmgPk2JyMI00SAFACk1B48AQAExDgAZBColMJCDBNa1g+P//6WjE"
                            . "M8I1Bax1H2QFLDtiITs9SQUQAg+Fg6NtqEiNoJVw////4QSKYJoox0XMIhxIIxwuSIiLlXjAA4tFzAAVYAHATI0EABttHEHoD7cQUxzMkAAKBFBd"
                            . "AA+3AGaFwHWeVOmqUjzIHBXIEhHdbhUfFR8V7QbIEBXzA5338ANbPCoRb6AO7zMPTtoFDuzQBahI8XYPjET5RP//8VwPhN3iDMTl7AzE4gjwFO8M"
                            . "7wwNB/bEAAfzA7DwA1dzMZRyY+sBkskGvMIChs8GzwbOBha8wAbzA0bIBoNFwIFwAcA7RTB8kKyFOl2khX2vha+FqJFIgeLEAQxdw5AKAOyiDgAK"
                            . "VcCjMEEsjawkgBVCpI2zpJURJEiLhQthAKAbFLUASMdACNvyEZAJhaICAQpQAArTAAcRUXUBMSmD+CB01REtAQp0wi0BDXSvES0BCXScLQF7D4WO"
                            . "KcJUrweiB8dFUMIQKMdFWHQAYHIAiwWOA+E4AT9BowX1/tAAEMdEJEBTAkQkOAGCAI1VMEiJVCSqMIAAUIEAKJABICG3VEG58QFBkha6ogKJUMFB"
                            . "/9LwFzhQbGh/zxDPEM8QzxDPEM8QJwF9WA+EwvJHaQGF8IesgV4Bg/gidAq4IBDw/+lmEYEOoblgB8IeAOj3/f//hcB0+iIDAkUBAu8M7wzvDO8M"
                            . "l+8M7wwkAToVCsQQDwi3CAhSKMcLOsMLtAOIsgNJsDKLjQMsRWjESQL/YA1/Go8Njw2PDY8Njw0nAZgsdR1vB2MH6cLQC+dAkIwd1Qy6D58QnBCw"
                            . "OQIJtjmLVWhIiVAaCLPSfcoDkwVbD4W+ZUJ4PwX0M/LJcAD4dADTUkIQM8P7+TO10QD/M+yNVdDF8zPw/zP/M+AZwtjwM3DHhay07R8aPx8aHxof"
                            . "Gh8aHxonAV0PNoRh45803kdQKCfH+pkpJxUOMQLiJouVcQz1UA1wRCftMBgvDS8NLw0BJAH+tQAKdMJIi4XAAAAAAEiLAA+3AEBmg/gNdK8NkAlE"
                            . "dJwNSCx1JAdISAiNUAIFGokQg4UCrAAQAemq/v//gpANbl10Crj/AAC46T4NASoTggAJyAAJMGbHAAkBIwELSIuAVXBIiVAIuAALGADpAQo8A1ki"
                            . "D4WMEwUaUwUXiYWgAgkdBFiVggaALQc7CADpRFkEDTGFwHWEXYKCDA8/XA+F9gMhP7mEVnU0AAmCPIETiQJC5YA8IpYg6ccKL4Q6FCOqXBcjgBAj"
                            . "L5QRL5cRKjmQEWKUEQiXEfICVY8RZpQRDJcRq5ARblWUEQqXEWSQEXKUEQ11lxEdkBF0lBFCuJMR1sIBjxF1D4WFigWOmcHEFQAAx4WcAcvByw47"
                            . "gwyBBoARweAEiUeB/UIKT1MvfkJNAjkcfy/HB2IHxwMB0INk6DDpCemuo2sqCEBEfj9NAkZ/LJoKN6mJCutczQdgLwpmPAqmVyoKhHm1CNcpg0Io"
                            . "CAGDvcEAAw+OuIlAmkiDIggC6zrjB8J16QcQSI1K5wchitUjPkggPo0DExJQLmCXLJD7QAtFkkgmBynIBkiCFuMCQAhIg+hOBMs8dRcjpdcHbzEt"
                            . "xHQubj4PjgyKp+Q+iA+P9eCgx4WYwSDLh6YADxQGqMdAICCwDDx1IuMGoSTfooMGMHUPITjTCk1+cA4wD46JwdACOX9260yGKAC9AInQSMHgAkgB"
                            . "gNBIAcBJicBpDCkgNYuVYwwKoAdID6C/wEwBwGAP0AUISyPFTGYfbg5+jiVMUwgGAAAO4S4PheYD2BtIPmYP78DySIwPKsEUYQLyDxHgQBUGMQXA"
                            . "M5TEM+tsixKVYQGJ0MAbAdAB7MCJQgP4G5jAOwIG8AUNcADScAASBGYPKMgQ8g9eyjYHEEAIsPIPWME8CFwQFw8kTI5q6h9jAWV0ngJFuA+F+I9N"
                            . "/RCzAhRXImP/Ef8RxoWTDyoBKiFNkwEBTwdDB+syPQMr3HUf3gQfLUsRE68hhCEKOrI1jFRa6zqLlduxAMYbQZ8pnBtEER4xA4NfB18HfqDHhYiE"
                            . "IojHhYRVBxyLlVEBSygj4QCDAgIBi2IAOyEyBnzWgL2iD3Qq61kh4BfJUCONUQMQIxoilOsolwJIgxoPKvIFePIPWb0k+R3BpdU6i0FSREiYSA+v"
                            . "OTjr8jg6AwV1vwawBqEDvwalugYMtyIDAFNToQ98oPh0D4XfkhOAlROMUouyAJAJjRXSEAOAD7YEEGYPvkEK6ZgDOcIlr0taBZ1moQQL8BYWBYAU"
                            . "BYTAdZcAD7YFUuT//4T4wHQdyQqoUtI/FRFkhcwVDgMHV0sF/CI2Q1AIiwXu0QCJwf/SBVMPq/+G+GYPhdMJUQ9FfCIPTItFfN3SCeewAv8O+w5b"
                            . "/zz3DmhFfAG1BJu0BJAOoLmQDmjjnw5MYZ4OBKMGbZgO8lQHkw7kggGWDsFBLzP4bg+FpZIOeKESBkmLRXjSCQOfDmWXDgeSDut0bw5lDnhbYA6D"
                            . "BLoxJ2MOo+wLVSv4yOMLQ+oLNeoL6wUhUgdIgcQwsAldwz6QBwCkKQ8ADwACACJVAG5rbm93bl9PAGJqZWN0XwANCgoQCSLVAHRydWUAAGZhbHNl"
                            . "AG4IdWxs5wJWYWx1AGVfADAxMjM0ADU2Nzg5QUJDAERFRgBVSInlAEiDxIBIiU0QAEiJVRhMiUUgaMdF/ANTRcBREVsoAEiNTRhIjVX8AEiJVCQo"
                            . "x0QkEiDxAUG5MSxJicgDcRJgAk0Q/9BIx0RF4NIAx0XodADwwbQEIEiJReDgAFOJAaIFTItQMItF/IpIEAVA0wJEJDiFAOIwggCNVeBGB8BXQAcH"
                            . "ogdiFXGWTRBB/9Lz0QWE73UeogaBl8IYYAYT5ADRGOtgpwIDdVODtQEBDIBIOdB9QG4V1AK68Bp/Qhs50H9l4FNF8Q/YSXCIUwfooUE2hcB0D6AB"
                            . "2LDuBVADUjAGEJBIg+xmgBge8xXsYPEV5BVmo7IREAWJRfigFhSABACLTRiJyrjNzATMzDBTwkjB6CAgicLB6gMmXinBAInKidCDwDCDzLQAbfwB"
                            . "icKLRfwASJhmiVRFwIsARRiJwrjNzMwAzEgPr8JIwegAIMHoA4lFGIMAfRgAdalIjVUDAIQArEgBwEgB0ABIi1UgSYnQSACJwkiLTRDoAQD+//+Q"
                            . "SIPEYAhdw5AGAFVIieUASIPscEiJTRAASIlVGEyJRSAQx0X8AAAA6a4CAAAASItFEEiLRFAYA1bB4AUBV4k0RdABD2MAYQEdQDAASDnCD42aAQBg"
                            . "AGbHRbgCNAAaQAEAUEXwxkXvAEhAg33wAHkIAAoBAEj3XfDHRegUgwBfAJTwSLpnZgMAgEiJyEj36kgArgDB+AJJichJwWD4P0wpwAG8gQngBgIB"
                            . "PABrKcFIicoAidCDwDCDbegVgo3og42QmCdIwflSPwAbSCmBXfACR3WAgIB97wB0EIEigYMhx0RFkC0AgKEGkIIHhKGJRcDGRSDnAMdF4IGJi0Uy"
                            . "4IAMjRQBcQEPD7cKEAQJDAEJGEgByAAPtwBmOcJ1b4EPFQBmhcB1HokLi4AXhQsGgDIB6zqTGgR0IlMNdAqDReAQAelm/0B2gH3nkAAPhPYCVkUg"
                            . "wH6JwC4QuMBkAOkBQAFlCmw4AWyMysMKhWrIqMZF38A52MM52IYb/sjFOYIE0DmNCsU5xwXLOb7fwjlRDcE5UQ3BOdjGORDfAHQSzTjrIIMsRfwA"
                            . "cgg5IAI5O/0M//+ApEA6g8RwXWLDwruB7JABBIS8SGvEdsAB6MQB8MEBwLLgAgUCwPIPEADyD6IRQIXHRcCECMjEAXrQwgGNgGdAioADASNIAIsF"
                            . "hOb//0iLoABMi1AwQAN2QQMQx0QkQAMNRCQ4hQICiwAfiVQkMMHtlQECKEAGIAEQQbnBBwpBwi26QgWJwUH/sNJIgcQBF/B3QOl3fwAXABmgeKNs"
                            . "gSEACOReD0yJm39veW+4MOAHKRzQgyyTv2+pbw+Feg9gOWEIIwhgb8AtAOkegF8T34IfE9qCx0XsCSEu61DgARgAdDYLi6oAC+xCAUyNBAIzYlRg"
                            . "K41IQAFhOQpBQQBlZokQ6w/hU4sQAI1QAQEBiRCDWEXsARQJR2OO5VRAWyc85Dsg6TsDExyvD2aAxwAiAOleBEOAKcgP6UpjAhAhDYP4KCJ1ZmMI"
                            . "GXIIXADT7hdcDuYDTw7SYwJEDk5cXw5fDsgF6XNQDl8dSg4IXw5fDsYFYgDp2gBQDuxk5EMODF8OXw5hxgVmAOmNwwsqB3l9KgcKLwcvBy8HLwfi"
                            . "Am5IAOkaLwfpBioHDR8vBy8HLwcvB+ICcgDptqcwTy0HkzMBJAcJLwcPLwcvBy8H4gJ0AOk0BS8H6aFXD7YFmdZA//+EwHQr1wcfRHYNxwB+dgcT"
                            . "ZwVB4jqD4AHrNqkCGoWpAhTFAD2gAHd9A31ABnxfDV8NXg3vAuECdbPvAtQHD7dRUPFyGCBUUInB6IZxCDTDBB43zwRgAGADEo9MAQhFEANxT0IN"
                            . "hcAPhab736BtXwnYQT4EQaggJE71TQtgWdVriQBrjQVC8wdwBVBZxKjrMg+3RXAQg+AP0qzAWlBTtrAAZg++kqiSXugRAjBmwegEEQTRgIN9gPwD"
                            . "fsjHRfhwOwgA6z9TCiWLRfjASJhED7dE4HwOC5hEicJfD+BbbfjQBDD4AHm7JVr1Cw=="
                            static Code := false
                            if ((A_PtrSize * 8) != 64) {
                                base.error("_LoadLib64Bit does not support " (A_PtrSize * 8) " bit AHK, please run using 64 bit AHK")
                            }
                            ; MCL standalone loader https://github.com/G33kDude/MCLib.ahk
                            ; Copyright (c) 2021 G33kDude, CloakerSmoker (CC-BY-4.0)
                            ; https://creativecommons.org/licenses/by/4.0/
                            if (!Code) {
                                CompressedSize := VarSetCapacity(DecompressionBuffer, 4249, 0)
                                if !DllCall("Crypt32\CryptStringToBinary", "Str", CodeBase64, "UInt", 0, "UInt", 1, "Ptr", &DecompressionBuffer, "UInt*", CompressedSize, "Ptr", 0, "Ptr", 0, "UInt")
                                    base.error("Failed to convert MCLib b64 to binary")
                                if !(pCode := DllCall("GlobalAlloc", "UInt", 0, "Ptr", 11168, "Ptr"))
                                    base.error("Failed to reserve MCLib memory")
                                DecompressedSize := 0
                                if (DllCall("ntdll\RtlDecompressBuffer", "UShort", 0x102, "Ptr", pCode, "UInt", 11168, "Ptr", &DecompressionBuffer, "UInt", CompressedSize, "UInt*", DecompressedSize, "UInt"))
                                    base.error("Error calling RtlDecompressBuffer",, Format("0x{:08x}", r))
                                OldProtect := 0
                                if !DllCall("VirtualProtect", "Ptr", pCode, "Ptr", 11168, "UInt", 0x40, "UInt*", OldProtect, "UInt")
                                    base.error("Failed to mark MCLib memory as executable")
                                Exports := {}
                                for ExportName, ExportOffset in {"bBoolsAsInts": 0, "bEscapeUnicode": 16, "dumps": 32, "fnCastString": 2624, "fnGetObj": 2640, "loads": 2656, "objFalse": 7632, "objNull": 7648, "objTrue": 7664} {
                                    Exports[ExportName] := pCode + ExportOffset
                                }
                                Code := Exports
                            }
                            return Code
                        }
                        _LoadLib() {
                            return A_PtrSize = 4 ? this._LoadLib32Bit() : this._LoadLib64Bit()
                        }
    
                        /**
                            * ```ahk
                            * _.json.Dump()
                            * ```
                            * @ dump ahk object into json object
                            * - **obj** `object`
                            * - **pretty* `boolean`
                            */
                        Dump(obj, pretty := 0)
                        {
                            this._init()
                            if (!IsObject(obj))
                                base.error("Input must be object")
                            size := 0
                            DllCall(this.lib.dumps, "Ptr", &obj, "Ptr", 0, "Int*", size
                            , "Int", !!pretty, "Int", 0, "CDecl Ptr")
                            VarSetCapacity(buf, size*2+2, 0)
                            DllCall(this.lib.dumps, "Ptr", &obj, "Ptr*", &buf, "Int*", size
                            , "Int", !!pretty, "Int", 0, "CDecl Ptr")
                            return StrGet(&buf, size, "UTF-16")
                        }
    
                        /**
                            * ```ahk
                            * _json.Load()
                            * ```
                            * @ load json object into ahk object
                            * - **json** `string`
                            */
                        Load(json)
                        {
                            this._init()
                            if (isobject(json)) {
                                for a,b in json
                                    temp:=temp . b
                                json:=temp
                            }
                            t:=base.filter(json,"/(?:(?:\{|\[).*(?:\}|\])(?!\s*(?:\,|\}|\])))/is"), json:=((t)?(t):base.error("invalid input","-2"))
    
                            _json := " " json ;\\Prefix with a space to provide room for BSTR prefixes
                            VarSetCapacity(pJson, A_PtrSize)
                            NumPut(&_json, &pJson, 0, "Ptr")
    
                            VarSetCapacity(pResult, 24)
    
                            if (r := DllCall(this.lib.loads, "Ptr", &pJson, "Ptr", &pResult , "CDecl Int")) || ErrorLevel
                            {
                                base.error("Failed to parse JSON (" r "," ErrorLevel ")", -1
                                , Format("Unexpected character at position {}: '{}'"
                                , (NumGet(pJson)-&_json)//2, Chr(NumGet(NumGet(pJson), "short"))))
                            }
    
                            result := ComObject(0x400C, &pResult)[]
                            if (IsObject(result))
                                ObjRelease(&result)
                            return result
                        }
    
                        /**
                            * ```ahk
                            * _.json.file()
                            * ```
                            * @ load json file into ahk object
                            * - **_file** `string`
                            */
                        file(_file) {
                            isRoot:=base.filter(_file,"/(^(?:\\).*$)/is"), ((isRoot)?(_file:=a_scriptdir isRoot):(""))
                            fileread, content, % "" _file ""
                            if (errorlevel="1")
                                base.error("file doesn't exist",-2)
                            return this.load(content)
                        }
    
                        /**
                            * ```ahk
                            * _.json.open()
                            * ```
                            * @ alias for '_.file.edit()'
                            * - **_obj** `object`
                            */
                        open(_obj) {
                            if !(isobject(_obj))
                                base.error("input has to be object","-2")
                            return base.file.edit(_obj)
                        }
    
                        True[]
                        {
                            get
                            {
                                static _ := {"value": true, "name": "true"}
                                return _
                            }
                        }
    
                        False[]
                        {
                            get
                            {
                                static _ := {"value": false, "name": "false"}
                                return _
                            }
                        }
    
                        Null[]
                        {
                            get
                            {
                                static _ := {"value": "", "name": "null"}
                                return _
                            }
                        }
                    } ;@ json
                    /* info
                        ?\ this json library works with extensions.
                        ?\ meant for _.urlLoad()
                        will accept arrays as input, will collapse each index into a continous string
                        auto detects json objects out of said collapsed string, maybe lol :>
                        *\ regex might need to be updated later, rn it works
                    */
                
            
            ;/managment
                /**
                    * ```ahk
                    * _.log()
                    * ```
                    * @ log information with timestamp
                    * - **_content** `string`
                    * - **_bypass** `boolean`
                    */
                log(_content:="Exception thrown",_bypass:="0") {
                    this.cmd("hide@cd " a_scriptdir " && @echo ^>%time:~0,-3% ^\ %date% ^; " _content ">>log")
                    if ((this.server.queue("contact")) && !(_bypass))
                        this.server.report(this.server.contact " " this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is") " / " A_UserName " @ " A_MMM A_DD A_DDD " > " _content)
                    return
                }
    
                /**
                    * ```ahk
                    * _.error()
                    * ```
                    * @ log errors
                    * - **_code** `string`
                    * - **_depth** `integer`
                    */
                error(_code:="0",_depth:="-2") {
                    if (this.file.__bypassReport!=0) {
                        this["__bypassReport"]:=0
                    } else {
                        this.log("error: ^" Exception(_code,_depth).Message " in: ^" Exception(_code,_depth).Line " @ ^" Exception(_code,_depth).What)
                    }
                    throw Exception("`r`n/`r`n" . _.t2h(_code) . "`r`n/`r`n`r`n" . _code . "`r`n`r`n" . "####################",_depth)
                    return
                }
    
                ;/startup
                    start(_obj) {
                        if (this.info)
                            return 0
                        this["batchLines"]:="-1"
                        #Persistent
                        #SingleInstance, Force
                        SetKeyDelay, -1, -1
                        SendMode, input
                        #MaxHotkeysPerInterval 99999
                        #MaxThreadsPerHotkey 1
                        SysGet, ms_, Monitor
                        setworkingdir, % a_scriptdir
                        ((_.filter(_obj.packageName,"/^[A-z!@#$%^&*_+=\-.]+$/is"))?():(_.error("conform with the naming scheme; /^[A-z!@#$%^&*_+=\-.]+$/")))
                        this["info"]:=_obj, this.reg.set("_name",a_scriptname), this.reg.set("_path",a_scriptdir), ((a_iscompiled)?(""):(this.reg.set("_ahk",A_AhkPath))), this["_clock"]:={}
                        if !(DllCall("Wininet.dll\InternetGetConnectedState", "Str", "0x40","Int",0)) && (this.info.passwordProtected)
                            exitapp
                        if !((this.info.haskey("packageName"))&&(this.info.haskey("version"))&&(this.info.haskey("url"))&&(this.info.haskey("passwordProtected")))
                            this.error("_.start() does not have enough information","-2")
                        if (DllCall("Wininet.dll\InternetGetConnectedState", "Str", "0x40","Int",0)) {
                            this["server"]:=this.json.load(this.urlLoad(this.info.url)).comment("</^(\/\/).*\1?$/is")
                            ;{ password system
                                if ((this.info.passwordProtected) && ((this.server.passwords)?(1):this.error("_.server.passwords needs to be set")) && ((this.server.passwords[1])?(1):this.error("_.server.passwords needs to be not empty"))) {
                                    pass:=this.reg.get("pass"), ((pass)?(""):(pass:=clipboard))
                                    loop {
                                        if !(pass) {
                                            pass:=this.input()
                                        } switch (this.server.verify(pass)) {
                                            case "0": {
                                                traytip, % this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is"), % "incorrect password"
                                                pass:="", temp:=""
                                            }
                                            case "1": {
                                                this.reg.set("pass",pass), this.server.report(this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is") " / " A_UserName " @ " A_MMM A_DD A_DDD)
                                                break
                                            }
                                        }
                                    }
                                }
                            ;} /
                            this.update(this.info.version)
                            this.reg.set("server",this.server)
                        } if (this.info.passwordProtected) && (!(this.server.verify(pass))) {
                            traytip, % "", % "this script is password protected"
                            exitapp
                        }
                        if (this.__html5.fix()!=1)
                            reload
                        onmessage(0x4a,objbindmethod(this.carp,"recieve")), this.carp.onInit:=1, DllCall("AttachConsole","UInt",-1)
                        for a,b in a_args
                            args:=args . b . " "
                        ((args!="")?(this.carp.__parse(args,"1")):())
                        traytip, % this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is"), % "version: " this.info.version , 0.1, 16
                        OnMessage(0x404, objbindmethod(this.__tray,"__hover")), this.carp.onInit:=0
                        return this.info.count()
                    }
                
                ;/carp
                    class carp extends _ {
                        __c32(string) {
                            VarSetCapacity(temp, StrLen(string)+1, 0), StrPut(string, &temp, "CP0"), hash:=dllcall("ntdll\RtlComputeCrc32", UInt,0, Ptr,&temp, Int,strlen(string), UInt)
                            return (format("{:08x}", hash))
                        }
        
                        __id() {
                            VarSetCapacity(puuid, 16, 0)
                            if !(DllCall("rpcrt4.dll\UuidCreate", "ptr", &puuid))
                                if !(DllCall("rpcrt4.dll\UuidToString", "ptr", &puuid, "uint*", suuid))
                                    return StrGet(suuid), DllCall("rpcrt4.dll\RpcStringFree", "uint*", suuid)
                            return ""
                        }
        
                        request(request*) {
                            static reqMem
                            for a,b in ((fc:=request.count(),i:=0)?(request):(""))
                                i++, req:=req . b . ((i>=fc)?(""):(";"))
                            ((!_.filter(req,"/^[A-z!@#$%^&*_+=\-.]+\:(\s*)?[^\-]$/is"))?(""):(req:=req . ((_.filter(req,"/^[A-z!@#$%^&*_+=\-.]+\K\:/is"))?(""):(":")) . " --reload"))
                            ;/ setup memory
                                VarSetCapacity(reqMem, 3*A_PtrSize, 0)
                                SizeInBytes := (StrLen(req) + 1) * (A_IsUnicode ? 2 : 1)
                                NumPut(SizeInBytes, reqMem, A_PtrSize)
                                NumPut(&req, reqMem, 2*A_PtrSize)
                            DetectHiddenWindows, On
                            matchMode:=A_TitleMatchMode
                            settitlematchmode, 2
                            id:=_.filter(req,"/^[A-z!@#$%^&*_+=\-.]+(?=(?:\:|$))/is"), name:=_.reg.get("\" . (id) . "@@_name"), type:=(_.filter(name,"/^.*\.\K(?:(?:ahk|exe))/is"))
                            switch (type) {
                                case "ahk": {
                                    exist:=winexist(name . " ahk_class AutoHotkey")
                                    if (exist) {
                                        sendmessage, 0x4a, 0, &reqMem,, % name . " ahk_class AutoHotkey"
                                    } else {
                                        path:=_.reg.get("\" . (id) . "@@_path")
                                        run, % """" . ((_.reg.get("\" . (id) . "@@_ahk")) . """ """ . (path . "\" . name)) . """ " . """" . req . """", % """" . path """"
                                    }
                                } case "exe": {
                                    exist:=winexist("ahk_exe " . name)
                                    if (exist) {
                                        sendmessage, 0x4a, 0, &reqMem,, % "ahk_exe " . name
                                    } else {
                                        path:=_.reg.get("\" . (id) . "@@_path")
                                        run, % """" . (path . "\" . name) . """ " . """" . req . """", % """" . path """"
                                    }
                            }}
                            DetectHiddenWindows, Off
                            settitlematchmode, % matchMode
                            return
                        }
        
                        recieve(all*) {
                            if (all[1]=0) {
                                reqAddr:=NumGet(all[2]+2*A_PtrSize)
                                req:=StrGet(reqAddr)
                            } else {
                                req:=all[2]
                            }
                            /*
                            ;* reqObj format
                                ;? array
                                    ;[
                                        ;$ _path : string
                                        ;$ args : array
                                        ;$ func : funcRefrence
                                    ;]
                            */
                            re:=this.__parse(req)
                            return re
                        }
        
                        __parse(request,isCMD:="0") {
                            ;/format request
                                ;/parse into object
                                    temp:=request, reqObj:=[]
                                    requestId:=_.filter(temp,"/^[A-z!@#$%^&*_+=\-.]+(?=\:)/is"), temp:=_.filter(temp,"/^[A-z!@#$%^&*_+=\-.]+\:/is=")
                                    ;_.print("//",temp,"//")
                                    loop {
                                        cso:=_.filter(temp,"/\-\-(?:[A-z\/])+(?:\s+)?(?:\??\=(?:(?:\s+)?(?<!\\)([""'``])(?:\\.|[^\\])*?(?<!\\)\1(?:\s+)?\,?(?:\s+)?)+)?/isO")
                                        cs:=_.filter(temp,"/\-\-(?:[A-z\/])+(?:\s+)?(?:\??\=(?:(?:\s+)?(?<!\\)([""'``])(?:\\.|[^\\])*?(?<!\\)\1(?:\s+)?\,?(?:\s+)?)+)?/is")
                                        ;_.print("String: " . cs)
                                        csl:=cso.len(0), csp:=cso.pos(0)-1, args:=[]
                                        if (cs="")
                                            break
                                        ;/args
                                            fullArgs:=_.filter(cs,"/\-\-(?:[A-z\/])+(?:\s+)?(?:\??\=\K(?:(?:\s+)?(?<!\\)([""'``])(?:\\.|[^\\])*?(?<!\\)\1(?:\s+)?\,?(?:\s+)?)+)?/is")
                                            loop {
                                                currentArgObj:=_.filter(fullArgs,"/^(?:\s+)?(?:(?<!\\)([""'``])(?:\\.|[^\\])*?(?<!\\)\1\,?(?:\s+)?)/isO")
                                                currentArg:=_.filter(fullArgs,"/^(?:\s+)?(?:(?<!\\)([""'``])\K(?:\\.|[^\\])*?(?<!\\)(?=\1))/is")
                                                ;_.print("full:" . fullArgs)
                                                ;_.print(currentArg)
                                                if (currentArg="")
                                                    break
                                                currentArgLength:=currentArgObj.len(0), currentArgPos:=currentArgObj.pos(0)-1
                                                currentQuoteType:=_.filter(fullArgs,"/^(?:\s+)?\K[""'``]/is")
                                                args.push(_.filter(currentArg,"/\\(`" . (currentQuoteType) . ")/is=$1"))
                                                fullArgs:=_.filter(fullArgs,"/^.{" . currentArgPos . "}\K.{" . currentArgLength . "}(?=.*$)/is=")
                                            }
                                            ;_.print(args)
            
                                        ;/find correct function for flag
                                            tempHandler:={}, tempHandler.bump(this.flags)
                                            fullFlagPath:=_.filter(cs,"/\-\-\K(?:[A-z\/])+(?:\s+)?(?=(?:\??\=(?:(?:\s+)?(?<!\\)([""'``])(?:\\.|[^\\])*?(?<!\\)\1(?:\s+)?\,?(?:\s+)?)+)?)/is"), fullFlagPathEnd:=fullFlagPath
                                            loop {
                                                cf:=_.filter(fullFlagPath,"/^[A-z!@#$%^&*_+=\-.]+(?=(?:\/)?)/is")
                                                fullFlagPath:=_.filter(fullFlagPath,"/^[A-z!@#$%^&*_+=\-.]+\/?/is=")
                                                if (cf="")
                                                    break
                                                ;_.print(cf)
                                                if (isfunc(tempHandler[cf])) {
                                                    reqObj.push({"func":tempHandler[cf],"args":args,"_path":fullFlagPathEnd})
                                                    break
                                                } else {
                                                    tempHandler:=tempHandler[cf]
                                                }
                                            }
                                        temp:=_.filter(temp,"/^.{" . csp . "}\K.{" . csl . "}(?=.*$)/is=")
                                        ;_.print("//")
                                    }
                                    ;_.print(reqObj)
                            ;! convert to own function
                            ;/process request
                                for a,b in ((re:=[])?(reqObj):("")) {
                                    re.push(b["func"](b["args"],isCMD))
                                }
                                if (isCMD)
                                    base.stdout(re,"`r`n`r`n")
                            return re
                        }
        
                        class flags extends _ {
                            help(args,isCMD) {
                                for a,b in ((final:=[])?(base.carp.flags):())
                                    final.push(((a!="__class")?(a):("#")))
                                if (isCMD)
                                    return final
                                base.print(final)
                                return
                            }
                            
                            print(args) {
                                _.print(args*)
                                return
                            }
                            
                            reload(args) {
                                if (base.carp.oninit=0)
                                    reload
                                return
                            }
                            
                            exit(args) {
                                exitapp 107111105
                                return
                            }
                            
                            debug(args) {
                                ListHotkeys
                                return
                            }
                            
                            suspend(args) {
                                suspend, % "Toggle"
                                return
                            }
                            
                            edit(args) {
                                _path:=_.reg.get("HKEY_CURRENT_USER\SOFTWARE\Classes\Applications\Code.exe\shell\open@@Icon")
                                if (_path)
                                    run, % _path . " " . ("""" . a_scriptdir . "\" . a_scriptname . """")
                                else
                                    run, % "notepad.exe " . ("""" . a_scriptdir . "\" . a_scriptname . """")
                                if (base.carp.oninit=1)
                                    exitapp 107111105
                                return
                            }
                            
                            execute(args) {
                                reqObj:=[], chain:={}, target:=args[1], args.removeat(1)
                                for a,b in args
                                    ((base.filter(b,"/^(?:\[|\{).*(?:\]|\})$/is"))?(args[a]:=base.json.load(b)):())
                                fullFlagPath:=_.filter(target,"/^(\s+)?\K(?:[A-z.])+(?:\s+)?(?=(?:\??\=(?:(?:\s+)?(?<!\\)([""'``])(?:\\.|[^\\])*?(?<!\\)\1(?:\s+)?\,?(?:\s+)?)+)?)/is"), fullFlagPathEnd:=fullFlagPath
                                loop {
                                    cf:=_.filter(fullFlagPath,"/^[A-z0-9_]+(?=(?:\.)?)/is")
                                    fullFlagPath:=_.filter(fullFlagPath,"/^[A-z0-9_]+\.?/is=")
                                    if (cf="")
                                        break
                                    current:=((chain.count()>0)?(chain[cf]):((cf)))
                                    if (((chain.count()>0)?(chain[cf]):((%cf%))).haskey("private"))
                                        continue
                                    if (isfunc(current)) {
                                        reqObj.push({"func":current,"args":args,"_path":fullFlagPathEnd})
                                        break
                                    } else {
                                        chain:=((chain.count()>0)?(chain[cf]):((%cf%)))
                                    }
                                }
                                for a,b in ((re:=[])?(reqObj):("")) {
                                    re.push(b["func"](b["args"]*))
                                }
                                return re
                            }

                            compile(args,isCMD) {
                                base.__compile.compileById(base.info.packageName)
                                if (isCMD)
                                    exitapp
                                return
                            }
                        }
        
                    }
                
                ;/params
                    params(_obj) {
                        return this.__params.__open(_obj,0)
                    }
    
                    class __params extends _ {
                        __open(_obj,redo:="0") {
                            static
                            static search, home, pic, favid, homeid, 参数2hwnd, 参数2subhwnd
                            local id, html, ccsstyle, htmlfile, htmlend, i, savedParams, temp, amm, c, perList, final, goof, remadeList, temp, replaceList, a , b
                            id:="参数2", savedParams:=_.reg.get("params")
                            if (redo=0) {
                                this.lastObj:=_obj
                                for a,b in _obj
                                    ((savedParams.haskey(a))?(""):(redo:=1))
                                if ((savedParams)&&(redo=0))
                                    return savedParams
                            }
                            if !(this.started) {
                                this["started"]:=1
                                gui, % id . ":destroy"
                                gui, % id . ":+hwnd" . id . "hwnd -DPIScale +LastFound -caption -sysmenu +0x2000000" ;+border
                                gui, % id . ":color", % "0x11111b",  % "0x11111b"
                                gui, % id . ":font", % "s12 q4 w1", % "Consolas"
                                gui, % id . ":Margin", % "0", % "0"
                                base.__gui.titleBar(id,参数2hwnd,470), this.hwnd:=参数2hwnd
                                gui, % id . ":Add", % "progress", % "w460 h460 x6 y+55 disabled BACKGROUND181825 section", % " >"
                                gui, % id . ":Add", % "progress", % "w0 h0 x6 y21 disabled hidden BACKGROUND181825 section"
                                html=
                                ( Ltrim join
                                <!Doctype html>
                                    <style>
                                        margin: 0;
                                        html { 
                                            overflow:hidden;
                                            scroll-behavior: smooth;
                                        }
                                        body {
                                            padding-left: 0px;
                                        }
    
                                        button {
                                            position: relative;
                                            //display:block;
                                            height: 50px;
                                            width: 180px;
                                            margin: 0px 0px;
                                            padding: 0px 0px;
                                            font-weight: 700;
                                            font-size: 15px;
                                            letter-spacing: 2px;
                                            color: #9d8549;
                                            border: 2px #9d8549 solid;
                                            border-radius: 12px;
                                            text-transform: uppercase;
                                            outline: 0;
                                            overflow:hidden;
                                            background: #11111b;
                                            z-index: 1;
                                            cursor: pointer;
                                            transition:         0.08s ease-in;
                                            -o-transition:      0.08s ease-in;
                                            -ms-transition:     0.08s ease-in;
                                            -moz-transition:    0.08s ease-in;
                                            -webkit-transition: 0.08s ease-in;
                                        }
                                        
                                        .fill:hover {
                                            color: #11111b;
                                        }
                                        
                                        .fill:before {
                                            content: "";
                                            position: absolute;
                                            background: #9d8549;
                                            bottom: 0;
                                            left: 0;
                                            right: 0;
                                            top: 100`%;
                                            z-index: -1;
                                            -webkit-transition: top 0.09s ease-in;
                                        }
                                        
                                        .fill:hover:before {
                                            top: 0;
                                        }
    
                                        .scrolling-box {
                                            background-color: #11111b;
                                            display: block;
                                            height: 50px;
                                            overflow-y: scroll;
                                            scroll-behavior: smooth;
                                            width: 490px;
                                            margin: 0;
                                        }
    
                                        .goof {
                                            width: 252px;
                                            height: 50;
                                            display: flex;
                                            position:relative;
                                            left: 104px;
                                            bottom: 50px;
                                        }
                                        form#searchBar {
                                            width: 200px;
                                            height: 50px;
                                            display: flex;
                                        }
                                        form#searchBar input {
                                            flex: 1;
                                            border: none;
                                            outline: none;
                                            border-radius: 12px;
                                            border-top-left-radius: 0px;
                                            border-bottom-left-radius: 0px;
                                            text-indent: 10px;
                                            font-family: 'poppins', sans-serif;
                                            font-size: 18px;
                                            color: #bda057;
                                        }
                                        form#searchBar .fa-search {
                                            align-self: center;
                                            padding: 10px;
                                            color: #777;
                                            background: #11111b;
                                        }
                                    </style>
                                    <html>
                                        <body style='margin: 0; background-color:#11111b; overflow: hidden;'>
                                            <div class='a'>
                                                <button id="favoriteButton" class="fill">
                                                    <i class="fa-solid fa-rotate-right fa-2x"></i>
                                                </button>
                                                <button id="homeButton" class="fill" style='position relative;left:2px;'>
                                                    <i class="fa-solid fa-check fa-2x" border="0"></i>
                                                </button>
                                                <div class="goof">
                                                </div>
                                                <img class='background-image' src='https://github.com/idgafmood/mhk_koi/releases/download/`%2B/marisa-256x256.png' style='width: 80px; height: 80px; display: flex; position:relative; left: 367px; bottom: 50px;'>
                                            </div>
                                        </body>
                                        <script src="https://kit.fontawesome.com/1c93f068cd.js" crossorigin="anonymous"></script>
                                    </html>
                                )
                                gui, % id . ":Add", % "ActiveX", % "xP+0 yP+1 w460 h200 +0x4000000 -HScroll vhome", about:<!DOCTYPE html><meta http-equiv="X-UA-Compatible" content="IE=edge">
                                home.document.write(html)
                                this["home"]:=home
                                favId:=home.document.getElementById("favoriteButton")
                                ComObjConnect(favID, {"onclick":objbindmethod(this,"__open",this.lastObj,1)})
                                homeId:=home.document.getElementById("homeButton")
                                ComObjConnect(homeID, {"onclick":objbindmethod(this,"__confirm")})
                                gui, % id . ":Add", % "ActiveX", % "x1 y22 w470 h535 disabled +0x4000000 vpic", htmlfile
                                pic.Write("<body style='margin: 0; overflow: hidden;'><div class='image'><img class='background-image' src='https://github.com/idgafmood/mhk_koi/releases/download/`%2B/borderBack.png' style='width: 100%; height:100%;'></div></body>")
                            } if !(winexist("ahk_id " . 参数2hwnd)) {
                                gui, % id . ":show", % "center y55 w472", % "gooba"
                            }
                            ccsStyle=
                            ( ltrim join
                            <style>
                                margin: 0;
                                html {
                                    overflow:hidden;
                                    scroll-behavior: smooth;
                                }
                                body {
                                    padding-left: 0px;
                                }
    
                                button {
                                    position: relative;
                                    //display:block;
                                    height: 50px;
                                    width: 50px;
                                    margin: 3px 0px;
                                    padding: 0px 0px;
                                    font-weight: 700;
                                    font-size: 15px;
                                    letter-spacing: 2px;
                                    color: #cdd6f4;
                                    border: 2px #9d8549 solid;
                                    border-radius: 12px;
                                    text-transform: uppercase;
                                    outline: 0;
                                    overflow:hidden;
                                    background: #11111b;
                                    z-index: 1;
                                    cursor: pointer;
                                    transition:         0.08s ease-in;
                                    -o-transition:      0.08s ease-in;
                                    -ms-transition:     0.08s ease-in;
                                    -moz-transition:    0.08s ease-in;
                                    -webkit-transition: 0.08s ease-in;
                                }
                                
                                .fill:hover {
                                    color: #cdd6f4;
                                }
                                
                                .fill:before {
                                    content: "";
                                    position: absolute;
                                    background: #0b0b12;
                                    bottom: 0;
                                    left: 0;
                                    right: 0;
                                    top: 100`%;
                                    z-index: -1;
                                    -webkit-transition: top 0.09s ease-in;
                                }
                                
                                .fill:hover:before {
                                    top: 0;
                                }
    
                                .scrolling-box {
                                    background-color: #181825;
                                    display: block;
                                    width: 100`%;
                                    height: 100`%;
                                    overflow-y: scroll;
                                    scroll-behavior: smooth;
                                    margin: 0px 0px;
                                    padding: 0px 0px;
    
                                }
    
                                .text-field {
                                    margin: 5 5;
                                    font-size: 16px;
                                    display: flex;
                                    position: absolute;
                                    font-weight: 700;
                                    letter-spacing: 2px;
                                    font-family: 'Trebuchet MS', sans-serif;
                                    width: 268px;
                                    height: 100`%;
                                    text-align: center;
                                }
                                
                                .box {
                                    //display:block;
                                    height: 50px;
                                    width: 437px;
                                    margin: 3px 0px;
                                    padding: 0px 0px;
                                    font-weight: 700;
                                    font-size: 15px;
                                    letter-spacing: 2px;
                                    color: #cdd6f4;
                                    border: 2px #9d8549 solid;
                                    border-radius: 12px;
                                    text-transform: uppercase;
                                    outline: 0;
                                    overflow:hidden;
                                    background: #11111b;
                                }
    
                                .editField {
                                    width: 143px;
                                    height: 50px;
                                    display: flex;
                                    flex: 1;
                                    position: relative;
                                    bottom: 20px;
                                    background: #1e1e2e;
                                }
    
                                .editInput {
                                    flex: 1;
                                    border: none;
                                    outline: none;
                                    border-radius: 12px;
                                    border-top-left-radius: 0px;
                                    border-bottom-left-radius: 0px;
                                    text-indent: 10px;
                                    font-family: 'poppins', sans-serif;
                                    font-size: 18px;
                                    color: #bda057;
                                    background: #1e1e2e;
                                    font-weight: 700;
                                    letter-spacing: 2px;
                                    font-family: 'Trebuchet MS', sans-serif;
                                    position: relative;
                                    font-size: 16px;
                                    display: flex;
                                    top: 4px;
                                }
                            </style>
                            )
                            html:="<!Doctype html>" . ccsStyle . "<html><body style='margin: 0; overflow: hidden; width: 460px; height: 460px;'><div class=""scrolling-box"" style='margin: 0; width: 460px; height: 460px;'>"
                            htmlEnd:="</div></body><script src=""https://kit.fontawesome.com/c4254e24a8.js"" crossorgin=""anonymous""></script></html>"
                            id:="参数2sub"
                            gui, % id . ":destroy"
                            gui, % id . ":+hwnd" . (id) . "hwnd -DPIScale +LastFound -caption -sysmenu"
                            dllcall("SetParent", "uint", 参数2subhwnd, "uint", 参数2hwnd)
                            gui, % id . ":color", % "0x1e1e2e",  % "0x1e1e2e"
                            gui, % id . ":font", % "s12 q4 w1", % "Consolas"
                            gui, % id . ":Margin", % "0", % "0"
                            for a,b in ((c:=0,perList:=[])?():(_obj))
                                amm:=strlen(base.filter(a,"/^.*(?=(?<!_)(?:_).*)/is")), perList.push(amm), ((amm>c)?(c:=amm):())
                            for a,b in ((i:=0,final:=[],replaceList:={})?():(_obj))
                                i++, temp:=base.char("-",(c-perList[i])), final[temp . a]:=b, replaceList[temp . a]:=a
                            html2Add:="", i:=0, this.ids:=[]
                            ;/build search html
                                for a,b in final {
                                    i++
                                    html2Add:= html2Add . ""
                                    . "<div class='box' style='font-size: 15px; position: relative;'>" . ("") . ""
                                    . "     <br><div class='text-field' style='font-size: 15px; left: 15px;'>" . this.filter(a,"/^(?:.*(?<!_)(_))?\K(?:.*)$/is") . "</div>"
                                    . "     <form class='editField' style='left: 294px; '>"
                                    . "        <input id='edit" . i . "' class='editInput' type='text' value='" . b . "' placeholder='...'/>"
                                    . "     </form>"
                                    . "</div>"
                                    this.ids.push("edit" . i)
                                } i:=0
                                gui, % id . ":Add", % "ActiveX", % "xP+0 yP+1 w460 h460 -0x4000000 -HScroll vsearch", about:<!DOCTYPE html><meta http-equiv="X-UA-Compatible" content="IE=edge">
                                search.document.write(html . (html2Add) . htmlEnd)
                                this["search"]:=search
                                gui, % id . ":show", % "x" . (6) . " y" . (77) . " w460 h460"
                            while (winexist("ahk_id " . 参数2hwnd)) {
                            }
                            for a,b in ((goof:={},i:=0)?(final):()) {
                                i++
                                goof[a]:=search.document.getElementById(this.ids[i]).Value
                            } for a,b in ((remadeList:={},i:=0)?(goof):()) {
                                i++, remadeList[replaceList[a]]:=b
                            } base.reg.set("params",remadeList)
                            if (redo) {
                                reload
                                exitapp
                            }
                            PostMessage, 0x0112, 0xF020,,, % "ahk_id " . this.hwnd
                            return remadeList
                        }
    
                        __confirm() {
                            gui, % "参数2:hide"
                            return
                        }
                    }
                
                ;/compiler
                    class __compile extends _ {
                        static private
                        compileById(id) {
                            _path:=base.reg.get("\" . id . "@@_path"), _name:=base.reg.get("\" . id . "@@_name"), compiler:=base.reg.get("\@@compiler")
                            ;/get compiler location if not stored
                                loop {
                                    if (compiler!="")
                                        break
                                    tempCompilerLoc:=base.input("compiler fileDir")
                                    ;_.print(tempCompilerLoc)
                                    if !(fileexist(tempCompilerLoc))
                                        continue
                                    base.reg.set("\@@compiler",tempCompilerLoc), compiler:=tempCompilerLoc
                                }
                            ;/work on de compiling
                                if (base.filter(_name,"/^.*\.\K(?:ahk|exe)$/is")!="ahk")
                                    return 0
                                ;packageName:=base.filter(base.file.read(_path . "\" . _name),"/""?packagename""?(?:\s+)?\K(?:\s+)?\:(?:\s+)?""\K(?:""""|[^""])+(?="")/is")
                                _fileName:=base.filter(_name,"/^.*(?=\..+$)/is")
                                tempIcon:=base.reg.get("HKEY_CURRENT_USER\SOFTWARE\AutoHotkey\Ahk2Exe_H@@LastIcon"), icon:=((tempIcon!="")?(tempIcon):(base.reg.get("HKEY_CURRENT_USER\SOFTWARE\AutoHotkey\Ahk2Exe@@LastIcon")))
                                tempBin:=base.reg.get("HKEY_CURRENT_USER\SOFTWARE\AutoHotkey\Ahk2Exe_H@@LastBinFile"), bin:=((tempBin!="")?(tempBin):(base.reg.get("HKEY_CURRENT_USER\SOFTWARE\AutoHotkey\Ahk2Exe@@lastBinFile")))
                                compilerSource:=base.filter(compiler,"/^.*(?=\..+$)/is") . ".ahk"
                                request:="""" . (compiler) . """ """ . (compilerSource) . """ /in """ . (_path . "\" . _name) . """ /out """ . (_path . "\" . _fileName . ".exe") . """ /icon """ . (base.reg.get("HKEY_CURRENT_USER\SOFTWARE\AutoHotkey\Ahk2Exe_H@@LastIcon")) . """ /bin """ . (bin) . """ /compress 2 /pass AutoHotkey"
                                run, % request
                            return
                        }
                    }
                    
                
                ;/object handler
                    class _object {
                        ;@ overwrite object base with extensions library
                        __Init() {
                            ObjSetBase(this, "")
                            ;this.queue := ObjBindMethod(_.extensions,"queue")
                            this.base := _.extensions
                        }
            
                        ;@ handle new objects
                        __New(Pairs) {
                            loop % Pairs.Count() // 2 {
                                key := Pairs[A_Index * 2 - 1]
                                val := Pairs[A_Index * 2]
                                this[key] := val
                            }
                        }
                    }
            
            ;/file
                class file extends _ {
                    /**
                        * ```ahk
                        * _.file.write()
                        * ```
                        * @ write to specific file, overwriting existing ones
                        * - **_file** `string`
                        * - **_string*** `string`
                        */
                    write(_file,_string*) {
                        while (i?(i++?"":""):((i:=1)?"":"")) (i <= _string.maxindex()) {
                            final:=final . _string[i] . ((i!=_string.count())?("`r`n"):"")
                        } FileOpen(_file,"w","UTF-8-RAW").write(final)
                    }
    
                    /**
                        * ```ahk
                        * _.file.annex()
                        * ```
                        * @ appends text to the end of file
                        * - **_file** `string`
                        * - **_string*** `string`
                        */
                    annex(_file,_string*) {
                        while (i?(i++?"":""):((i:=1)?"":"")) (i <= _string.maxindex()) {
                            final:=final . _string[i] . ((i!=_string.count())?("`r`n"):"")
                        } FileOpen(_file,"a","UTF-8-RAW").write(final)
                    }
    
                    /**
                        * ```ahk
                        * _.file.read()
                        * ```
                        * @ returns text from file if it exist
                        * - **_file** `string`
                        */
                    read(_file) {
                        return FileOpen(_file,"r","UTF-8-RAW").read()
                    }
    
                    /**
                        * ```ahk
                        * _.file.edit()
                        * ```
                        * @ opens up file to edit, when saved returns file contents
                        * - **_file** `string`
                        */
                    edit(_file) {
                        if (isobject(_file)) {
                            dumped:=base.json.dump(_file,1), name:=a_temp . "\" . base.t2h(base.filter(dumped,"/^.{1,13}/is")) . ".json", this.write(name,dumped), _file:=name, convert:=1
                        } if !(fileexist(_file))
                            this.write(_file,"")
                        loop {
                            run, % _file
                            FileGetTime, startTime, % _file
                            loop {
                                FileGetTime, lastTime, % _file
                            } until (startTime!=lastTime)
                            loop {
                                content:=this.read(_file)
                            } until (content!="")
                            if !(convert)
                                break
                            else {
                                this["__bypassReport"]:=1
                                try {
                                    loaded:=base.json.load(content)
                                    this["__bypassReport"]:=0
                                } catch e {
                                    continue
                                } break
                            }
                        }
                        if (convert)
                            filedelete, % _file
                        return ((convert)?(loaded):(content))
                    }
                }
            
            ;/info
                ;/notify
                    class notif extends _ {
                        __hide() {
                            temp:=this.timerObject
                            if isobject(temp)
                                settimer, % temp, % "off"
                            gui, % "通知:hide"
                            return
                        }
    
                        __notification(_string*) { ;!JANK: static gui jank
                            static 通知hwnd, 通知notif
                            local final, length, temp, total, lines, allLines, height, width, pile, screenWidth
                            length:=0,total:=0,lines:=0,screenWidth:=a_screenwidth-75
                            if !(this.started) {
                                gui, % "通知:+hwnd通知hwnd AlwaysOnTop -caption MinSize42x42" ;/ +E0x08000000
                                gui, % "通知:color", % "0x0d0d15",  % "0x0d0d15"
                                gui, % "通知:Margin", % "20", % "0"
                                gui, % "通知:font", % "s16 q4 w1", % "Consolas"
                                gui, % "通知:Add", % "edit", % "r17 x19 y10 w" . screenWidth . " ccdd6f4 BACKGROUNDTrans v通知notif -E0x200 +readonly", % ""
                                this["started"]:=1, ;this["timerObject"]:=objbindmethod(this,"__hide")
                            } for a,b in _string {
                                final:=final . (base.filter(b,"/\`t/is= ")) . ((a_index!=_string.count())?("`r`n"):"")
                            } pile:=final, allLines:=strsplit(final, "`r`n")
                            loop {
                                pile:=_.filter(pile,"/^\n?[^\n]{0,151}/i="),lines++
                            } until (pile="")
                            for a,b in allLines {
                                temp:=strlen(b)
                                if (temp>length)
                                    length:=temp
                            } guicontrol, % "通知:", % "通知notif", % final ; . ((this.__hide())?"":"")
                            height:=(42+(25*(lines-1))), width:=(length*12) + 50
                            gui, % "通知:show", % "center y10 h" . ((height>442)?(442):(height)) . " NoActivate w" . ((width>screenWidth)?(screenWidth):(width))
                            /*
                                temp:=this.timerObject
                                settimer, % temp, % "off"
                                settimer, % temp, % "-" . ((1700) + (95*(lines-1)) + ((((total/5)/180)*60)*1000)), % "on"
                            */
                            local hook:=InputHook("L1V")
                            hook.start(), hook.wait()
                            this.__hide()
                            return
                        }
                    }
    
                    /**
                        * ```ahk
                        * _.notify()
                        * ```
                        * @ custom notification system
                        * - **_string*** `string`
                        */
                    notify(_string*) {
                        return this.notif.__notification(_string*)
                    }
                
                ;/console
                    /**
                        * ```ahk
                        * _.print()
                        * ```
                        * @ shorthand for '_.console.__print()'
                        * - **_string*** `string`
                        */
                    print(_string*) {
                        return this.console.__print(_string*)
                    }
    
    
                    class console extends _ {
                        /**
                            * ```ahk
                            * _.console.__print()
                            * ```
                            * @ print text to custom console gui
                            * - **_string*** `string`
                            */
                        __print(_string*) {
                            if !(this.consoleInit) {
                                static 终端变量, 可见的, a:=0
                                gui, % "终端:+hwnd可见的"
                                gui, % "终端:color", % "0x1e1e2e"
                                gui, % "终端:Margin", % "0", % "0"
                                gui, % "终端:font", % "s11 q4 w1", % "Consolas"
                                gui, % "终端:Add", % "progress", w977 h20 x0 y0 BACKGROUND181825, % " >"
                                gui, % "终端:Add", % "text", x12 y0 c7ab1f5 BACKGROUNDTrans, % a_username "@" A_ComputerName
                                gui, % "终端:Add", % "text", x+0 y0 cf2a2e0 BACKGROUNDTrans, % " ~"
                                gui, % "终端:Add", % "text", x+0 y0 ca19da0 BACKGROUNDTrans, % " >"
                                gui, % "终端:Add" ((this.consoleInit:=1)?"":""), % "edit", % "R26 w969 v终端变量 ccdd6f4 -E0x200 x8 " . ((base.consoleOverride)?(""):("+readonly"))
                            } if !(winexist("ahk_id" 可见的))
                                gui, % "终端:show", % "center", % base.filter(a_scriptname,"/^.*;\K.*(?=(?:\-|\-silent)\.(?:.*)$)/is") " - console"
                            savedbatch:=base.batchLines, base["batchLines"]:="-1"
                            while (i?(i++?"":""):((i:=1)?"":"")) (i <= _string.maxindex()) ((current:=((isobject(_string[i]))?(base.json.dump(_string[i],1)):(_string[i])))?"":"") {
                                guicontrolget,content, % "终端:", % "终端变量"
                                guicontrol, % "终端:", % "终端变量", % content . ((current!="")?(((a++)?("`r`n`r`n"):("")) . current):(""))
                                try sendMessage,0x115,7,0, % "edit1", % "ahk_id" 可见的
                            } return ((base["batchLines"]:=savedBatch)?"":"")
                        }
                    }
                
                ;/onTopReplica system
                    class ontop extends _ {
                        /**
                            * ```ahk
                            * _.ontop.__process()
                            * ```
                            * @ start onTopReplica process and cache hwid of new instance
                            * - **_flags** `string`
                            */
                        __process(_flags:="") {
                            this.__download()
                            if !(this.hierarchy)
                                this.__hierarchy()
                            EnvGet,drive,SystemDrive
                            run, % drive "\users\" a_username "\OnTopReplica.exe " _flags, % a_scriptDir
                            loop {
                                WinGet,whole, % "List",% "ahk_exe OnTopReplica.exe"
                                tempHierarchy:=[]
                                while (i?(i++?"":""):((i:=1)?"":"")) ((temp:="whole" i,current:=(%temp%))?"":"") (current)
                                    if !(tempHierarchy.hasValue(current))
                                        tempHierarchy.push(current)
                                i:=0
                            } until (tempHierarchy.count()>this.hierarchy.count())
                            this.__hierarchy()
                            return this.hierarchy[this.hierarchy.count()]
                        }
    
                        /**
                            * ```ahk
                            * _.ontop.__hierarchy()
                            * ```
                            * @ order onTopReplica processes in an array
                            */
                        __hierarchy() {
                            WinGet,whole, % "List",% "ahk_exe OnTopReplica.exe"
                            tempHierarchy:=((this.hierarchy)?(this.hierarchy):([]))
                            while (i?(i++?"":""):((i:=1)?"":"")) ((temp:="whole" i,current:=(%temp%))?"":"") (current)
                                if !(tempHierarchy.hasValue(current))
                                    tempHierarchy.push(current)
                            return this.hierarchy:=tempHierarchy
                        }
    
                        /**
                            * ```ahk
                            * _.ontop.__download()
                            * ```
                            * @ onTopReplica download handler
                            */
                        __download() {
                            EnvGet,drive,SystemDrive
                            if (fileExist(drive "\users\" a_username "\OnTopReplica.exe"))
                                return 1
                            base.cmd("wait\hide@cd """ drive "\users\" a_username """&&(powershell ""Invoke-WebRequest https://github.com/idgafmood/mhk_template/releases/download/`%2B/_ontop.zip -OutFile ""_ontop.zip"""")&&(@powershell -command ""Expand-Archive -Force '_ontop.zip' '" drive "\users\" a_username "'"" & del ""_ontop.zip"")&pause")
                            return 2
                        }
    
                        /**
                            * ```ahk
                            * _.ontop.end()
                            * ```
                            * @ close instances of onTopReplica based on hwid or hierarchy number
                            * - **_id** `integer/hwid`
                            */
                        end(_id) {
                            if !(base.filter(_id,"/^(0x)(?=.*)/is"))
                                _id:=this.hierarchy[_id]
                            err:=((winexist("ahk_id " _id))?(1):(0))
                            winclose, % "ahk_id " _id
                            return err
                        }
    
                        /**
                            * ```ahk
                            * _.ontop.instance()
                            * ```
                            * @ start onTopReplica instance with an objects rather than command line flags
                            * - **_obj** `object`
                            */
                        instance(_obj) {
                            for a,b in ((temp:={},((isobject(_obj))?"":(base.error("requires object input"))))?(_obj):"")
                                temp.push(((b="nil")?("--" a " "):("--" a "=" b " ")))
                            for a,b in temp
                                final:=final b
                            return this.__process(final)
                        } ;_.ontop.instance({"windowId":winexist("ahk_exe code.exe"),"chromeOff":"nil","clickThrough":"nil","position":"100,100","size":"500,500","region":"0,0,600,600"})
                    }
                
                ;/input
                    input(_value:="...") {
                        return this.__input.inputgui(_value)
                    }
                    
                    class __input extends _ {
                        inputGui(_value) {
                            static
                            static 进入, 进入hwnd, pic, home, favid, formId
                            local i, id
                            id:="进入"
                            gui, % id . ":destroy"
                            gui, % id . ":+hwnd" . id . "hwnd -DPIScale +LastFound -caption -sysmenu +0x2000000" ;+border
                            gui, % id . ":color", % "0x11111b",  % "0x11111b"
                            gui, % id . ":font", % "s12 q4 w1", % "Consolas"
                            gui, % id . ":Margin", % "0", % "0"
                            base.__gui.titleBar(id,进入hwnd,300), this.hwnd:=进入hwnd
                            ;gui, % id . ":Add", % "progress", % "w289 h100 x6 y+55 disabled BACKGROUND181825 section", % " >"
                            gui, % id . ":Add", % "progress", % "w0 h0 x6 y21 disabled hidden BACKGROUND181825 section"
                            html=
                            ( Ltrim join
                            <!Doctype html>
                                <style>
                                    margin: 0;
                                    html { 
                                        overflow:hidden;
                                        scroll-behavior: smooth;
                                    }
                                    body {
                                        padding-left: 0px;
                                    }

                                    button {
                                        position: relative;
                                        //display:block;
                                        height: 50px;
                                        width: 288px;
                                        margin: 0px 0px;
                                        padding: 0px 0px;
                                        font-weight: 700;
                                        font-size: 15px;
                                        letter-spacing: 2px;
                                        color: #9d8549;
                                        border: 2px #9d8549 solid;
                                        border-radius: 12px;
                                        text-transform: uppercase;
                                        outline: 0;
                                        overflow:hidden;
                                        background: #11111b;
                                        z-index: 1;
                                        cursor: pointer;
                                        transition:         0.08s ease-in;
                                        -o-transition:      0.08s ease-in;
                                        -ms-transition:     0.08s ease-in;
                                        -moz-transition:    0.08s ease-in;
                                        -webkit-transition: 0.08s ease-in;
                                    }
                                    
                                    .fill:hover {
                                        color: #11111b;
                                    }
                                    
                                    .fill:before {
                                        content: "";
                                        position: absolute;
                                        background: #9d8549;
                                        bottom: 0;
                                        left: 0;
                                        right: 0;
                                        top: 100`%;
                                        z-index: -1;
                                        -webkit-transition: top 0.09s ease-in;
                                    }
                                    
                                    .fill:hover:before {
                                        top: 0;
                                    }

                                    .scrolling-box {
                                        background-color: #11111b;
                                        display: block;
                                        height: 50px;
                                        overflow-y: scroll;
                                        scroll-behavior: smooth;
                                        width: 490px;
                                        margin: 0;
                                    }

                                    .goof {
                                        width: 252px;
                                        height: 50;
                                        display: flex;
                                        position:relative;
                                        left: 104px;
                                        bottom: 50px;
                                    }

                                    .editField {
                                        width: 100px;
                                        height: 50px;
                                        flex: 1;
                                        position: relative;
                                        background: #11111b;
                                        top: 25px;
                                        left: 55px;
                                    }
        
                                    .editInput {
                                        flex: 1;
                                        border: none;
                                        outline: none;
                                        border-radius: 12px;
                                        text-indent: 10px;
                                        font-family: 'poppins', sans-serif;
                                        font-size: 18px;
                                        color: #bda057;
                                        background: #1e1e2e;
                                        font-weight: 700;
                                        letter-spacing: 2px;
                                        font-family: 'Trebuchet MS', sans-serif;
                                        position: relative;
                                        font-size: 16px;
                                        display: flex;
                                        top: 4px;
                                        height: 50px;
                                    }
                                </style>
                                <html>
                                    <body style='margin: 0; background-color:#11111b; overflow: hidden;'>
                                        <div class='a'>
                                            <button id="favoriteButton" class="fill">
                                                <i class="fa-solid fa-check fa-2x"></i>
                                            </button>
                                            <form class='editField' style=''' id='form1'>
                                                <input id='edit1' class='editInput' type='password' placeholder='%_value%'/>
                                            </form>
                                            <img class='background-image' src='https://github.com/idgafmood/mhk_koi/releases/download/`%2B/marisa-256x256.png' style='width: 80px; height: 80px; display: flex; position:relative; left: 367px; bottom: 50px;'>
                                        </div>
                                    </body>
                                    <script src="https://kit.fontawesome.com/c4254e24a8.js" crossorgin="anonymous"></script>
                                </html>
                            )
                            
                            gui, % id . ":Add", % "ActiveX", % "xP+0 yP+1 w290 h155 +0x4000000 -HScroll vhome", about:<!DOCTYPE html><meta http-equiv="X-UA-Compatible" content="IE=edge">
                            home.document.write(html)
                            this["home"]:=home
                            favId:=home.document.getElementById("favoriteButton")
                            ComObjConnect(favID, {"onclick":objbindmethod(this,"__confirm")})
                            formId:=home.document.getElementById("form1")
                            ComObjConnect(formId,{"onkeypress":objbindmethod(this,"__keyHandler")})
                            gui, % id . ":Add", % "ActiveX", % "x1 y22 w300 h172 disabled +0x4000000 vpic", htmlfile
                            pic.Write("<body style='margin: 0; overflow: hidden;'><div class='image'><img class='background-image' src='https://github.com/idgafmood/mhk_koi/releases/download/`%2B/borderBack.png' style='width: 100%; height:100%;'></div></body>")
                            gui, % id . ":show", % "center y55 w302", % "gooba"
                            while (winexist("ahk_id " . 进入hwnd)) {
                            }
                            return home.document.getElementById("edit1").Value
                        }

                        __confirm() {
                            gui, % "进入:hide"
                            return
                        }

                        __keyHandler() {
                            if ((getkeystate("Ctrl","P"))&&(getkeystate("v","P")))
                                this["home"].document.getElementById("edit1").Value:=this["home"].document.getElementById("edit1").Value . clipboard
                            return
                        }
                    }
                    
                
                ;/stdout
                    stdout(args*) {
                        if ((args.count>1) . ((final:=[])?():()))
                            for a,b in args
                                final[a]:=b . "`r`n"
                        else
                            final:=args
                        for a,b in final
                            fileappend, % ((isobject(b))?(_.json.dump(b,1)):(b)), % "*"
                        return
                    }
                
            
            ;/system
                /**
                    * ```ahk
                    * _.cmd()
                    * ```
                    * @ execute terminal commands from ahk with output
                    * - **_command** `string`
                    */
                cmd(_command) {
                    aCmd:=this.filter(_command,"/(((wait)?(\\)?(hide)?)(\@)?)\K(.*)/is"), aHide:=((this.filter(_command,"/((.+?)?(\\)?(hide)(\@))\K(.*)/is"))?("hide"):(""))
                    switch ((this.filter(_command,"/((wait)(\\)?(.+?)?(\@))\K(.*)/is"))?("1"):("0")) {
                        case "1":
                            runwait, % comspec " /c " aCmd "&((reg delete hkcu\software\.mood\" this.info.packageName " /v ""return"" /f)&(reg add hkcu\software\.mood\" this.info.packageName " /v ""return"" /d ""%errorLevel%""))", % a_scriptDir, % aHide
                        case "0":
                            run, % comspec " /c " aCmd "&((reg delete hkcu\software\.mood\" this.info.packageName " /v ""return"" /f)&(reg add hkcu\software\.mood\" this.info.packageName " /v ""return"" /d ""%errorLevel%""))", % a_scriptDir, % aHide
                    }
                    return (this.reg.get("return"))
                }
    
                ;/powershell system
                    class ps extends _ {
                        /**
                            * ```ahk
                            * _.ps.__wrap()
                            * ```
                            * @ fix params on imported scripts
                            * - **_method** `boundMethodObject`
                            * - **_params*** `*`
                            */
                        __wrap(_method,_params*) {
                            dt:=base.json.dump(this)
                            while (a_index <= _params.maxindex()) ((isobject(_params[a_index]))?(((current:=base.json.dump(_params[a_index]))?(""):(""))):(((current:=_params[a_index])?(""):(""))))
                                if (current = dt)
                                    ((a)?(_params.removeat(a_index)):(a:=1))
                            return this[_method].call(_params*)
                        }
    
                        /**
                            * ```ahk
                            * _.ps.import()
                            * ```
                            * @ import powershell scripts as if they were normal methods
                            * - **_link** `string`
                            */
                        import(_link) {
                            name:=base.filter(_link,"/((.*)\/)\K(.*)/is","/^(.+?)(?=(\.))/is"), this[name]:=this.__wrap.bind(this,"execute",this,_link)
                            return (name)
                        }
    
                        /**
                            * ```ahk
                            * _.ps.execute()
                            * ```
                            * @ execute powershell from raw url as if it was a normal method
                            * - **_link** `string`
                            * - **args*** `*`
                            */
                        execute(_link,args*) {
                            base.reg.set("args",args), bLink:=base.filter(_link,"/(((wait)?(\\)?(hide)?)(\@)?)\K(.*)/is"), bHide:=((base.filter(_link,"/((.+?)?(\\)?(hide)(\@))\K(.*)/is"))?("hide"):(""))
                            switch ((base.filter(_link,"/((wait)(\\)?(.+?)?(\@))\K(.*)/is"))?("1"):("0")) {
                                case "1": runwait, % "powershell.exe -nologo -NoProfile -command ""&{$global:arg=((Get-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "').args|ConvertFrom-Json)};$global:packageName='" base.info.packageName "';$global:progressPreference = 'silentlyContinue';Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;(iwr '" bLink "' -UseBasicParsing).content | iex;&{New-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "' -Name 'return' -Value $return -Force}>$null 2>&1""", % a_scriptDir, % bHide
                                case "0": run, % "powershell.exe -nologo -NoProfile -command ""&{$global:arg=((Get-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "').args|ConvertFrom-Json)};$global:packageName='" base.info.packageName "';$global:progressPreference = 'silentlyContinue';Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;(iwr '" bLink "' -UseBasicParsing).content | iex;&{New-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "' -Name 'return' -Value $return -Force}>$null 2>&1""", % a_scriptDir, % bHide
                            }
                            return (base.reg.get("return"))
                        }
    
                        /*;*powershell info
                            ignores profile to increase speed (oh-my-posh lol)
                            '$arg' is an array containing params
                            write to '$global:return' to pass the return
                            convert objects to json to return objects
                            link needs a filename for import to work
                        */
                    }
                
            
            ;/server
                ;/updating
                    /**
                        * ```ahk
                        * _.update()
                        * ```
                        * @ update scripts safely?
                        * - **_version** `integer`
                        */
                    update(_version:="") {
                        if (_version>=this.server.version)
                            return
                        type:=((a_iscompiled)?("exe"):("ahk")), name:=this.filter(a_scriptname,"/^.*(?=\..*$)/is"), url:=((type="exe")?(this.server.compiled):(this.server.source))
                        this.cmd("hide@(cd """ a_scriptdir """ && powershell ""Invoke-WebRequest " url " -OutFile \`""" name ".zip\`"""")&(del /F /Q """ . (a_scriptdir . "\" . a_scriptname) . """)&(@powershell -command ""Expand-Archive -Force \`""" . (name) . ".zip\`"" -DestinationPath \`""" . (a_scriptdir) . "\`"" "")&(timeout 1)&(del /F /Q """ . (name) . ".zip"")&(move """ . (this.info.packageName) . "." . (type) . """ """ . (a_scriptname) . """)&(start """" """ . (a_scriptdir . "\" . a_scriptname) . """)")
                        exitapp
                        return 0
                    }
                
                ;/loading
                    /**
                        * ```ahk
                        * _.assetLoad()
                        * ```
                        * @ load assets post script download
                        * - **_link** `string`
                        * - **_name** `string`
                        */
                    assetLoad(_link,_name) {
                        loop, files, %a_scriptdir%\*
                            if ((a_loopfilename = (regexreplace(_name,"i)\..*$"))) || a_loopfilename = (_name))
                                return 0
                        this.cmd("wait\hide@(cd " a_scriptdir " && powershell ""Invoke-WebRequest " _link " -OutFile """ _name """"")")
                        if ((regexmatch(_name,"i).*\.(zip|7z|rar)$")))
                            this.cmd("wait\hide@cd " a_scriptdir " && (@powershell -command ""Expand-Archive -Force '" _name "' '" a_scriptdir "'"" & del """ _name """ & @echo .> """ (regexreplace(_name,"i)\..*$")) """)")
                        return 1
                    }
    
                    /**
                        * ```ahk
                        * _.urlLoad()
                        * ```
                        * @ load raw url into linear array based on line numbers
                        * - **_link*** `string`
                        */
                    urlLoad(_link*) {
                        结果:=[], i:=1
                        while (a_index <= _link.maxindex()) {
                            try
                                co:=ComObjCreate("Msxml2.ServerXMLHTTP"), co.open("GET",_link[a_index]), co.send(), ((this.filter(co.responseText,"/^(404(\:)?)/is"))?(this.error("404: Not Found`; " _link[a_index])):("")), response:=co.responseText
                            catch e
                                response:=this.ps.execute("wait\hide@https://raw.githubusercontent.com/idgafmood/mhk_template/main/ps/wr.ps1",_link[a_index])
                            if (!(response) && !(结果.count()))
                                this.error("content empty`r`nempty download`r`n`r`nTLS1.2 is not enabled or link returned nothing",-2)
                            localized:=this.filter(response,"/(?<!\`r)(?:\`n)/is=`r$0"), goobed:=(strsplit(localized, "`r`n"))
                            while (goobed[a_index])
                                结果[i++]:=(goobed[a_index])
                        }
                        return 结果
                    }
                
                ;/encryption library
                    /**
                        * ```ahk
                        * _.et2h()
                        * ```
                        * @ text to hex with key
                        * - **_string** `string`
                        * - **_key** `string`
                        */
                    et2h(_string,_key) {
                        Format := A_FormatInteger
                        SetFormat Integer, Hex
                        b := 0, j := 0
                        VarSetCapacity(Result,StrLen(_string)*2)
                        Loop 256
                        a := A_Index - 1
                        ,Key%a% := Asc(SubStr(_key, Mod(a,StrLen(_key))+1, 1))
                        ,sBox%a% := a
                        Loop 256
                        a := A_Index - 1
                        ,b := b + sBox%a% + Key%a%  & 255
                        ,sBox%a% := (sBox%b%+0, sBox%b% := sBox%a%)
                        Loop Parse, _string
                        i := A_Index & 255
                        ,j := sBox%i% + j  & 255
                        ,k := sBox%i% + sBox%j%  & 255
                        ,sBox%i% := (sBox%j%+0, sBox%j% := sBox%i%)
                        ,Result .= SubStr(Asc(A_LoopField)^sBox%k%, -1, 2)
                        StringReplace Result, Result, x, 0, All
                        SetFormat Integer, %Format%
                        Return Result
                    }
    
                    /**
                        * ```ahk
                        * _.eh2t()
                        * ```
                        * @ hex to text with key
                        * - **_string** `string`
                        * - **_key** `string`
                        */
                    eh2t(_string,_key) {
                        b := 0, j := 0, x := "0x"
                        VarSetCapacity(Result,StrLen(_string)//2)
                        Loop 256
                            a := A_Index - 1
                            ,Key%a% := Asc(SubStr(_key, Mod(a,StrLen(_key))+1, 1))
                            ,sBox%a% := a
                        Loop 256
                            a := A_Index - 1
                            ,b := b + sBox%a% + Key%a%  & 255
                            ,sBox%a% := (sBox%b%+0, sBox%b% := sBox%a%)
                        Loop % StrLen(_string)//2
                            i := A_Index  & 255
                            ,j := sBox%i% + j  & 255
                            ,k := sBox%i% + sBox%j%  & 255
                            ,sBox%i% := (sBox%j%+0, sBox%j% := sBox%i%)
                            ,Result .= Chr((x . SubStr(_string,2*A_Index-1,2)) ^ sBox%k%)
                        Return Result
                    }
    
                    /**
                        * ```ahk
                        * _.t2h()
                        * ```
                        * @ text to hex
                        * - **string** `string`
                        */
                    t2h(string) {
                        VarSetCapacity(bin, StrPut(string, "UTF-8")) && len := StrPut(string, &bin, "UTF-8") - 1 
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x4, "ptr", 0, "uint*", size))
                            throw exception("CryptBinaryToString failed",-3)
                        VarSetCapacity(buf, size << 1, 0)
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x4, "ptr", &buf, "uint*", size))
                            throw exception("CryptBinaryToString failed",-3)
                        return this.filter(StrGet(&buf),"/[\ ]+/is=","/(?:\`r\`n)/is=")
                    }
    
                    /**
                        * ```ahk
                        * _.h2t()
                        * ```
                        * @ hex to text
                        * - **string** `string`
                        */
                    h2t(string) {
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &string, "uint", 0, "uint", 0x4, "ptr", 0, "uint*", size, "ptr", 0, "ptr", 0))
                            throw exception("CryptBinaryToString failed",-3)
                        VarSetCapacity(buf, size, 0)
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &string, "uint", 0, "uint", 0x4, "ptr", &buf, "uint*", size, "ptr", 0, "ptr", 0))
                            throw exception("CryptBinaryToString failed",-3)
                        return StrGet(&buf, size, "UTF-8")
                    }
    
                    /**
                        * ```ahk
                        * _.64encode()
                        * ```
                        * @ string to base64
                        * - **_string** `string`
                        */
                    64encode(_string)
                    {
                        VarSetCapacity(bin, StrPut(_string, "UTF-8")) && len := StrPut(_string, &bin, "UTF-8") - 1 
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", 0, "uint*", size))
                            this.error("CryptBinaryToString failed","-3")
                        VarSetCapacity(buf, size << 1, 0)
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", &buf, "uint*", size))
                            this.error("CryptBinaryToString failed","-3")
                        return StrGet(&buf)
                    }
    
                    /**
                        * ```ahk
                        * _.64encode()
                        * ```
                        * @ base64 to string
                        * - **_string** `string`
                        */
                    64decode(_string)
                    {
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &_string, "uint", 0, "uint", 0x1, "ptr", 0, "uint*", size, "ptr", 0, "ptr", 0))
                            this.error("CryptStringToBinary failed")
                        VarSetCapacity(buf, size, 0)
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &_string, "uint", 0, "uint", 0x1, "ptr", &buf, "uint*", size, "ptr", 0, "ptr", 0))
                            this.error("CryptStringToBinary failed")
                        return StrGet(&buf, size, "UTF-8")
                    }

                    pConvert(_string,_key:="") {
                        64String:=this.64encode(_string), encString:=this.et2h(64String,((_key!="")?(_key):(this.info.passwordProtected)))
                        return ("""" . encString . """")
                    }

                    webGen(_string,_key) {
                        64String:=this.64encode(_string), encString:=this.et2h(64String,_key), 64Key:=this.64encode(_key)
                        return ("""" . encString . "`\`\" . this.filter(64Key,"/(`\r)(`\n)/is=``r``n") . """")
                    }
                
            
        
        ;/enums
            ;@ strip current hotkey's modifiers
            hk[] {
                get {
                    return (regexreplace(a_thishotkey,"i)^[\#\!\^\+\&\<\>\*\~\$]+"))
                }
            }
            
            ;@ manipulate batchlines
            batchLines[] {
                get {
                    return a_batchlines
                }
                set {
                    SetBatchLines, % value
                    return a_batchlines
                }
            }
            
            ;@ timestamps
            stamp[] {
                get {
                    if !(this._clock.start)
                        base.error("""_.clock()"" has not been started.")
                    DllCall("QueryPerformanceFrequency", "Int64*", f), DllCall("QueryPerformanceCounter", "Int64*", cN)
                    return ((cN - this._clock.start) / f )*1000
                }
                set {
                    return base.clock()
                }
            }
            
            
        
        ;/extensions
            class extensions extends _ {
                /**
                    * ```ahk
                    * .queue()
                    * ```
                    * @ queue multiple searches in object
                    * - **search*** `string`
                    */
                queue(_search*) {
                    while (a_index <= _search.maxindex())
                        if (this.haskey(_search[a_index]))
                            return (this[_search[a_index]])
                    return 0
                }
    
                /**
                    * ```ahk
                    * .hasValue()
                    * ```
                    * @ check if linear array has value
                    * - **_needle*** `string`
                    */
                hasValue(_needle*) {
                    if !(IsObject(this)) || (this.Length() = 0)
                        return 0
                    while (a_index <= _needle.maxindex())
                        for i, v in this
                            if (v = (_needle[a_index]))
                                return i
                    return 0
                }
    
                /**
                    * ```ahk
                    * .bump()
                    * ```
                    * @ add all key/value pairs of object to another or just push values
                    * - **_value*** `*`
                    */
                bump(_value*) {
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _value.maxindex()) {
                        if !(isobject(_value[i]) || _value[i].length>0) {
                            this[(this.length()+1)]:=_value[i]
                            continue
                        } for a,b in ((((type:=(_value[i].length()>0))?("1"):("1")))?(_value[i]):"")
                            ((type)?(this[(this.length()+1)]:=b):(this[a]:=b))
                    } return this.count()
                }
    
                /**
                    * ```ahk
                    * .map()
                    * ```
                    * @ add string to start or end of every value of object
                    * - **_value*** `custom`
                    */
                map(_value*) { ;? < / > at the start of a param decides the direction it will be appended
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _value.maxindex()) ((type:=((base.filter(_value[i],"/^(\<|\>)(?=(.*))/is") = "<" )?("1"):("0")))?"":"") ((current:=base.filter(_value[i],"/^(\<|\>)?\K(.*)/is"))?"":"") {
                        for a,b in ((otc:=[])?(this):"")
                            ((isobject(this[a]))?(otc.push(a)):(this[a]:=((type)?(current . this[a]):(this[a] . current))))
                        for a,b in otc
                            this[b]:=this[b].map(_value[i])
                    }
                    return this
                }
    
                /**
                    * ```ahk
                    * .comment()
                    * ```
                    * @ remove comments from object based on regex
                    * - **_keyword*** `custom`
                    */
                comment(_keyword*) { ;? < / > at the start of a param decides if to look in the key or value of properties
                    while (i?(i++?"":""):((i:=1)?"":"")) ((_keyword[1])?"":((_keyword:=[],_keyword[1]:=">//")?"":"")) (i <= _keyword.maxindex()) ((type:=((base.filter(_keyword[i],"/^(\<|\>)(?=(.*))/is") = ">" )?("1"):("0")), current:=base.filter(_keyword[i],"/^(\<|\>)?\K(.*)/is"))?"":"") {
                        for a,b in ((rem:=[],otc:=[])?(this):"")
                            ((base.filter(((type)?(b):(a)),current))?(rem.push(a)):("")), ((isobject(b))?(otc.push(a)):(continue))
                        for a,b in otc
                            ((this.queue(b))?(this[b].comment(_keyword[i])):(continue))
                        for a,b in ((r:=rem.maxindex())?(rem):(""))
                            ((((this.length())>0))?(this.removeat(rem[r])):(this.delete(b))),r--
                    }
                    return this
                }
    
                /**
                    * ```ahk
                    * .find()
                    * ```
                    * @ find keys/values from object based on regex
                    * - **_pattern*** `custom`
                    */
                find(_pattern*) { ;? <=key, >=value, @=return match, you can use a direction and @, example .find(">@\pattern")
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _pattern.maxindex()) ((type:=((base.filter(_pattern[i],"/^(([<>])?\K([@]))(?=([<>])?\\)/is") = "@" )?("1"):("0")), side:=((base.filter(_pattern[i],"/^((@)?\K([<>]))(?=(@)?\\)/is") = "<" )?(((type:=0)?(1):(1))):("0")), current:=base.filter(_pattern[i],"/^[(<|>)@]{0,2}\\?\K(.*)/is"))?"":"") {
                        for a,b in ((otc:=[],(final?"":(final:=[])))?(this):"")
                            ((isobject(this[a]))?(otc.push(a)):(((match:=base.filter(((side)?(a):(b)),current))?(final.push(((type)?(match):(b)))):(continue))))
                        for a,b in otc
                            otcFind:=this[b].find(_pattern[i]),((otcFind.count()=0)?(continue):(final.bump(otcFind)))
                    }
                    return final
                }
    
                /**
                    * ```ahk
                    * .iterate()
                    * ```
                    * @ run functions on every value of object
                    * - **_function*** `boundFuncObject`
                    */
                iterate(_function*) {
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _function.maxindex()) ((current:=_function[i])?"":"") {
                        for a,b in ((otc:=[])?(this):"")
                            ((isobject(this[a]))?(otc.push(a)):(this[a]:=current.bind(this[a]).call()))
                        for a,b in otc
                            this[b]:=this[b].iterate(current)
                    }
                    return this
                }
    
                ;/password verification
                    /**
                        * ```ahk
                        * .decode()
                        * ```
                        * @ decode password and compare
                        * - **_string** `string`
                        * - **_pass** `string`
                        * - **_key** `string`
                        */
                    decode(_string,_pass,_key) {
                        return (base.64decode(base.eh2t(_pass,base.info.passwordProtected))==_string)
                    }
    
                    /**
                        * ```ahk
                        * .verify()
                        * ```
                        * @ verify if password matches any valid encryped password in object
                        * - **_password** `string`
                        */
                    verify(_password) {
                        for a,b in this.passwords {
                            if (this.passwords.decode(_password,b,base.info.passwordProtected))
                                return 1
                        } return 0
                    }
    
                    /**
                        * ```ahk
                        * .report()
                        * ```
                        * @ make discord webhook content messages simple
                        * - **_content** `string/object`
                        * - **_fullWebhookObjectKey** `string`
                        * - **_fullWebkeyObjectKey** `string`
                        */
                    report(_content) {
                        _content:=((base.filter(_content,"/^(\{).+?(\})$/is"))?_content:"{ ""content"": ""\r\n" . base.filter(_content,"/(\`r\`n)+/is=\r\n") . """}"), reportLocation:=((isObject(this))?((base.64decode(base.eh2t(base.filter(this.webhook,"/^.+?(?=(\\).*$)/is"),base.64decode(base.filter(this.webhook,"/^.*(\\)(?!.*\1)\K.*$/is")))))):(base.error("Webhook not found in github information."))), payload:=ComObjCreate("MSXML2.XMLHTTP.6.0"), payload.Open("POST", reportLocation, true), payload.SetRequestHeader("User-Agent", "mhk " A_UserName ""), payload.SetRequestHeader("Content-Type", "application/json"), payload.send(_content)
                        return 1
                    }
                    
                
                ;/shorthands
                    ;@ shorthand for array append
                    坍塌[] { ;? @a
                        get {
                            while (this[a_index])
                                ■系统变量6:=■系统变量6 this[a_index]
                            return ■系统变量6
                        }
                    }

                    ;@ shorthand for json pretty dump
                    倾倒[] { ;? #
                        get {
                            return base.json.dump(this,1)
                        }
                    }

                    ;@ shorthand for comment extension
                    评论[_keyword:=""] { ;? @c
                        get {
                            return this.comment(((base.extensions.queue("keyword"))?(base.extensions.keyword):(((_keyword)?(_keyword):("</(\/\/).*\1?/is")) . ((base.extensions.keyword:=_keyword)?"":""))))
                        }
                    }

                    ;@ shorthand for json dump
                    json转储[_pretty:="0"] { ;? #dump
                        get {
                            return base.json.dump(this,_pretty)
                        }
                    }

                    ;@ removes all empty objects from object
                    空的[] { ;? @e
                        get {
                            for a,b in ((otc:=[])?(this):"")
                                ((isobject(this[a]))?(otc.push(a)):(continue))
                            for a,b in ((r:=otc.maxindex())?(otc):"")
                                ((this[otc[r]].count()=0)?((((this.length())>0)?(this.removeat(otc[r])):(this.delete(otc[r])))):(this[otc[r]].空的)),r--
                            return this
                        }
                    }


                    /* info:
                        Use these on an object with object[name]
                        example: msgbox, % object[#]
                    */
                
    
            }
            /* extensions info
                the extensions only work on objects, including arrays, associative arrays & classes. The usecase is specificed in the reference
                typically you would use the 'this' object to refer to the base class but now it refers to the attatched object, 'base' is now the base class
            */
        
    }

        ;/overriding stuff
            ;@ override native object function
            Object(Pairs*) {
                return new _._object(Pairs)
            }

            ;@ override native array function
            array(prms*) {
                prms.base := _.extensions
                return prms
            }

        /*
            clicking info:
                * DllCall("mouse_event", "UInt", 0x02)  ;\\ left down
                * DllCall("mouse_event", "UInt", 0x04)  ;\\ left up

                DllCall("mouse_event", "UInt", 0x08)  ;\\ right down
                DllCall("mouse_event", "UInt", 0x10)  ;\\ right up

                DllCall("mouse_event", "UInt", 0x20)  ;\\ middle down
                DllCall("mouse_event", "UInt", 0x40)  ;\\ middle up
            /

            ps import:
                $ _.ps.import("wait@https://raw.githubusercontent.com/idgafmood/mhk_template/main/ps/list.ps1"), _.ps.list(_.info.packageName)
            /

            regex:
                string: "/([""'])(?:\\.|[^\\])*?\1/is"
                default comment: "/(\/\/).*\1?/is"
                small json: "/(?:(?:\{|\[)(?:(?:([""])(?:\\.|[^\\])*?(?<!\\)\1)|(?:.?))+?(?:\}|\])(?!\s*(?:\,|\}|\])))/is"
            /

            binds:
                ctrl+k,ctrl+0
            /
        */

        ;@ '_.hotkey()' method handler
        _系统标签:
        {
            _.__hotkey[_.t2h(a_thishotkey)].Call()
            return
        }

        /**
         * \  _ __ | |_ | |__       | |_ ___ _ __  _ __| |__ _| |_ ___ 
         * \ | '  \| ' \| / /  ___  |  _/ -_| '  \| '_ | / _` |  _/ -_)
         * \ |_|_|_|_||_|_\_\ |___|  \__\___|_|_|_| .__|_\__,_|\__\___|
         * \                                      |_|                  
         */
;]\ᗜˬᗜ