# =====
# Doors
# =====

Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
           door1 : aircraft.door.new("controls/doors/door1", 4.0)
         };
   return obj;
};

Doors.door1export = func {
   me.door1.toggle();
}

# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();

