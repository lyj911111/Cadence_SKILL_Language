/*
	Allegro PCB Database 다루기 

	현재 사용하고 있는 PCB Editor에 대한 데이터베이스 접근 시작.
	이 아이디를 가지고 내부 데이터베이스를 다룸.
		axlDBGetDesign()
	
	-> 연산자   : DBID에서 자세한 정보를 뽑아냄.
	->? 연산자  : DBID에서의 이름(name)만 알려줌.
	->?? 연산자 : DBID에서의 이름(name)과 값(value)를 함께 알려줌.
*/

; DB ID부여
design_dbid = axlDBGetDesign()

; DBID로 어떤 성분이 있는지 확인.
design_dbid->?

; DBID와 하위 값(value)도 모두 알려줌
design_dbid->??
; 출력이 지저분하게 나올 때 아래 내장함수로 출력 길이 조절 가능.
_itemsperline = 2

; 각 성분별 어떤 DB가 포함되있는지 확인.
drc_dbid = design_dbid->drcs
drcState_dbid = design_dbid->drcState
objectType = design_dbid->objType 			; type종류
padstack_dbid = design_dbid->padstacks
symbol_dbid = design_dbid->symbols
symdef_dbid = design_dbid->symdefs
isReadOnly = design_dbid->readOnly 			; t or nil
bBox_coord = design_dbid->bBox 				; 좌표를 리턴
components_dbid = design_dbid->components
compdef_dbid = design_dbid->compdefs
net_dbid = design_dbid->nets
xnet_dbid = design_dbid->xnet
bus_dbid = design_dbid->bus
diffpair_dbid = design_dbid->diffpair
matchgroup_dbid = design_dbid->matchgroup
module_dbid = design_dbid->module
netclass_dbid = design_dbid->netclass
netGroup_dbid = design_dbid->netGroup
groups_dbid = design_dbid->groups
ecsets_dbid = design_dbid->ecsets
waived_dbid = design_dbid->waived
texts_dbid = design_dbid->text
pins_dbid = design_dbid->pins
designOutline_dbid = design_dbid->designOutline
keepinPlace_dbid = design_dbid->keepinPlace
routeinRoute_dbid = design_dbid->keepinRoute
koGroupRoute_dbid = design_dbid->koGroup
zone_dbid = design_dbid->zone
prop_dbid = design_dbid->prop


