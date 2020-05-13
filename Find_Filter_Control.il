/*
	Database내 Element를 선택하기.

		1. Find Filter로 찾을 항목 추리기
		2. 선택할 항목의 DBID나 이름 찾기


필터를 컨트롤하는 함수.
	axlSetFindFilter(?enabled list(항목들) ?onButton list(항목들))
*/

; 항목 활성화 및 비활성화
axlSetFindFilter(?enabled list("all"))		; 모두 활성화
axlSetFindFilter(?enabled list("noall"))	; 모두 비활성화

; 모두 비활성화 시킨상태에서 Nets, Pins, Vias 만 활성화 시키기
axlSetFindFilter(?enabled list("noall" "nets" "pins" "vias"))

; 위 상태에서 Nets 체크박에서 체크표시하기(활성화)
axlSetFindFilter(?enabled list("noall" "nets" "pins" "vias") ?onButtons list("noall" "nets"))

; 모든 선택항목을 활성화 시킨 후, 체크박스 전부 체크하기
axlSetFindFilter(?enabled list("all") ?onButtons list("all"))

; 위 상태에서 Nets, Pins, Vias 선택해제, Shapes 비활성화 시키기
axlSetFindFilter(?enabled list("noall" "nets" "pins" "vias" "shapes") ?onButtons list("noall" "shapes"))


; argument인자로는 nil(입력안함) 또는 t 둘중 하나이다.

axlGetFindFilter()	; 활성화된 모든 인자 리턴.
axlGetFindFilter(t)	; 체크박스에 활성화된 인자 리턴.

; 테스트
axlSetFindFilter(?enabled list("noall" "nets" "pins" "vias" "shapes" "components" "clines" "lines") ?onButtons list("noall" "shapes" "nets" "vias"))

