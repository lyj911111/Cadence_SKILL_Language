;
; 함수 사용하여 input & return 시키기
; 두 함수를 이용하여 인자 하나 넣을때 함수 계산
;
; 1. load("name.il") 스킬 로드
; 2. skill name( input인자 )  입력하면  예) add(1 2) / cal(3 4)
; 3. 내부 함수가 계산되고, return값을 보냄
;


(procedure add(x y)
    prog(()
		return(x+y)
	);prog
);procedure

(procedure multi(x y)
    prog( ()
		return(x*y)
	);prog
);procedure

(procedure cal(x y)
	prog(()
		temp = add(x y)
		result = multi(temp y)
		return(result)
	);prog
);procedure