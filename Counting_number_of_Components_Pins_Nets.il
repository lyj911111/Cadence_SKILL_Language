

/*
	PCB 설계파일이 복잡할 때 갯수나 수량파악하기 좋은 코드이다.
	아래 코드를 잘 응용해서 원한는 데이터만 추출 할 수 있다.
*/


; 부품의 총 갯수 세기
design_DBID = axlDBGetDesign()
num_comps = length(design_DBID~>components)
printf("total number of component is %d\n" num_comps)


; n번 부품의 몇개 핀이 있는지 갯수 세기
design_DBID = axlDBGetDesign()
comp_dbids = design_DBID ~> components  	
	foreach(comp comp_dbids 					
		comp_name = comp~>name
		pin_num= length(comp~>pins)					
	    printf("pin number of %s is %d\n" comp_name pin_num)
	);foreach(comp


; net의 총 갯수 세기
design_DBID = axlDBGetDesign()
num_nets = length(design_DBID~>nets)
printf("total number of nets is %d\n" num_nets)


