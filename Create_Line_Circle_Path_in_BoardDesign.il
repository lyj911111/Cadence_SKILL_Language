/*
Line을 생성하는 함수.

	axlDBCreateLine(list(시작좌표 끝좌표) Line두께 "class/layer" Net이름)

	※ 4번쨰 인자는 net이름을 지정하지 않을 때 nil로 둔다.
*/
axlDBCreateLine(list(5:5 40:40) 5 "etch/top" nil)


/*
Circle을 생성하는 함수.

	axlDBCreateCircle(list(중심좌표 반지름) Line두께 "class/layer" )
*/
axlDBCreateCircle(list(30:40 2) 0.5 "etch/bottom")


/*
여러 Line을 경로를 따라 연결하는 방법. (메모리에 임시 저장하여 최종적으로 그려짐)
시작지점 -> 선 연결 -> 아크연결 -> 선 연결
	
	path = axlPathStart(list(시작좌표) 두께) ;DBID 리턴하여 path에 저장
	path = axlPathLine(기존좌표 두께 끝좌표)  ; 두께가 nil이면 기존좌표의 두께를 참조
	path = axlPathArcCenter(기존좌표 두께 끝좌표 시계/반시계방향 Arc중점)
*/
path = axlPathStart(list(5:5) 3)	
path = axlPathLine(path nil 45:5)
path = axlPathArcCenter(path nil 70:25 t 45:25)
path = axlPathLine(path nil 45:55)
axlDBCreatePath(path "etch/top")
