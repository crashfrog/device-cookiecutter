//! {cookiecutter.project_short_description}
$pp1_colour = "grey";           // Override any global defaults here if required, see NopSCADlib/global_defs.scad.
include <NopSCADlib/lib.scad>   // Includes all the vitamins and utilities in NopSCADlib but not the printed parts.



//! Assembly instructions in Markdown format in front of each module that makes an assembly.
module main_assembly()
assembly("main") {
    
}

if($preview)
    main_assembly();