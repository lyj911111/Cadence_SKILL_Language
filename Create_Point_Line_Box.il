/*
	2차원 점(point) 찍기
	어떤 2차원 좌표에 x=300, y=400 pt1 (300 400)이 있다면,
	클론(:)을 이용해서 아래와 같이 표시 할 수 있다.
*/
P = 300:400 ; -> (300 400) 리스트가 만들어짐.
nth(0 P)	; -> x값 300이 출력
nth(1 P)	; -> y값 400이 출력



/*
	박스 만들기
	박스는 딱 2포인트만 있어도 만들 수 있다.
	예를 들어 왼쪽위 포인트(pt_lu), 오른쪽 아래 포인트(pt_rl)으로
	박스를 만든다고 가정하자. 아래와 같이 만들 수 있다.
	그럼 당연히 4 포인트를 알 수 있고, 피타고라스 식으로 점사이 거리와 중심점 모두 유도할 수 있다.
*/
; 두 포인트로 사각 박스만들기.
pt_lu = 10:50
pt_rl = 70:0

; boundary Box 생성 및 인덱싱.
bBox = list(pt_lu pt_rl)

lu = car(bBox)	; left upper (왼쪽 위점) 뽑아내기 (첫번째 리스트만)
lu_x = caar(bBox) ; left upper (왼쪽 위점)의 x좌표
lu_y = cadar(bBox) ; left upper (왼쪽 위점)의 y좌표

rl = cadr(bBox)	; right lower (오른쪽 아래점) 뽑아내기 (두번째 리스트만)
rl_x = caadr(bBox) ; right lower (오른쪽 아래점)의 x좌표
rl_y = cadadr(bBox) ; right lower (오른쪽 아래점)의 y좌표


