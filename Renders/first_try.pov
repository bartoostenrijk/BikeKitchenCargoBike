    // Persistence of Vision Ray Tracer Scene Description File
    // for FreeCAD (http://www.freecadweb.org)

    #version 3.6;

    #include "colors.inc"
    #include "metals.inc"
    #include "rad_def.inc"

    global_settings {
        radiosity {
            Rad_Settings(Radiosity_Normal,off,off)
        }
    }

    #default {finish{ambient 0}}

    sky_sphere {
        pigment {
            gradient y
            color_map {
                [0.0  color LightGray]
                [0.3  color White]
                [0.7  color LightGray]
            }
        }
    }

    // Standard finish
    #declare StdFinish = finish { crand 0.01 diffuse 0.8 };

// declares positon and view direction

// Generated by FreeCAD (http://www.freecadweb.org/)
#declare cam_location =  <614.11,-1369.21,543.155>;
#declare cam_look_at  = <99.888,-6.896,-215.272>;
#declare cam_sky      = <-0.215282,0.411722,0.885516>;
#declare cam_angle    = 45; 
camera {
  location  cam_location
  look_at   cam_look_at
  sky       cam_sky
  angle     cam_angle 
  right x*800/600
}

    //default light
    light_source {
        cam_location
        color White
        area_light <100, 0, 0>, <0, 0, 100>, 10, 10
        adaptive 1
        jitter
    }

