$pp1_colour = "grey";           // Override any global defaults here if required, see NopSCADlib/global_defs.scad.
include <NopSCADlib/lib.scad>   // Includes all the vitamins and utilities in NopSCADlib but not the printed parts.
include <{{cookiecutter.pkg_name}}_board.scad> //Include the autogenerated board for design purposes

//! Printing notes and finishing instructions for the upper clamshell.
module {{cookiecutter.pkg_name}}_enclosure_upper_stl()
stl("{{cookiecutter.pkg_name}} enclosure"){
    //Upper clamshell.
}

//! Printing notes and finishing instructions for the lower clamshell.
module {{cookiecutter.pkg_name}}_enclosure_lower_stl()
stl("{{cookiecutter.pkg_name}} enclosure"){
    //Lower clamshell.
}

//! Assembly instructions for the completed enclosure.
module {{cookiecutter.pkg_name}}_enclosure_assembly()
assembly("{{cookiecutter.pkg_name}} enclosure assembly"){
    {{cookiecutter.pkg_name}}_enclosure_upper_stl();
    {{cookiecutter.pkg_name}}_enclosure_lower_stl();
}

if($preview)
    %{{cookiecutter.pkg_name}}_board_assembly();
    {{cookiecutter.pkg_name}}_enclosure_assembly();