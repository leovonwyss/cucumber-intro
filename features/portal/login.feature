# language: de-CH

Funktionalität: Einloggen
  Als Benutzer kann ich mich am Portal mit meinem Kalaidos-AD-Login anmelden

  Grundlage: Benutzer existieren
	Angenommen ich bin nicht angemeldet
	Und es gibt folgende Benutzer
	| username | passwort | name | gruppen | gesperrt |
	| didtesta | test123$ | Didacware Test A | DID_weedu_User | 0 |
	| didtestb | $1cherh8 | Didacware Test B |  | 0 |
	| didtestc | derIstWeg | Didacware Test C | DID_weedu_User  | 1 |

  Szenariogrundriss: Gültigkeit der Anmeldedaten
	Die Kombination "<username>" und "<passwort>" ist gültig: "<gültig>"
	
	Beispiele: 
	| username | passwort | gültig |
	| didtesta | test123$ | ja |
	| didtestb | $1cherh8 | ja |
	| DIDTESTA | test123$ | ja |
	| DiDteStA | test123$ | ja |
	| didtesta | TEst123$ | nein |
	| didtesta | test123$78s6dfa | nein |
	| didtesta | hallo11% | nein |

  Szenario: Erfolgreiche Anmeldung
 	Angenommen ich bin auf der weEDU Anmeldeseite
	Wenn ich mich mit dem Benutzernamen "didtesta" und dem Passwort "test123$" anmelde
	Dann erscheint die Willkommensseite mit "Didacware Test A" als eingeloggtem Benutzer
	Und ich bin angemeldet

  Szenariogrundriss: Nicht erfolgreiche Anmeldung
 	Angenommen ich bin auf der weEDU Anmeldeseite
	Wenn ich mich mit dem Benutzernamen "<user>" und dem Passwort "<passwort>" anmelde
	Dann erscheint die Anmeldeseite mit dem Fehler "Anmeldung nicht erfolgreich: <meldung>"
	Und ich bin nicht angemeldet
	
	Beispiele:
	| user | passwort | meldung |
	| didtesta | haha555* | Benutzername oder Passwort falsch. |
	| hansli11 | gugus77 | Benutzername oder Passwort falsch. |
	| didtestb | $1cherh8 | Sie haben keine Zugriffsberechtigung für dieses System. |
	| didtestc | derIstWeg | Sie haben keine Zugriffsberechtigung für dieses System. |
