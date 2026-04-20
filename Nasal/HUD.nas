# HUD VISIBILITY - Paolo Amoroso

setlistener("/sim/current-view/name", func(n) {
    var name = n.getValue();
    var show = (name == "Main Camera") 
            or (name == "FLIR Camera") 
            or (name == "Tail Camera");
    setprop("/sim/hud/visibility[1]", show);
}, 1);