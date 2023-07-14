#include <GUIConstantsEx.au3> ;dodanie bibliotek
#include <WindowsConstants.au3> ; dodanie bibliotek
GUICreate("Kalkulator", 600, 400)
$dodaj=GUICtrlCreateButton("+", 520, 50, 30, 30) ; tworzenie przyciskow
$odejmij=GUICtrlCreateButton("-", 520, 80, 30, 30) ; tworzenie przyciskow
$pomnoz=GUICtrlCreateButton("*", 520, 110, 30, 30) ; tworzenie przyciskow
$podziel=GUICtrlCreateButton("/", 520, 140, 30, 30) ; tworzenie przyciskow
$napis1=GUICtrlCreateInput("Podaj pierwsza liczbe:", 120, 70, 110, 18) ;tworzenie napisu
$napis2=GUICtrlCreateInput("Podaj druga liczbe:", 120, 130, 110, 18) ;tworzenie napisu
$napis3=GUICtrlCreateInput("Wynik:", 355, 100, 40, 20) ;tworzenie napisu
$liczba1=GUICtrlCreateInput("", 320, 70, 100, 18) ;tworzenie inputu, ktory bedzie przechowywal 1 liczbe
$liczba2=GUICtrlCreateInput("", 320, 130, 100, 18) ;tworzenie inputu , ktory bedzie przechowywal 2 liczbe
$to=GUICtrlCreateLabel("", 400, 102, 100, 20) ;miejsce wyswietlania wyniku
GUISetState() ;otworz okno
While 1
$msg=GUIGetMsg()
Select
case $msg=$dodaj
$pierwsza=GUICtrlRead($liczba1) ;pobierz liczba1
$druga=GUICtrlRead($liczba2) ;pobierz liczba2
$wynik=$pierwsza+$druga ;wynik to suma pobranej pierwszej i drugiej liczby
GUICtrlSetData($to, $wynik) ; przypisanie wyniku do Labela $to
case $msg=$odejmij
$pierwsza=GUICtrlRead($liczba1) ;pobierz liczba1
$druga=GUICtrlRead($liczba2) ;pobierz liczba2
$wynik=$pierwsza-$druga ;wynik to rónica pobranej pierwszej i drugiej liczby
GUICtrlSetData($to, $wynik) ; przypisanie wyniku do Labela $to
case $msg=$pomnoz
$pierwsza=GUICtrlRead($liczba1) ;pobierz liczba1
$druga=GUICtrlRead($liczba2) ;pobierz liczba2
$wynik=$pierwsza*$druga ;wynik to mnozenie pobranej pierwszej i drugiej liczby
GUICtrlSetData($to, $wynik)
case $msg=$podziel
$pierwsza=GUICtrlRead($liczba1) ;pobierz liczba1
$druga=GUICtrlRead($liczba2) ;pobierz liczba2
$wynik=$pierwsza/$druga ;wynik to dzielenie pobranej pierwszej i drugiej liczby
GUICtrlSetData($to, $wynik) ; przypisanie wyniku do Labela $to
case $msg=$GUI_EVENT_CLOSE
			ExitLoop
	EndSelect
WEnd