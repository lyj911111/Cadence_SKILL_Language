;현재 날짜 시간 정보 얻기
getCurrentTime()

;시작 시간과 끝난 시간으로 Runtime 구하기
start = getCurrentTime()
finish = getCurrentTime()
runTime = compareTime(start finish)


;Allegro PCB 설치경로 불러오기
cdsGetInstPath()


;현재 작업중인 경로 불러오기
getWorkingDir()


/*
	인자가 없을때 => 환경변수의 HOME디렉터리로 지정.
	뒤에 인자가 있으면 그 경로로 작업환경이 이동함.
*/
changeWorkingDir( "작업경로" )

/*
	앞에 접두어를 붙여주는 함수.
	예를들어 공통 라이브러리를 불러오려고 할 때,
	"D:/SPB_Data17_2/01_Test/allegro/OurLib"에
*/
prependInstallPath()


; 윈도우 OS에게 cmd창을 통해 프로그램을 실행시켜줌.
sh("padstack_editor")	; padstack실행
sh("pspice")			; pspice 실행
sh("capture")			; capture 실행
sh("PuTTY")				; PuTTY 실행시켜보기 