waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Zasady Gry"];
player createDiarySubject ["controls","Klawiszologia"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];
	player createDiaryRecord ["serverrules", 
		[
				"",
				"
				Regulamin serwera Multiplayer dost�pny na : http://arma.48h.waw.pl/viewpage.php?page_id=3<br/><br/>
				"
		]
	];
	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Menu gracza<br/>
				U: Zablokuj / Odblokuj pojazd<br/>
				F: Syrena policyjna (Policjant)<br/>
				T: Bagaznik<br/>
				Left Shift + R: Skucie kajdankami (Policjant)<br/>
				Left Shift + G: Powalenie / Og�uszenie <br/>
				Left Windows: G�owny klawisz interakcji : branie pieniedzy, podnoszenie przedmiotow / pieniedzy, zbieranie, interakcja z pojazdami (naprawa, itp.) , a dla Policjant�w interakcja z Cywilami. Mo�e byc przypisany do jednego klawisza np. H za pomocca menu ustawien gry.<br/>
				Left Shift + L: Aktywacja koguta (Policjant).<br/>
				Left Shift + H: Schowanie broni do kabury<br/>
				"
		]
	];