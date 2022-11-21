
/* rotate to W */
+!rotate(e,w): not(thing(0,-1,obstacle,_)) <- rotate(ccw).
+!rotate(e,w): not(thing(0,1,obstacle,_))  <- rotate(cw).
+!rotate(e,w) <- clear(0,-1).
+!rotate(n,w): not(thing(-1,0,obstacle,_)) <- rotate(ccw).
+!rotate(n,w): thing(-1,0,obstacle,_) <- clear(-1,0).
+!rotate(s,w): not(thing(-1,0,obstacle,_)) <- rotate(cw).
+!rotate(s,w): thing(-1,0,obstacle,_) <- clear(-1,0).

/* rotate to E */
+!rotate(w,e): not(thing(0,-1,obstacle,_)) <- rotate(cw).
+!rotate(w,e): not(thing(0,1,obstacle,_))  <- rotate(ccw).
+!rotate(w,e) <- clear(0,-1).
+!rotate(n,e): not(thing(1,0,obstacle,_)) <- rotate(cw).
+!rotate(n,e): thing(1,0,obstacle,_) <- clear(1,0).
+!rotate(s,e): not(thing(1,0,obstacle,_)) <- rotate(ccw).
+!rotate(s,e): thing(1,0,obstacle,_) <- clear(1,0).

/* rotate to N */
+!rotate(s,n): not(thing(1,0,obstacle,_)) <- rotate(ccw).
+!rotate(s,n): not(thing(-1,0,obstacle,_))  <- rotate(cw).
+!rotate(s,n) <- clear(1,0).
+!rotate(e,n): not(thing(0,-1,obstacle,_)) <- rotate(ccw).
+!rotate(e,n): thing(0,-1,obstacle,_) <- clear(0,-1).
+!rotate(w,n): not(thing(0,-1,obstacle,_)) <- rotate(cw).
+!rotate(w,n): thing(0,-1,obstacle,_) <- clear(0,-1).

/* rotate to S */

+!rotate(n,s): not(thing(1,0,obstacle,_)) <- rotate(cw).
+!rotate(n,s): not(thing(-1,0,obstacle,_))  <- rotate(ccw).
+!rotate(n,s) <- clear(1,0).
+!rotate(e,s): not(thing(0,1,obstacle,_)) <- rotate(cw).
+!rotate(e,s): thing(0,1,obstacle,_) <- clear(0,1).
+!rotate(w,s): not(thing(0,1,obstacle,_)) <- rotate(ccw).
+!rotate(w,s): thing(0,1,obstacle,_) <- clear(0,1).