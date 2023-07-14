#include <GUIConstantsEx.au3>  ;biblioteka GUIConstantsEx
#include <WindowsConstants.au3> ;biblioteka WindowsConstants
#include <IE.au3> ;biblioteka IE
$oIE = _IECreateEmbedded() ; tworzy obiekt przedstawiajacy przegladarke
GUICreate("Przegladarka", 1200, 800)
$GUI_1 = GUICtrlCreateObj($oIE, 50, 10, 1000, 600) ; tworzenie GUI obiektu o wymiarach 1000x600
$Adres = GUICtrlCreateInput("", 40, 700, 800, 20) ; tworzenie Inputa o wymiarach 800x20, do którego mozemy wpisywac dane
$GUI_Button_przejdz = GUICtrlCreateButton("Idz do wskazanego adresu", 40, 650, 150, 30) ; tworzenie przycisku 150x30
GUISetState()           ;otworz okno
_IENavigate($oIE, "www.google.pl")  ; nawigacja na strone www.google.pl
While 1
$msg = GUIGetMsg() ;dzieki temu dowiadujemy sie czy zostal przycisniety przycisk
Select
Case $msg = $GUI_Button_przejdz
if GUICtrlRead($Adres) == "www.onet.pl" Then ExitLoop ; jezeli zostalo wpisane www.onet.pl to zamknij okno
_IENavigate($oIE, GUICtrlRead($Adres))
Case $msg = $GUI_EVENT_CLOSE ;jezeli nacisniemy przycisk zamkniecia "X" to zamknij program
ExitLoop
EndSelect
WEnd
GUIDelete()
Exit