#include <GUIConstantsEx.au3>  ;biblioteka GUIConstantsEx
#include <WindowsConstants.au3> ;biblioteka WindowsConstants
#include <IE.au3> ;biblioteka IE
_IEErrorHandlerRegister ()
$oIE = _IECreateEmbedded ()
GUICreate("Przegladarka z kopiowaniem", 640, 580, _
(@DesktopWidth - 640) / 2, (@DesktopHeight - 580) / 2, _
$WS_OVERLAPPEDWINDOW + $WS_VISIBLE)
; utworzenie okna aplikacji
$numer=0
$GUIActiveX = GUICtrlCreateObj($oIE, 10, 40, 600, 360)
$GUI_Button_Back = GUICtrlCreateButton("Do tylu", 10, 420, 100, 30)
$GUI_Button_txtSave = GUICtrlCreateButton("Zapisz do txt", 150, 520, 100, 30)
$GUI_Button_print = GUICtrlCreateButton("Drukuj", 450, 420, 100, 30)
$GUI_Button_saveas = GUICtrlCreateButton("Zapisz jako", 10, 520, 100, 30)
$GUI_Button_Forward = GUICtrlCreateButton("Do przodu", 120, 420, 100, 30)
$GUI_Button_Home = GUICtrlCreateButton("Strona domowa", 230, 420, 100, 30)
$GUI_Button_Stop = GUICtrlCreateButton("Zatrzymaj", 340, 420, 100, 30)
$GUI_Button_search = GUICtrlCreateButton("Przejdz do strony", 450, 470, 100, 30)
$Adres = GUICtrlCreateInput("", 40, 475, 400, 20)
GUISetState() ;Pokazanie okna aplikacji (GUI)
_IENavigate ($oIE, "http://www.google.pl")
; Petla oczekujaca na akcje
While 1
$msg = GUIGetMsg()
Select
Case $msg = $GUI_EVENT_CLOSE ; wybranie krzyzyka zamykajacego okno
ExitLoop
Case $msg = $GUI_Button_search
_IENavigate($oIE, GUICtrlRead($Adres)) ;wyszukanie strony na podstawie wpisanego adresu
Case $msg = $GUI_Button_print
_IEAction($oIE, "print") ;akcja wydruku
Case $msg = $GUI_Button_saveas
_IEAction($oIE, "saveas") ;akcja zapisu jako
Case $msg = $GUI_Button_Home
_IENavigate ($oIE, "http://www.autoitscript.com") ;strona domowa
Case $msg = $GUI_Button_Back
_IEAction ($oIE, "back") ;cofnij strone
Case $msg = $GUI_Button_Forward
_IEAction ($oIE, "forward") ; przewin do przodu
Case $msg = $GUI_Button_Stop
_IEAction ($oIE, "stop") ;zatrzymaj strone
Case $msg = $GUI_Button_txtSave
Send("^c")	;wysyla komende nacisniecia ctrl + c
Send ("#r")	;uruchamia okienko z START -> Uruchom
Send ("notepad.exe {Enter}") ;otworz notepad.exe i kliknij Enter
WinWaitActive ("[CLASS:Notepad]") ;czekaj na uruchomienie notatnika
Send("Ten fragment zostal pobrany ze strony: ") ;wpisz tekst
Send(GUICtrlRead($Adres)) ;odczytaj adres strony
Send(", {F5}{Enter}{Enter}")  ;wpisz date godzine i zrob dwa entery
Send("^v")	; wysyla komende nacisniecia  ctrl + v (wklej)
Send("^s")	; wysyla komende nacisniecia ctrl + s (zapis)
Send("tekst_")	;wpisanie w polu nazwy zapisanego pliku tekst_
$numer=$numer+1	;inkrementacja
Send($numer) ;wpisanie numeru pliku
Send("{Enter}")	;wyslij klikniecie entera
EndSelect
WEnd
GUIDelete()
Exit