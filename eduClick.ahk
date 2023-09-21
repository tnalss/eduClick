
CoordMode, pixel,screen
CoordMode, mouse,Screen

    ; 확인할 픽셀 좌표 지정
    PixelX := 3137 ; X 좌표
    PixelY := 716 ; Y 좌표

    ; 확인할 색상 지정합니다. 
    TargetColor := "0x5AC703" ; 여기에 원하는 색상을 지정하세요.


    Loop
    {
        ; 픽셀 가져옴
        PixelGetColor, CurrentColor, %PixelX%, %PixelY%

        ;msgbox, %CurrentColor%

        ; 색상일치 확인
        if (CurrentColor = TargetColor)
        {
            ; 색상이 일치하면 클릭
            MouseClick, left, %PixelX%, %PixelY%
        }

        ; 1초마다 한 번 확인
        Sleep, 1000
    }
return

F12::
ExitApp
return