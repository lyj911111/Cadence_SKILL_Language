/*
	파일 쓰기.
	(※ print(), println() 2번째 인자로 stdout 포트를 잡아줌.)

	객체 = outfile( [파일명] )
	println( [쓸 내용] 객체 )  => 객체를 이용해 stdout을 파일로 잡아줌. (객체가 없을 경우엔 모니터출력)
	close(객체)				  => 포트를 닫아줌.

	Test.txt 라는 파일을 만들고
	println()을 이용해 내용을 쓴는 예제.
*/

myPort = outfile("./Test.txt")
for( i 1 5
	println( list("Number" i) myPort )
)
close(myPort)
myPort = nil

myPort = outfile("./Test.txt" "a")
for( i 16 20
	println( list("Number" i) myPort )
)
close(myPort)
myPort = nil

/*
	포맷이 있는 파일 쓰기.

	fprintf( [포트객체] ["String의 형식체"])

	fprintf는 옵션이 없이 반드시 위 인자를 다 넣어야 한다.
	화면출력이 아닌 파일출력을 위한 함수이다.
*/
myPort = outfile( "./Test.txt" ) 
for(i 1 5 
	fprintf( myPort "\nNumber: %d" i ) 
) 
close( myPort )


/*
	파일을 읽어서 내부에 출력해보기

	* 읽어올 포트 열기
	[포트정보 객체] = infile( [읽을파일] )
	
	* 한줄씩 읽기
	gets( [읽고저장할 변수] [포트정보 객체] )

	예제,
	inPort에 읽을 파일 포트를 불러오고 gets함수를 이용해
	한줄씩 읽고 프린트하는 예제. 단, when()함수로 인해
	해당 파일이 있을 때만 실행가능.
*/
let( (inPort newLine)
	inPort = infile("./Test.txt")	; Test.txt의 포트를 열음
	when( inPort 					; inPort에 포트가 있을때만 실행
		(while gets( nextLine inPort)
			println( nextLine )
		); while end
	); when end

); let end