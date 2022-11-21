
+!move(D): true <- move(D).

/* skip in case there is another agent in that direction */
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy < X & ( thing(1,0,entity,_)  | thing(2,0,entity,_)  | thing(3,0,entity,_) )  <- skip.
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy > X & ( thing(-1,0,entity,_) | thing(-2,0,entity,_) | thing(-3,0,entity,_) ) <- skip.
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy > Y & ( thing(0,-1,entity,_) | thing(0,-2,entity,_) | thing(0,-3,entity,_) ) <- skip.
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy < Y & ( thing(0,1,entity,_)  | thing(0,2,entity,_)  | thing(0,3,entity,_) )  <- skip.

/* Move with Blocks */
/* move to E */
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy < X 
			  & thing(1,0,obstacle,_) & not(attached(1,0))
	<- clear(1,0).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy < X 
			  & attached(1,0)
	<- !rotate(e,w).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy < X 
			  & attached(0,-1)
	<- !rotate(n,w).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy < X 
			  & attached(0,1)
	<- !rotate(s,w).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy < X 
			  & attached(-1,0)
	<- !move(e).
/* move to W */	
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy > X 
			  & thing(-1,0,obstacle,_) & not(attached(-1,0))
	<- clear(-1,0).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy > X 
			  & attached(-1,0)
	<- !rotate(w,e).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy > X 
			  & attached(0,-1)
	<- !rotate(n,e).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy > X 
			  & attached(0,1)
	<- !rotate(s,e).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & XMy > X 
			  & attached(1,0)
	<- !move(w).
/* move to N */		
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy > Y 
			 & thing(0,-1,obstacle,_) & not(attached(0,-1))
	<- clear(0,-1).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy > Y 
			 & attached(0,-1)
	<- !rotate(n,s).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy > Y 
			 & attached(-1,0)
	<- !rotate(w,s).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy > Y 
			 & attached(1,0)
	<- !rotate(e,s).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy > Y 
			 & attached(0,1)
	<- !move(n).
/* move to S */	
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy < Y 
			 &  thing(0,1,obstacle,_) & not(attached(0,1))
	<- clear(0,1).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy < Y 
			 &  attached(0,1)
	<- !rotate(s,n).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy < Y 
			 &  attached(1,0)
	<- !rotate(e,n).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy < Y 
			 &  attached(-1,0)
	<- !rotate(w,n).
+!moveTo(X,Y): carrying(obstacle) & position(XMy,YMy) & YMy < Y 
			 &  attached(0,-1)
	<- !move(s).


+!moveTo(X,Y): position(XMy,YMy) & XMy < X & thing(1,0,obstacle,_) <- clear(1,0).
+!moveTo(X,Y): position(XMy,YMy) & XMy < X <- !move(e).
+!moveTo(X,Y): position(XMy,YMy) & XMy > X & thing(-1,0,obstacle,_) <- clear(-1,0).
+!moveTo(X,Y): position(XMy,YMy) & XMy > X <- !move(w).
+!moveTo(X,Y): position(XMy,YMy) & YMy > Y & thing(0,-1,obstacle,_) <- clear(0,-1).
+!moveTo(X,Y): position(XMy,YMy) & YMy > Y <- !move(n).
+!moveTo(X,Y): position(XMy,YMy) & YMy < Y & thing(0,1,obstacle,_) <- clear(0,1).
+!moveTo(X,Y): position(XMy,YMy) & YMy < Y <- !move(s).
