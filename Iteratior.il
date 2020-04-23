/*
	for 반복문
	hello world 10번 찍기
*/
for( i 1 10
	printf("hello world " )
); for end

/*
	for 반복문
	2를 10번 제곱하기
*/
for( i 1 10
	printf("squared number of %d is %d \n" i i*i )
); for end




/*
	foreach문
	
	문법,
	foreach( 반복변수 리스트
	)

	리스트와 결합하여 사용, 보통 리스트 내 여러 변수를 비교할때 사용.
*/
rect = cir = tri = elip = others = 0							; 값 초기화
shapeList = '("circle" "rectangle" "triangle" "elipse" "corn")	; 리스트 선언

(foreach shapeType shapeList
    (if shapeType == "rectangle"
    then
        ++rect
    else
    	(if shapeType == "circle"
    	then
    	    ++cir
    	else
    		(if shapeType == "elipse"
    		then
    		    ++elip
    		else	
    			++others
    		)
    	)
    	
    )
)
println(rect)	; 리스트내 1개
println(cir)	; 리스트내 1개
println(tri)	; tri는 비교 안함 0개
println(elip)	; 리스트내 1개
println(others)	; tri와 corn 이 있으므로 2개




/*
	while문

	i가 100보다 작으면 거짓이므로 nil이어서 반복.
	i가 100을 넘기면 t(true) 이므로 반복문 탈출.
*/
i = 0
while(i < 100	; i가 계속 증가하여 100이 넘어가면 t리턴.
	println(i)
	i++
)