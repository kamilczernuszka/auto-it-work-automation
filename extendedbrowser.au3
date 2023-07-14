#include <GUIConstantsEx.au3>  ;biblioteka GUIConstantsEx
#include <WindowsConstants.au3> ;biblioteka WindowsConstants
#include <IE.au3> ;biblioteka IE
_IEErrorHandlerRegister ()
$oIE = _IECreateEmbedded ()
GUICreate("Przegladarka rozbudowana", 640, 580, _
(@DesktopWidth - 640) / 2, (@DesktopHeight - 580) / 2, _
$WS_OVERLAPPEDWINDOW + $WS_VISIBLE)
; utworzenie okna aplikacji
$GUIActiveX = GUICtrlCreateObj($oIE, 10, 40, 600, 360)
$GUI_Button_Back = GUICtrlCreateButton("Do tylu", 10, 420, 100, 30) ; tworzenie przyciskow
$GUI_Button_print = GUICtrlCreateButton("Drukuj", 450, 420, 100, 30) ; tworzenie przyciskow
$GUI_Button_saveas = GUICtrlCreateButton("Zapisz jako", 10, 520, 100, 30) ; tworzenie przyciskow
$GUI_Button_Forward = GUICtrlCreateButton("Do przodu", 120, 420, 100, 30) ; tworzenie przyciskow
$GUI_Button_Home = GUICtrlCreateButton("Strona domowa", 230, 420, 100, 30) ; tworzenie przyciskow
$GUI_Button_Stop = GUICtrlCreateButton("Zatrzymaj", 340, 420, 100, 30) ; tworzenie przyciskow
$GUI_Button_search = GUICtrlCreateButton("Przejdz do strony", 450, 470, 100, 30) ; tworzenie przyciskow
$Adres = GUICtrlCreateInput("", 40, 475, 400, 20) ;tworzenie napisu
GUISetState() ;Pokazanie okna aplikacji (GUI)
_IENavigate ($oIE, "http://www.google.pl")
; Petla oczekujaca na akcje
While 1
$msg = GUIGetMsg()
Select
Case $msg = $GUI_EVENT_CLOSE ; wybranie krzyzyka zamykajacego okno
ExitLoop
Case $msg = $GUI_Button_search ; wybranie przycisku przejdz do strony
_IENavigate($oIE, GUICtrlRead($Adres))
Case $msg = $GUI_Button_print ;wybranie przycisku drukuj
_IEAction($oIE, "print")
Case $msg = $GUI_Button_saveas ;wybranie przycisku zapisz jako
_IEAction($IE, "saveas")
Case $msg = $GUI_Button_Home ; wybranie przycisku home
_IENavigate ($oIE, "http://www.autoitscript.com")
Case $msg = $GUI_Button_Back ; wybranie przycisku wstecz
_IEAction ($oIE, "back")
Case $msg = $GUI_Button_Forward ; wybranie przycisku w przód
_IEAction ($oIE, "forward")
Case $msg = $GUI_Button_Stop ; wybranie przycisku stop
_IEAction ($oIE, "stop")

EndSelect
WEnd
GUIDelete()
Exit