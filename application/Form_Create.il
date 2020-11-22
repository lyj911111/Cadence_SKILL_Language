;
; 폼 자동생성 함수
;
; 함수가 실행되면, 현재 디렉터리에 자동으로
; xxx.form 파일이 만들어진다.
;
;
; *주의* 함수명과 () 사이 반드시 띄어쓰기 해야함
;        (defun 함수명 ()
;        )
;

(defun CreateForm_File ()

   ; 가변적으로 크기가 변할 때 사용
   ;
   ; Port_Size=7
   ; (foreach Item Etch_Layers
   ;    Port_Size = Port_Size + 1
   ; ); end foreach Item Etch_Layers

   ; outfile으로 파일 생성, FORM파일을 쓰기 위한 포트 열기
   Create_Form_Port = outfile("./unit_convert.form" "w")

   fprintf(Create_Form_Port "FILE_TYPE=FORM_DEFN VERSION=2\n")
   fprintf(Create_Form_Port "FORM\n")
   fprintf(Create_Form_Port "FIXED\n")
   fprintf(Create_Form_Port "PORT 45 8\n")
   fprintf(Create_Form_Port "HEADER \"Convert Units\"\n\n")

   fprintf(Create_Form_Port "TILE\n\n")

   fprintf(Create_Form_Port "TEXT \"Input :\"\n")
   fprintf(Create_Form_Port "TLOC 13 6\n")
   fprintf(Create_Form_Port "ENDTEXT\n\n")

   fprintf(Create_Form_Port "TEXT \"Output :\"\n")
   fprintf(Create_Form_Port "TLOC 13 9\n")
   fprintf(Create_Form_Port "ENDTEXT\n\n")

   fprintf(Create_Form_Port "FIELD mil_to_mm\n")
   fprintf(Create_Form_Port "FLOC 1 1\n")
   fprintf(Create_Form_Port "CHECKLIST \"mil -> mm\" \"label1\"\n")
   fprintf(Create_Form_Port "ENDFIELD\n\n")

   fprintf(Create_Form_Port "FIELD mil_to_mm\n")
   fprintf(Create_Form_Port "FLOC 1 3\n")
   fprintf(Create_Form_Port "CHECKLIST \"mm -> mil\" \"label1\"\n")
   fprintf(Create_Form_Port "ENDFIELD\n\n")

   fprintf(Create_Form_Port "FIELD inputbox\n")
   fprintf(Create_Form_Port "FLOC 20 6\n")
   fprintf(Create_Form_Port "STRFILLIN 8 25\n")
   fprintf(Create_Form_Port "ENDFIELD\n\n")

   fprintf(Create_Form_Port "FIELD calc\n")
   fprintf(Create_Form_Port "FLOC 9 11\n")
   fprintf(Create_Form_Port "MENUBUTTON \"Calculate\" 10 3\n")
   fprintf(Create_Form_Port "ENDFIELD\n\n")

   fprintf(Create_Form_Port "FIELD cancel\n")
   fprintf(Create_Form_Port "FLOC 20 11\n")
   fprintf(Create_Form_Port "MENUBUTTON \"Cancel\" 10 3\n")
   fprintf(Create_Form_Port "ENDFIELD\n\n")

   fprintf(Create_Form_Port "ENDTILE\n")
   fprintf(Create_Form_Port "ENDFORM\n")
   ; FORM 파일의 포트를 닫기
   close(Create_Form_Port)
   Create_Form_Port = nil
); end 

; 위에서 만든 .form 파일을 자동으로 생성
CreateForm_File()