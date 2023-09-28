---
tags:
  - Wichtig
Status: true
---

# Alle offenen wichtigen Notizen

```dataview
TABLE
file.ctime As Erstellt,
file.mtime As Geändert
FROM #Wichtig 
WHERE Status = false
```

# Alle geschlossenen wichtigen Notizen
```dataview
TABLE
file.ctime As Erstellt,
file.mtime As Geändert
FROM #Wichtig 
WHERE Status = true
```

# Alle Transactioncodes
```dataview
TABLE WITHOUT ID
link(file.name, TC),
Description As Beschreibung
FROM #TransactionCode 
```

