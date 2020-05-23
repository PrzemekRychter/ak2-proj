#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/sumatorQflow
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/sumatorQflow adder ~/sumatorQflow/source/adder.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  -d ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/sumatorQflow adder || exit 1
/usr/local/share/qflow/scripts/cleanup.sh ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/sumatorQflow adder || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/sumatorQflow adder || exit 1
