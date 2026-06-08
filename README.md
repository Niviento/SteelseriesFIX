# SteelseriesFIX

Ein kleines AutoHotkey-Fix-Script für SteelSeries-Tastaturen, bei denen das deutsche Layout in SteelSeries GG / Engine zu falscher Tastenbelegung oder falscher Beleuchtung führen kann.

## Was ist das?

Bei manchen SteelSeries-Tastaturen kann es passieren, dass das deutsche Layout in SteelSeries GG / Engine Probleme verursacht.
Bestimmte ISO-DE-Tasten wie `#`, `<`, `>`, `Ä`, `Ö`, `Ü` oder andere Sonderzeichen können dann falsch erkannt, falsch beleuchtet oder falsch zugeordnet werden.

Dieses Repository enthält ein AutoHotkey-v2-Script, das ein englisches Tastaturlayout wieder auf ein deutsches ISO-DE-Layout ummappt.

Die Idee ist einfach:

```txt
SteelSeries GG Layout: Englisch / UK
Windows Tastaturlayout: Englisch
AutoHotkey Script: mappt die Eingaben zurück auf Deutsch
```

So kann man das fehlerhafte deutsche Layout in SteelSeries GG umgehen und trotzdem normal auf Deutsch tippen.

## Warum?

Das Problem scheint aufzutreten, wenn SteelSeries GG das deutsche Tastaturprofil anwendet.
Statt das fehlerhafte deutsche Profil in GG zu nutzen, bleibt die Tastatur intern auf Englisch / UK.
Das AutoHotkey-Script übernimmt danach die deutsche Tastenbelegung.

Das ist kein offizieller SteelSeries-Fix, sondern ein Workaround.

## Voraussetzungen

* Windows
* AutoHotkey v2
* Eine SteelSeries-Tastatur mit deutschem ISO-DE-Layout
* SteelSeries GG / Engine

AutoHotkey v2 gibt es hier:

```txt
https://www.autohotkey.com/
```

## Einrichtung

1. AutoHotkey v2 installieren.
2. In SteelSeries GG das Tastaturlayout auf Englisch oder UK stellen.
3. In Windows das Tastaturlayout auf Englisch stellen.
4. Das `.ahk`-Script aus diesem Repository herunterladen.
5. Das Script per Doppelklick starten.
6. Die Tasten in Notepad, Editor oder einem anderen Textfeld testen.

## Empfohlener Zustand

```txt
SteelSeries GG: Englisch / UK
Windows: Englisches Tastaturlayout
Script: läuft
```

Das Script sollte nicht zusammen mit dem normalen deutschen Windows-Layout benutzt werden, da sonst manche Tasten doppelt umgewandelt werden können.

## Test-Tasten

Nach dem Start des Scripts sollten diese Zeichen getestet werden:

```txt
z y ä ö ü ß
Z Y Ä Ö Ü
# ' < > | @ € µ
1 ! 2 " 3 § 7 / { 8 ( [ 9 ) ] 0 = } ß ? \
+ * ~ . : , ; - _
```

## Script beenden

Das Script kann mit folgender Tastenkombination beendet werden:

```txt
Strg + Alt + F12
```

## Hinweise

Das ist ein Workaround und kein Firmware-Patch.

Das Script verändert nur die Tastatureingaben, solange es läuft.
Es verändert keine Firmware, keine SteelSeries-GG-Dateien und keine Windows-Systemdateien.

Falls SteelSeries irgendwann ein Firmware- oder GG-Update veröffentlicht, das den deutschen Layout-Bug behebt, wird dieses Script möglicherweise nicht mehr benötigt.

## Sicherheit

AutoHotkey-Scripte können Tastatureingaben lesen und umleiten.
Führe nur Scripte aus, denen du vertraust oder deren Inhalt du verstehst.

Dieses Script ist nur für lokales Tastatur-Remapping gedacht.

## Haftungsausschluss

Dieses Projekt steht in keiner Verbindung zu SteelSeries.

SteelSeries, Apex, GG und Engine sind Marken der jeweiligen Rechteinhaber.

Nutzung auf eigene Verantwortung.
