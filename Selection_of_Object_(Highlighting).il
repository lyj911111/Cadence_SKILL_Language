/*
	해당 Element를 선택하는 함수를 실행하기 전에, Find Filter함수로 먼저 Scope를 define한다.
*/


/*
	단 하나의 요소만 선택할 때
*/
; Find Filter로 필터링
axlSetFindFilter(?enabled "pins" ?onButtons "pins")
; 좌표로 해당지점에 있는 Element를 선택하기. (있으면 t, 없으면 nil 리턴)
axlSingleSelectPoint(10:10)


/*
	여러개의 요소를 선택할 때
*/
; Find Filter로 필터링
axlSetFindFilter(?enabled "pins" ?onButtons "pins")
; 좌표로 해당지점에 있는 Element를 선택하기. (4개의 Pin선택)
axlAddSelectPoint(10:10)
axlAddSelectPoint(11:13)
axlAddSelectPoint(12:10)
axlAddSelectPoint(10:13)

; 선택한 요소중 하나 뺄때
axlSubSelectPoint(10:10)



/*
	마우스 드레그처럼 박스단위로 선택, 추가, 제거하기
*/
axlSingleSelectBox(list(10:10 30:30))	; clear하고 해당 BOX 선택할 때
axlAddSelectBox(list(10:10 30:30))		; 추가로 BOX 선택할 때
axlSubSelectBox(list(10:10 30:30))		; 선택 부분에서 BOX로 선택 해제 할 때



/*
	Select by Name (이름으로 선택하기)
	Class 항목: NET, COMPONENT, SYMBOL, FUNCTION, DEVTYPE, SYMTYPE, PROPERTY, REFDES, DEVSYM, GROUP
*/
axlSetFindFilter(?enabled list("noall" "nets") ?onButtons list("all"))
axlSingleSelectName("NET" list("VCC")) ; 네트 이름으로 찾기

axlSetFindFilter(?enabled list("noall" "nets") ?onButtons list("all"))
axlSingleSelectName("NET" list("INT0" "INT1")) ; 네트 이름으로 찾기

axlSetFindFilter(?enabled list("noall" "components") ?onButtons list("all"))
axlSingleSelectName("REFDES" list("U1" "U3")) ; 부품 참조번호로 찾기


/*
	선택한 부품(하이라이트 된 Element)의 DBID 뽑아보기.
	axlGetSelSet()
*/
axlGetSelSet()


/*
	선택한 요소(하이라이트 된 Element)의 개수 세기.
*/
axlGetSelSetCount()


/*
	DBID를 알 때, DBID로 Element 선택하기
*/
axlSetFindFilter(?enabled list("noall" "components") ?onButtons list("all"))
axlSingleSelectName("REFDES" list("U1" "U3")) ; 부품 참조번호로 찾기
DBlist = axlGetSelSet()		; DBID를 변수에 저장
a = nth( 0 DBlist)			; 첫번째 DBID는 a에 저장
b = nth( 1 DBlist)			; 두번째 DBID는 b에 저장
axlSingleSelectObject(a)	; a에 저장된 DBID로 Element선택.


/*
	Find Filter에 체크된 사항을 전체 선택함
	  axlAddSelectAll()
*/
;Components 전체 선택하기.
axlSetFindFilter(?enabled list("noall" "components") ?onButtons list("all"))
axlAddSelectAll()

;via 전체 선택하기
axlSetFindFilter(?enabled list("noall" "vias") ?onButtons list("all"))
axlAddSelectAll()