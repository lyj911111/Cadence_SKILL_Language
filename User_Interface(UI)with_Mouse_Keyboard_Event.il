
/*
	유저로부터 마우스 이벤트 요청, 유저가 마우스 클릭하면 해당 좌표를 리턴

	axlEnterPoint(
				?prompts list("유저에게 display할 메세지") 
				?points l_points
				?gridSnap t : Grid ON / nil : Grid OFF
				)
*/


; 유저에게 좌표 입력을 요청하여 변수에 저장.
mycoord = axlEnterPoint(?prompts list("please click anywhere") ?gridSnap t)

; 유저에게 박스드레그 좌표 입력을 요청하여 그 좌표값을 받아 변수에 저장.
myBoxCoord = axlEnterBox(?prompts list("plz enter 1st point" "enter last point"))

; 입력창을 띄움. 입력값을 변수에 저장.
answer = axlEnterString(?prompts "Do you wanna build the snow man?")


; 유저에게 강한 알림창을 뛰움.
axlUIConfirm("you violate rule!")


; 텍스트 파일 띄우기
; axlUIViewFileCreate("띄울 파일명" "띄었을때 텍스트창 이름")
axlUIViewFileCreate("netlist.log" "new window name" nil)



; 창을 새로만들면, 창에대한 ID가 생기며, 이 ID로 창을 통제가능.
; winID 변수에 창 ID를 넣고 5초후 종료해보기
winID = axlUIViewFileCreate("netlist.log" "new window name" nil)	; 창 띄우고
sleep(5)			; 5초 후에
axlUIWClose(winID)	; 종료



; 띄어진 모든창 종료
axlUIWCloseAll()