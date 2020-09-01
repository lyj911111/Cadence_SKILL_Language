(procedure distance(x1 y1 @optional (x2 0) (y2 0))
    let((deltaX deltaY)

    	deltaX = x2 - x1
    	deltaY = y2 - y1
    	sqrt(deltaX**2 + deltaY**2)

    );let
);procedure