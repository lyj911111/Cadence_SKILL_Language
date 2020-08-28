
; 파일명 지정
Report_fileName = "report_output"
; 파일을 쓰기모드의 포트를 열기 
Report_file = axlDMOpenFile("ALLEGRO_REPORT" Report_fileName "w")

; Report창의 해더 달기
axlLogHeader(Report_file "Result!!!")


fprintf(Report_file, "hello world\n")
fprintf(Report_file, "this is report for you\n")
fprintf(Report_file, "we are the champion\n")



; 열었던 파일을 닫기
close(Report_file)

	



