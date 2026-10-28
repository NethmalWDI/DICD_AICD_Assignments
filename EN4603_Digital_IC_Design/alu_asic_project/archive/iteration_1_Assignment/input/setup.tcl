# 1. Link Technology Library
set_db init_lib_search_path [list ../input/libs/gsclib045/lef ../input/libs/gsclib045/timing ../input/libs/gsclib045/qrc/qx]

set_db library slow_vdd1v0_basicCells.lib
#set_db library fast_vdd1v0_basicCells.lib
set_db lef_library {gsclib045_tech.lef gsclib045_macro.lef gsclib045_multibitsDFF.lef}
set_db qrc_tech_file gpdk045.tch
