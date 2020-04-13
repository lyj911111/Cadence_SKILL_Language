/*
문법.
일반적으로 조건에 만족하면 t가 리턴되고, 반대는 nil이 리턴된다.
거의 C언어와 동일하다.

(비교 연산자)

크다 or 작다				< >
크거나(작거나) 같다 		<= >=
같다						==
같지 않다				!=

(조건 연산자)

Not 			!
And 			&&
Or 				||

(if 문 사용법)

if( [조건문 만족여부]
	then
		[이곳을 실행]
	else
		[만족못하면 여기를 실행]
)

*/

; 예제 나이가 80세 이상이고 은퇴했으면 백수, 아니면 월급쟁이
if( age > 80 && retired == t
then
	income = nothing
else
	income = salary
)

; 아침밥을 안먹었으면 밥먹기, 아니면 굶기.
if( !breakfast
then
	me = eatting
else
	me = starving
)


/*
	if문 중복으로 사용예제

	1. shapeType circle이면 cntCircle증가
	2. 아니면 line인지 확인해서 맞으면 cntLine증가
	3. 아니면 others가 증가
*/
if( shapeType == "circle"
then
	++cntCircle
else
	if( shapeType == "line"
	then
		++cntLine
	else
		++others
	); if 2nd
); if end


/*
	when문, unless문 사용법 성공시 둘다 t반환

	when문은 해당 조건이 맞으면 실행, 아니면 통과
	unless문은 해당 조건이 맞지 않으면 실행, 맞으면 통과

	when( [조건문]
		[실행하고자 하는 것]
	)

	unless( [예외처리 조건문]
		[예외 일이 발생했을때 처리할 것]
	)
*/

; 조건이 맞을 때
a = 1

unless( a == 1
	print("hello world")
)

; 조건이 틀릴 때
a = 0

unless( a == 1
	print("hello world")
)


/*
	case문 여러개의 경우를 한번에 비교할 때
	비교하여 한가지 Branch만 실행하고 종료
*/
case( alphabet
	("a"
		++aCnt
		println("alphabet is a")
		)
	("b"
		++bCnt
		println("alphabet is b")
		)
	("c"
		++cCnt
		println("alphabet is c")
		)
	(t
		println("this is not alphabet")
		)
); case end
