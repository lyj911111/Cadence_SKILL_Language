/*
	리스트 만들기 2가지 방법.
	1. 앞에 '를 붙이고 ( )로 묶고, 구분자로 띄어쓰기를 한다.
	2. list()함수를 이용.
*/
numlist1 = '( 1 2 3 4 5 6 7 8 9)
numlist2 = list(1,2,3,4,5,6,7,8,9)
; 타입확인
type(numlist1)



/*
	SKILL내장함수 _itemsperline
	skill 인터프리터에서 한줄에 표시할 list의 갯수 지정.
*/
_itemsperline = 2	; 화면 표시를 2줄로 제한
println(numlist)
_itemsperline = 10	; 화면 표시를 10줄로 제한
println(numlist)



/*
	nthelem() 함수를 사용하여 list 내 값을 인덱싱함.

	  아래와 같은 syntax를 유지한다.
	nthelem([인덱스번호] [리스트])
*/
a = list(one, two, str, chr, nilval)
b = '(one, two, str, chr, nilval)
type(nthelem(1 a))	; a의 1번째 인자 -> fixnum
type(nthelem(1 b))	; b의 1번째 인자 -> symbol





/*
	list()함수내 index값에 변수가 들어가면, 변수가 갖고 있는 해당 값(value)로 바뀐다.

*/
; 변수 만들기
one = 1, two = 2, three = 3, str = "hello world", chr = "a", nilval = nil

; list() 함수, '( ) 리스트 만드는 차이점.
a = list(one, two, str, chr, nilval)
b = '(one, two, str, chr, nilval)
nthelem(1 a)
nthelem(1 b)




/*
	cons() 함수를 사용하여 list 내 인덱스(index)를 추가.
	파이썬의 appendix와 비슷. 리스트의 맨 앞(왼쪽)부터 값을 체워나간다.

	  아래와 같은 syntax를 유지한다.
	[값을 넣을 리스트변수] = cons( [값] [참조 리스트변수] ) 
*/
result = nil 				; result 변수에 nil(값 없이 메모리주소 할당)선언 
result = cons( 1 result )	; result 변수에 1 이라는 index를 추가.
result = cons( 2 result )
result = cons( 3 result )
; result = (3 2 1) 이 생성됨. (먼저 넣은 값은 오른쪽으로 점점 밀려감)

referenceList = '(4 5)			; 기준List

value = 15						; 기준List에 추가할 값
valueList = '(1, 2, 3)			; 기준List에 추가할 List
strList = '("hello", "world")	; 기준List에 추가할 String(문자열)

; 결과 테스트
resultList = cons( value , referenceList)
resultList = cons( valueList , referenceList)
resultList = cons( strList , referenceList)




/*
	리스트 내 인덱스 순서 뒤집기
	reverse( 리스트변수 )
*/
reverse(resultList)




/*
	append() 함수를 사용하여 list내 list를 추가하기.
	단 argument(인자)로 오직 리스트만 허용한다.
	인자는 오직 2개만 허용한다.

	  아래와 같은 syntax를 유지한다.
	[합친 리스트변수] = append( [리스트변수] [리스트변수] ) 
*/
a = '(1 2 3 )
b = '(4 5 6 )
c = '(12 13 14)

; 결과 확인
resultList = append(a b)
resultList = append(a c)

; 오류 발생하는 케이스
resultList = append(a 1)
resultList = append(3 b)
resultList = append(a b c)




/*
	cons() 와 append() 테스트
*/
a = '(1 2 3 )
b = '(4 5 6 )

append(a b) ; (1 2 3 4 5 6 )	a리스트, b리스트가 하나로 합쳐짐.
cons(a b)	; ((1 2 3) 4 5 6)  기존 b만 있는데, a리스트가 b의 첫번째 인자 List형태로 추가됨.

a = append(a list(9)) ; (1 2 3 9)	a리스트 뒤에 (9)라는 리스트가 추가하여 a에 저장.
a = append(a list(3 5)) ; (1 2 3 9 3 5) a리스트 뒤에 (3 9)라는 리스트가 추가하여 a에 저장.




/*
	리스트 관련 인덱싱 함수들.

	car( [리스트] ) 						: 리스트의 첫번쨰 값을 반환
	cdr( [리스트] ) 						: 첫번쨰 값을 제외한 나머지 값의 리스트를 반환
	nth( [인덱스번호] [리스트] )			: 리스트내 값을 인덱싱
	member( [리스트내 찾는값] [리스트] ) : 리스트내 값을 찾고, 있으면 그 값 뒤를 리스트로 묶어 출력, 없으면 nil 반환
	length( [리스트] ) 					: 리스트의 인덱스 갯수를 출력

	setof( [변수] [리스트] oddp(변수) ) 	: 리스트내 홀수를 필터링, 없으면 nil반환
	setof( [변수] [리스트] evenp(변수) )	: 리스트내 짝수를 필터링, 없으면 nil반환
*/
num = '(1 3 5 7 9 10)

println( car(num) )
println( cdr(num) )

println( nth(1 num) )	;	3반환, 인덱스는 0번부터 시작, 초과하면 nil을 반환.
println( nth(9 num) )	;	인덱스 초과함으로 nil반환

member( 5 num )			;	5를 포함한 (5 7 9)리스트를 반환
length( num )			;	인덱스의 갯수인 5개를 반환

setof( x num oddp(x) )	;	num리스트내 홀수만 반환 x는 임시변수
setof( x num evenp(x) ) ;	num리스트내 짝수만 반환

