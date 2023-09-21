
CoordMode, pixel,screen
CoordMode, mouse,Screen


Gui, Add, Text, x12 y9 w450 h30 , Ctrl+F1 마우스 해당 좌표 와 색상값 불러옴
Gui, Add, Text, x12 y49 w450 h30 , Ctrl+F11 프로그램 재시작
Gui, Add, Text, x12 y89 w450 h30 , Ctrl+F2 시작 
Gui, Add, Text, x12 y129 w450 h100 ,   
Gui, Add, Text, x12 y239 w-1766 h-60 , 다음버튼 위에서 좌표와 색상값 불러온 다음 시작 해놓으면 끝
Gui, Add, Text, x12 y239 w450 h50 , 교육 듣기 귀찮다.`n`n제작자 - Reo 블로그 - https://blog.naver.com/indoubt
Gui, Show, x267 y362 h310 w479, EduClick
Return

GuiClose:
ExitApp

^F1::
MouseGetPos,Fx,Fy
PixelGetColor, TargetColor, %Fx%, %Fy%

GuiControl,, Static4,   X좌표 - %Fx% `n`nY좌표 - %Fy% `n`n색상값 - %TargetColor%

Gui, Show
return

^F2::

    Loop
    {
	MouseGetPos,Bx,By
        ; 픽셀 가져옴
        PixelGetColor, CurrentColor, %Fx%, %Fy%
	
        ; 색상일치 확인
        if (CurrentColor = TargetColor)
        {
            ; 색상이 일치하면 클릭
              MouseClick, left, %Fx%, %Fy%
	sleep,100
	;돌아와서 클릭
	MouseMove, %Bx%,%By%
        }

        ; 1초마다 한 번 확인
        Sleep, 1000
    }
return

^F11::
reload
return