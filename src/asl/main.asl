
my_target(35,35).
exploring.

+step(X): carrying(obstacle) & my_target(XMy,YMy) & position(XMy,YMy) <- skip.
+step(X): carrying(obstacle) & my_target(XMy,YMy) <- !moveTo(XMy,YMy).

+step(X): exploring & 
		 ( thing(0,-1,entity,_) | thing(0,-2,entity,_) | thing(0,-3,entity,_) |
		   thing(1,0,entity,_) | thing(1,-1,entity,_) | thing(1,-2,entity,_) | thing(1,-3,entity,_) 
		 ) & position(XMy,YMy)
	<- !moveTo(XMy-1,YMy).

+step(X): exploring & thing(0,-1,obstacle,_) 
	<- attach(n); -exploring; +carrying(obstacle).

+step(X): exploring <- !move(n).






/* 				PERCEPTS 
 * 
 * - position(X,Y) 				- absolute
 * - thing(X,Y,Name,Parameters)	- X horizontal, Y vertical, 
 * - Exemplos: 
 * 		thing(0,-1,obstacle,_) - obstacle a 1 posição NORTE do agente
 * 		thing(0,1,entity,"LIARA") - agente LIARA a 1 posição SUL do agente
 * 
 *  attached(0,-1)[entity(_),source(percept)] - algo conectado ao norte
 * 
 * 
 * */

/* 				ACTIONS 
 * 
 * move(D): D -> n  - position(X,Y-1), 
 * 				 s  - position(X,Y+1), 
 * 				 w  - position(X-1,Y), <-
 * 				 e  - position(X+1,Y), ->
 * 
 * attach(D): D -> n, s, w, e
 * 		
 * clear(X,Y):
 * 		(X,Y) -> (1,0) 	- e
 * 		(X,Y) -> (-1,0) - w
 * 		(X,Y) -> (0,1) 	- n
 * 		(X,Y) -> (0,-1) - s
 * 
 * rotate(D): D -> cw, ccw
 * 
 * 	Tratamento de erros:
 *  lastAction(move)[entity(_),source(percept)]
 *  lastActionParams([s])[entity(_),source(percept)]
 * 	lastActionResult(failed_path)[entity(_),source(percept)]
 * 
 * */
