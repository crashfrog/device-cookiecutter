//! {cookiecutter.project_short_description}
$pp1_colour = "grey";           // Override any global defaults here if required, see NopSCADlib/global_defs.scad.
include <NopSCADlib/lib.scad>   // Includes all the vitamins and utilities in NopSCADlib but not the printed parts.
include <{{cookiecutter.pkg_name}}_enclosure.scad>
include <{{cookiecutter.pkg_name}}_boad.scad>


//! Assembly instructions in Markdown format in front of each module that makes an assembly.
module main_assembly()
assembly("main") {
    {{cookiecutter.pkg_name}}_board_assembly();
    {{cookiecutter.pkg_name}}_enclosure_assembly();
}

if($preview)
    main_assembly();