# VMD script to measure the distance between calcium and residues

set rep {1 2 3 4}
foreach i $rep {
	mol new ../rep$i/system.pdb
	mol addfile ../rep$i/system_TMD.xtc waitfor all

        set all [atomselect top "all"]
        set numfr [molinfo top get numframes]

        set Ca1 [atomselect top "resname CAM1 and resid 640 and name D0"]
        set D123 [atomselect top "chain A and resid 123 and name OD1"]
        set Ca2 [atomselect top "resname CAM1 and resid 641 and name D0"]
        set G126 [atomselect top "chain A and resid 126 and name O"]
        set Ca3 [atomselect top "resname CAM1 and resid 639 and name D0"]
        set L477 [atomselect top "chain A and resid 477 and name O"]
        set Ca4 [atomselect top "resname CAM1 and resid 638 and name D0"]
        set G478 [atomselect top "chain A and resid 478 and name O"]
        set output [open "Ca_chainA_rep$i.dat" w]
        for {set j 0} {$j<$numfr} {set j [expr {$j+1}]} {
                $Ca1 frame $j
                $D123 frame $j
                $Ca2 frame $j
                $G126 frame $j
                $Ca3 frame $j
                $L477 frame $j
                $Ca4 frame $j
                $G478 frame $j
                set dis1 [veclength [vecsub [measure center $Ca1] [measure center $D123]]]
                set dis2 [veclength [vecsub [measure center $Ca2] [measure center $G126]]]
                set dis3 [veclength [vecsub [measure center $Ca3] [measure center $L477]]]
                set dis4 [veclength [vecsub [measure center $Ca4] [measure center $G478]]]
                puts $output "$j $dis1 $dis2 $dis3 $dis4"
        }
	close $output
	
        set Ca1 [atomselect top "resname CAM1 and resid 644 and name D0"]
        set D123 [atomselect top "chain B and resid 123 and name OD1"]
        set Ca2 [atomselect top "resname CAM1 and resid 645 and name D0"]
        set G126 [atomselect top "chain B and resid 126 and name O"]
        set Ca3 [atomselect top "resname CAM1 and resid 643 and name D0"]
        set L477 [atomselect top "chain B and resid 477 and name O"]
        set Ca4 [atomselect top "resname CAM1 and resid 642 and name D0"]
        set G478 [atomselect top "chain B and resid 478 and name O"]
        set output [open "Ca_chainB_rep$i.dat" w]
        for {set j 0} {$j<$numfr} {set j [expr {$j+1}]} {
                $Ca1 frame $j
                $D123 frame $j
                $Ca2 frame $j
                $G126 frame $j
                $Ca3 frame $j
                $L477 frame $j
                $Ca4 frame $j
                $G478 frame $j
                set dis1 [veclength [vecsub [measure center $Ca1] [measure center $D123]]]
                set dis2 [veclength [vecsub [measure center $Ca2] [measure center $G126]]]
                set dis3 [veclength [vecsub [measure center $Ca3] [measure center $L477]]]
                set dis4 [veclength [vecsub [measure center $Ca4] [measure center $G478]]]
                puts $output "$j $dis1 $dis2 $dis3 $dis4"
        }
	close $output
	

        set Ca1 [atomselect top "resname CAM1 and resid 648 and name D0"]
        set D123 [atomselect top "chain C and resid 123 and name OD1"]
        set Ca2 [atomselect top "resname CAM1 and resid 649 and name D0"]
        set G126 [atomselect top "chain C and resid 126 and name O"]
        set Ca3 [atomselect top "resname CAM1 and resid 647 and name D0"]
        set L477 [atomselect top "chain C and resid 477 and name O"]
        set Ca4 [atomselect top "resname CAM1 and resid 646 and name D0"]
        set G478 [atomselect top "chain C and resid 478 and name O"]
        set output [open "Ca_chainC_rep$i.dat" w]
        for {set j 0} {$j<$numfr} {set j [expr {$j+1}]} {
                $Ca1 frame $j
                $D123 frame $j
                $Ca2 frame $j
                $G126 frame $j
                $Ca3 frame $j
                $L477 frame $j
                $Ca4 frame $j
                $G478 frame $j
                set dis1 [veclength [vecsub [measure center $Ca1] [measure center $D123]]]
                set dis2 [veclength [vecsub [measure center $Ca2] [measure center $G126]]]
                set dis3 [veclength [vecsub [measure center $Ca3] [measure center $L477]]]
                set dis4 [veclength [vecsub [measure center $Ca4] [measure center $G478]]]
                puts $output "$j $dis1 $dis2 $dis3 $dis4"
        }
	close $output

	
        set Ca1 [atomselect top "resname CAM1 and resid 652 and name D0"]
        set D123 [atomselect top "chain D and resid 123 and name OD1"]
        set Ca2 [atomselect top "resname CAM1 and resid 653 and name D0"]
        set G126 [atomselect top "chain D and resid 126 and name O"]
        set Ca3 [atomselect top "resname CAM1 and resid 651 and name D0"]
        set L477 [atomselect top "chain D and resid 477 and name O"]
        set Ca4 [atomselect top "resname CAM1 and resid 650 and name D0"]
        set G478 [atomselect top "chain D and resid 478 and name O"]
        set output [open "Ca_chainD_rep$i.dat" w]
        for {set j 0} {$j<$numfr} {set j [expr {$j+1}]} {
                $Ca1 frame $j
                $D123 frame $j
                $Ca2 frame $j
                $G126 frame $j
                $Ca3 frame $j
                $L477 frame $j
                $Ca4 frame $j
                $G478 frame $j
                set dis1 [veclength [vecsub [measure center $Ca1] [measure center $D123]]]
                set dis2 [veclength [vecsub [measure center $Ca2] [measure center $G126]]]
                set dis3 [veclength [vecsub [measure center $Ca3] [measure center $L477]]]
                set dis4 [veclength [vecsub [measure center $Ca4] [measure center $G478]]]
                puts $output "$j $dis1 $dis2 $dis3 $dis4"
        }
	close $output
	
        set Ca1 [atomselect top "resname CAM1 and resid 656 and name D0"]
        set D123 [atomselect top "chain E and resid 123 and name OD1"]
        set Ca2 [atomselect top "resname CAM1 and resid 657 and name D0"]
        set G126 [atomselect top "chain E and resid 126 and name O"]
        set Ca3 [atomselect top "resname CAM1 and resid 655 and name D0"]
        set L477 [atomselect top "chain E and resid 477 and name O"]
        set Ca4 [atomselect top "resname CAM1 and resid 654 and name D0"]
        set G478 [atomselect top "chain E and resid 478 and name O"]
        set output [open "Ca_chainE_rep$i.dat" w]
        for {set j 0} {$j<$numfr} {set j [expr {$j+1}]} {
                $Ca1 frame $j
                $D123 frame $j
                $Ca2 frame $j
                $G126 frame $j
                $Ca3 frame $j
                $L477 frame $j
                $Ca4 frame $j
                $G478 frame $j
                set dis1 [veclength [vecsub [measure center $Ca1] [measure center $D123]]]
                set dis2 [veclength [vecsub [measure center $Ca2] [measure center $G126]]]
                set dis3 [veclength [vecsub [measure center $Ca3] [measure center $L477]]]
                set dis4 [veclength [vecsub [measure center $Ca4] [measure center $G478]]]
                puts $output "$j $dis1 $dis2 $dis3 $dis4"
        }
	close $output
}



#vmd -dispdev text -e deltaz.tcl
