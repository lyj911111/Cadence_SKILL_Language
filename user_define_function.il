/*
	함수만들기 기본.

	중괄호 이용. { }
	let() 함수 이용.

	return값으로 맨 아랫쪽에 계산된 값이 나옴.
*/

;중괄호 이용하기. 사용된 변수 pt1, pt2, x1, x2는 전역변수
; pt_list = list( 100:200 350:450)
; delta_x = {
; 	pt1 = nth(0 pt_list)
; 	pt2 = nth(1 pt_list)
; 	x1 = nth(0 pt1)
; 	x2 = nth(0 pt2)
; 	abs( x2 - x1 )
; }
; print(delta_x)

; let함수 괄호 내 변수는 지역변수로 선언 (nil로 초기화)
;* let() 에 지역변수를 선언하지 않으면 디버깅이 힘들어짐.
; pt_list = list( 300:400 350:450)
; delta_x = let( (pt1, pt2, x1, x2 )
; 	pt1 = nth(0 pt_list)
; 	pt2 = nth(1 pt_list)
; 	x1 = nth(0 pt1)
; 	x2 = nth(0 pt2)
; 	abs( x2 - x1 )
; 	) ; let
; print(delta_x)

; ; 지역변수가 없는 경우에도 ()는 반드시 써야한다.
; let( ()
; ll = nth(0 pt_list)
; ur = nth(1 pt_list)
; lly = nth(1 ll)
; ury = nth(1 ur)
; ury -lly 
; ) ; let(



/*
	사용자 정의 함수 만들기.
	
	procedure( [ 함수이름() ])
		let( ( [지역변수선언] )
		
		[전역변수 선언]
		[리턴 값]

		)

	함수사용방법.

	a = 함수이름()
*/

pt_list = list( 50:100 350:450)
procedure( delta_x( )			; 함수이름선언
	let( (pt1 pt2 x1 x2 )		; 지역변수 선언
		pt1=nth(0 pt_list)		; 전역변수 선언
		pt2=nth(1 pt_list)
		x1=nth(0 pt1)
		x2=nth(0 pt2)
		abs(x2 - x1)			; 리턴 값
	); let end
); procedure end



/*
1개의 리스트 인자를 받는 사용자정의 함수.

리스트의 값을 변경하면서 출력 테스트

*/
pt_list = list( 50:100 350:450)	; 초기값

procedure( delta_x( pt_list )	; 함수이름선언, input 리스트변수 
	let( (pt1 pt2 x1 x2 )		; 지역변수 선언
		pt1=nth(0 pt_list)		; 전역변수 선언
		pt2=nth(1 pt_list)
		x1=nth(0 pt1)
		x2=nth(0 pt2)
		abs(x2 - x1)			; 리턴 값
	); let end
); procedure end

my_list = list(100:200 200:300)
x_distance = delta_x(my_list)
print(x_distance)

my_list = list(100:200 400:300)
x_distance = delta_x(my_list)
print(x_distance)

my_list = list(100:200 600:300)
x_distance = delta_x(my_list)
print(x_distance)

/*
두점사이 직선거리를 구하는 함수 만들어보기

direct_distance( [twoPtList] )

*/
twoPtList = list(3:4 7:9)

procedure( direct_distance( twoPtList )	
	let( (pt1 pt2 pt1x pt1y pt2x pt2y )		; 로컬 변수들 선언
		pt1=nth(0 twoPtList)				; 각 점의 좌표를 할당. pt1 = (3, 4)
		pt2=nth(1 twoPtList)				; 각 점의 좌표를 할당. pt2 = (7, 9)

		pt1x=nth(0 pt1)						; pt1의 x값 할당 pt1x = 3
		pt1y=nth(1 pt1)						; pt1의 y값 할당 pt1x = 4
		pt2x=nth(0 pt2)						; pt2의 x값 할당 pt1x = 7
		pt2y=nth(1 pt2)						; pt2의 y값 할당 pt1x = 9
		sqrt((pt1x - pt2x)**2 + (pt1y - pt2y)**2)	; 점사이거리 공식
	); let end
); procedure end

dist = direct_distance(twoPtList)
print(dist)
print("/")		; 구분하기 위해

twoPtList = list(1:2 10:30)
dist = direct_distance(twoPtList)
print(dist)
print("/")

twoPtList = list(1:20 15:100)
dist = direct_distance(twoPtList)
print(dist)