;
; 내부의 String의 갯수를 파악해서 리턴
; 예) x = 몇개, y = 몇개
;


(procedure CountItems2(lst)
	let((x tbl)
		tbl = makeTable("tbl" 0)
		(while lst
			x =(car lst)
			if( tbl[x] then
				tbl[x] = add1(tbl[x])
			else
				tbl[x] = 1
			);if else
			lst = cdr(lst)
		);while
		foreach(val tbl
			printf("%L = %d\n" val tbl[val])
		);foreach
	);let
);procedure

table = '( "X"  "X"  "Y"  "Y" )
CountItems2(table)
