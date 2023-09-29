---
tags:
  - Wichtig
  - Beispiel
Gelesen: true
Stand: 2023-09-11
Personen:
  - Alex
  - Ben
  - Chris
---

Mit Tags und Properties kann man seine Notizen Strukturieren. Diese Techniken sind vielfältiger als eine noch so gute Ordnerstruktur.

Für Tags und Properties gibt es 2 Möglichkeiten sie zu erstellen:

1. Irgendwo im Text
   \#TagName
   Property\:\:Wert

2. Im Frontmatter / Yaml

🔴 Hierzu in der ersten Zeile des Dokuments 3 - eingeben:
🔴 Tag "Wichtig", "Beispiel" erstellen
🔴 Property "Gelesen (Checkbox): ✔", "Stand (Date): Heute", "Personen (List): Alex, Ben, Chris" erstellen

# Was kann man nun mit den Tags und Properties machen

**Natürlich suchen, im Graph filtern**

Aber durch Erweiterungen von Obsidian noch **viiiieeel** mehr. z.B. ==Dataview==

🔴 Eine Tabelle von wichtigen (\#Wichtig) Seiten
```dataview
TABLE
Personen
FROM #Wichtig
```

==Dataview== kann jedoch noch viel mehr. Es können SQL ähnliche Queries erstellt werden um Tabellen zu filtern, sortieren oder Spalten zu definieren. z.B.

🔴 Tabelle von \#Wichtig mit Personenliste (Property `Personen`)

🔴 Kalender mit dem Stand (Stand, FROM \#Wichtig, WHERE Stand) -> dann Datum ändern

```dataview
CALENDAR Stand
FROM #Wichtig 
WHERE Stand
```

Erstellt man mit Markdown TODO-Listen z.B.

- [ ] Dies
- [ ] und
- [ ] das

dann kann man diese ebenfalls mit Markdown aus allen Dateien zusammenfassen.
🔴 TASK von \#Wichtig

```dataview
TASK
FROM #Wichtig 
WHERE !completed
GROUP BY file.name
```

🔴 Nur unerledigte anzeigen (WHERE !completed)

🔴 Nach Dateiname gruppieren (GROUP BY file.name)

🔴 In der ==Dataview== erledigen (==Dies== und oben ist es auch abgehakt), ==Dokumentieren== und in [[Dritte Notiz]] ist es auch erledigt und fliegt aus der ==Dataview== heraus (da nun erledigt).

# Was geht noch

[[Mehr Möglichkeiten]]

