
(globals 
   version=3
   io_order = clockwise
   space = 10
   total_edge=11
)

(iopad
    (topleft
      (inst name="CornerCell1" cell=padIORINGCORNER offset=0 orientation=R180 place_status=fixed)

     )
     
     (left 
          (inst name="op0" cell=PADDI place_status=fixed)
          (inst name="op1" cell=PADDI place_status=fixed)
	    (inst name="op2" cell=PADDI place_status=fixed)
	    (inst name="clk" cell=PADDI place_status=fixed)
	    (inst name="en" cell=PADDI place_status=fixed)
          (inst name="VDD" cell=PADVDD place_status=fixed)
	    (inst name="GND" cell=PADVSS place_status=fixed)
	    (inst name="fc" cell=PADDO place_status=fixed)
	    (inst name ="VDDIOR" cell = PADVDDIOR place_status = fixed)
	    (inst name = "VSSIOR" cell = PADVSSIOR place_status = fixed)
      )
    (topright
      (inst name="CornerCell2" cell=padIORINGCORNER offset=0 orientation=R90 place_status=fixed)

     )
     
     (top 
	    (inst name="A0" cell=PADDI place_status=fixed)
          (inst name="A1" cell=PADDI place_status=fixed)
          (inst name="A2" cell=PADDI place_status=fixed)
          (inst name="A3" cell=PADDI place_status=fixed)
	    (inst name="A4" cell=PADDI place_status=fixed)
          (inst name="A5" cell=PADDI place_status=fixed)
          (inst name="A6" cell=PADDI place_status=fixed)
          (inst name="A7" cell=PADDI place_status=fixed)
	  (inst name="si" cell=PADDI place_status=fixed)
          
      )
    (bottomright
      (inst name="CornerCell3" cell=padIORINGCORNER offset=0 orientation=R0 place_status=fixed)

     )
     
     (right 
          (inst name="r0" cell=PADDO place_status=fixed)
          (inst name="r1" cell=PADDO place_status=fixed)
          (inst name="r2" cell=PADDO place_status=fixed)
          (inst name="r3" cell=PADDO place_status=fixed)
	    (inst name="r4" cell=PADDO place_status=fixed)
          (inst name="r5" cell=PADDO place_status=fixed)
          (inst name="r6" cell=PADDO place_status=fixed)
          (inst name="r7" cell=PADDO place_status=fixed)
          (inst name="so" cell=PADDO place_status=fixed)
	    (inst name="fz" cell=PADDO place_status=fixed)
      )
    (bottomleft
      (inst name="CornerCell4" cell=padIORINGCORNER offset=0 orientation=R270 place_status=fixed)

     )
     
     (bottom 
	    (inst name="B0" cell=PADDI place_status=fixed)
          (inst name="B1" cell=PADDI place_status=fixed)
          (inst name="B2" cell=PADDI place_status=fixed)
          (inst name="B3" cell=PADDI place_status=fixed)
	    (inst name="B4" cell=PADDI place_status=fixed)
          (inst name="B5" cell=PADDI place_status=fixed)
          (inst name="B6" cell=PADDI place_status=fixed)
          (inst name="B7" cell=PADDI place_status=fixed)
	  (inst name="SE" cell=PADDI place_status=fixed)
          
      )
