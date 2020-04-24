/*
	데이터베이스 접근을 이용해서,
	현재 Design파일에 어떤 요소가 있고 편집을 할지에 대해
	기본적으로 데이터를 추출하는 방법.
*/


/*
	Design 내 Thru, SMD 핀의 갯수 파악
*/
(procedure pin_count()
    thru_pins = smd_pins = 0 					;	변수값 초기화
    design_dbid = axlDBGetDesign() 				;	root DBID 부여
    comp_dbids = design_dbid ~> components  	;	root DBID에서 componets관련 DB만 추출
	foreach(comp comp_dbids 					;	comp의 DB리스트를 하나씩 추출
		pin_dbids=comp~>pins 					;	DB에서 
		foreach(pin pin_dbids
			if((pin~>isThrough) then thru_pins++
			else smd_pins++
			);if
		);foreach(pin
	);foreach(comp
	printf("thru pins are %d\n" thru_pins)
	printf("smd pins are %d\n" smd_pins)
); procedure end


/*
	확인할 수 있는 DBID는 ->? 명령어를 통해 확인한다.
	예) design_dbid = axlDBGetDesign()
		design_dbid->?

	부품의 reference 확인하기.
	부품의 nets 확인하기.
	부품의 pins 확인하기.

	만약 PCB파일 내 어떤 부품의 DB 리스트와 정보를 알고싶다면,
	->name을 이용해 알아내야 한다.
*/

cnt = 0	; 수량을 새기 위한 변수
(procedure db_names()
    design_dbid = axlDBGetDesign()

    ; reference Number 정보 알아내기 (이름, 총 갯수)
    comp_dbids = design_dbid ~> components
    (foreach comp_name comp_dbids
    	++cnt
    	names = comp_name~>name
        printf("comp %d is %s\n" cnt names)
    )
    printf("total num of comps is %d\n\n" cnt)


    ; Net 정보 알아내기 (이름, 총 갯수)
	cnt = 0    
    net_dbids = design_dbid ~> nets
    (foreach net_name net_dbids
    	++cnt
    	names = net_name~>name
        printf("comp %d is %s\n" cnt names)
    )
    printf("total num of nets is %d\n\n" cnt)


    ; pin 정보 알아내기 (이름, 총 갯수)
    ; pin정보 같은 경우는, comp DBID를 통해서 들어가야 한다. (comp DBID -> pin DBID)
	cnt = 0    
    comp_dbids = design_dbid ~> components  	;	root DBID에서 componets관련 DB만 추출
	foreach(comp comp_dbids 					;	comp의 DB리스트를 하나씩 추출
		pin_dbids=comp~>pins 					;	Comp DB내의 Pin DB만 뽑아냄.
		foreach(pin_name pin_dbids
	    	++cnt
	    	names = pin_name~>name
	        printf("comp %d is %s\n" cnt names)
		);foreach(pin
	);foreach(comp
    printf("total num of nets is %d\n\n" cnt)
)



; 함수 실행 하기

;pin_count()
db_names()
