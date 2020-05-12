/*
DRC 마커를 생성해주는 함수 최소 3개의 인자는 넣어야 함. (나머진 옵션)

	axlDBCreateExternalDRC(t_constraint/lt_constraint, l_anchor_point, t_layer, [lo_dbid] [l_secondPoint] [t_actualValue])

	axlDBCreateExternalDRC("뭘 위반했는지 String으로 씀", 표시할좌표, "drc error class/subclass이름, nil, nil, actual value값)

*/

axlDBCreateExternalDRC("Damm you violated the Spacing again" 45:45 "drc error class/all" nil nil "50 mils")	; subclass가 all 일때.

axlDBCreateExternalDRC("are you kidding me? you violated Spacing Rule!" 55:55 "drc error class/top" nil nil "10 mils") ; subclass가 top 일때.