/*
Solid의 Shape만들기
	axlPathStart(폐형상좌표리스트 net이름/없을때nil)
	axlDBCreateShape(LinePath, t(채움)/nil(비움), net이름/없을때nil, [옵션] )
*/
ShapePath = axlPathStart(list(5:5 50:5 50:50 5:50 5:5) nil)
axlDBCreateShape(ShapePath t "etch/top" nil nil)


/*
Void(빈공간)가 들어있는 Shape만들기
먼저 axlDBCreateOpenShape()함수로 외곽선을 Closed(닫힌)형상으로 만들고
그 내부에 axlDBCreateVoid() 또는 axlDBCreateVoidCircle()로 Void를 만들 수 있다.

path라는 변수에 path를 계속 저장하여 진행함.

	path = axlPathStart(시작지점좌표list, 선두께/없을땐nil)
	path = axlPathLine(path, 선두께/없을땐nil, 끝지점좌표)
	path = axlPathArcCenter(path, 선두께/없을땐nil, 끝지점좌표, 시계t/반시계nil방향, 중심좌표)

만든 path를 바탕으로 shape을 생성.

	DBID리턴 = axlDBCreateOpenShape(path, 내부채움t/내부비움nil, layer정보, net이름, [옵션])

Shape내부에 원형 형상 만들기

	axlDBCreateVoidCircle(리턴된DBID, list(좌표값 반지름), [두께/없으면nil])

Shape내부에 직선으로 원하는 형상 만들기

	
	axlDBCreateVoid(o_shape/nil r_path/o_polygon)
*/
path = axlPathStart(list(5:5) nil)							; 시작좌표 설정
path = axlPathLine(path nil 45:5)							; 시작 -> 끝좌표 (직선)
path = axlPathArcCenter(path, nil, 45:100, nil, 45:25)		; Arc만들기 반지름 25mm
path = axlPathLine(path nil 45:55)							; 직선
path = axlPathLine(path nil 5:5)							; 원점으로 이동 (Close형상을 만듦)
CreateShape = axlDBCreateOpenShape(path t "etch/top" nil)	; 위 path를 그래픽으로 출력

axlDBCreateVoidCircle(CreateShape list(45:25 10) nil)		; 내부에 원형 생성.

voidPath = axlPathStart(list(75:35) nil)					; 마름모꼴 생성
voidPath = axlPathLine(voidPath nil 85:45)
voidPath = axlPathLine(voidPath nil 75:55)
voidPath = axlPathLine(voidPath nil 65:45)
voidPath = axlPathLine(voidPath nil 75:35)
axlDBCreateVoid(CreateShape voidPath)					; 위 path를 Shape내의 그래픽으로 출력

axlDBCreateCloseShape(CreateShape)		; Void구간을 제외하고 형상을 Shape으로 닫음.