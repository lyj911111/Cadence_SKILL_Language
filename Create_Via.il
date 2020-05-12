/*
axlDBCreateVia(t_padstack/o_padstackDbid l_anchorPoint [t_netName] [g_mirror] [f_rotation] [o_parent])

axlDBCreateVia("padstack의 via이름", 좌표, "net이름", t일때mirror, 회전각도, [옵션]])
*/

; DRC 에러를 일으키는 위치에 생성.
axlDBCreateVia("powervia" 10:20 "gnd")

; DRC 에러가 일어나지 않는 위치에 생성.
axlDBCreateVia("powervia" 40:20 nil)

