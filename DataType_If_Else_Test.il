/*
	두개의 좌표 리스트를 받고 그 좌표값을 반환
	그 외 값들이 오면 nil을 리턴하는 함수.

	하나의 argument인 exp를 받음
	exp가 list가 아닐 경우 nil을 반환

	사용 내장함수
		numberp( [arg] ) : arg가 숫자(int, float)일때 t반환, 그외 nil 반환 
		listp( [arg] ) : arg가 List일 때 t반환, 그외 nil 반환
*/
exp = list(44 6.6)


(procedure validatePoint(exp)
    cond(
    	( !exp nil )
    	( !listp( exp )  nil )			; exp가 list가 아니면 nil리턴
    	( length(exp) != 2 nil )		; exp리스트가 2개가 아니면 nil리턴
    	( !numberp( nth(0 exp)) nil )	; 0번째 인자가 숫자가 아니면 nil을 리턴
    	( !numberp( nth(1 exp)) nil )	; 1번째 인자가 숫자가 아니면 nil을 리턴
    	( t exp )						; t일때 exp를 반환
    ); end cond
); end procedure

; 여러 인자를 넣어서 결과 테스트
println(validatePoint( '(5 6) ))				; 두 좌표 리턴
println(validatePoint( list(-500 60) ))			; 두 좌표 리턴
println(validatePoint( list(-13.2 65.3245) ))	; 두 좌표 리턴
println(validatePoint( 1 ))						; arg가 List가 아니므로 nil 리턴
println(validatePoint( "hello world" ))			; arg가 List가 아니므로 nil 리턴
println(validatePoint( list(12 "abcd") ))		; List내 두개가 숫자가 아니므로 nil 리턴
println(validatePoint( list(12 32 45 65) ))		; List인자가 2개가 아니므로 nil리턴




/*
	두개의 좌표 리스트를 받고 수직인지 수평인지 판단하는 함수.
	2개 포인트의 y값이 같으면 수평(horizental)상태
	2개 포인트의 x값이 같으면 수직(vertical)상태
*/
(procedure isLineHorizVert(pt1 pt2)
    if((validatePoint(pt1) && validatePoint(pt2)) then	; 
		cond(
			((nth(0 pt1)==nth(0 pt2))	; 두 지점 수직일 때
				(if type(nth(0 pt1))=='fixnum then
				    printf( "x values %d are vertical\n" nth(0 pt1))	; 정수일때
				else
					printf( "x values %f are vertical\n" nth(0 pt1))	; 실수일때
				)
			)
			((nth(1 pt1)==nth(1 pt2))	; 두 지점 수평일 때
				(if type(nth(1 pt1))=='fixnum then
				    printf( "y values %d are horizental\n" nth(1 pt1))	; 정수일때
				else
					printf( "y values %f are horizental\n" nth(1 pt1))	; 실수일때
				)
			)
		);cond end
	else
		"This is not valid input value"
	); if end
);procedure end

isLineHorizVert( 200:100 200:300 )		;	두지점 x값이 같으므로 수직
isLineHorizVert( 100:50.23 200:50.23 )		;	두지점 x값이 같으므로 수직



/*
	데이터 타입 확인후 if문에 활용하기
*/

a="hello world"						; 변수 a에 String Data type
argType=type(a)

printf("argType=(%s)\n" argType)	; a 타입 확인차 출력

if( argType=='string 				; a 타입이 String이면 if문 가동
then
	printf("YES (%s)\n" argType)
else
	printf("NO   (%s)\n" argType)
)

b=32.2								; 변수 a에 Fixnum Data type
argType=type(b)

printf("argType=(%s)\n" argType)	; a 타입 확인차 출력

if( argType=='fixnum 				; a 타입이 String이면 if문 가동
then
	printf("YES (%s)\n" argType)
else
	printf("NO   (%s)\n" argType)
)