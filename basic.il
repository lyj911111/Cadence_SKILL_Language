/*
여러줄 주석달기
C언어랑 같음.
*/

; 한줄 주석달기

cur_skillpath = getSkillPath() ; Obtain SKILL current path

; 증가 감소 C언어와 동일
numCnt = 0
numCnt++	; 후 증가
++numCnt	; 선 증가
numCnt--	; 감소

; 문자열 저장
stringCnt = "hello world"

; Type확인하기
type(numCnt)	; 결과 : fixnum
type(stringCnt)	; 결과 : string

; 한줄에 여러 변수 선언
x = 4, y = 5.3, z = "schematic"
; println 함수 데이터 변수를 화면에 출력
println(z)	;	리턴 값으로 nil을 반환
printf( "the value of x is %n" x )	;	리턴값으로 t를 반환, %n에 fixnum 변수 출력

/*
	simple Labs.
	%n : 정수 출력
	%f : 실수 출력
	%s : 문자열 출력
*/
comp_name = "resistor"
design_name = "pwr_supply1"
tolerance = .1
printf( "\nthe design %s uses a custom %s whose tolerance is %2.1f percent." design_name comp_name tolerance )
