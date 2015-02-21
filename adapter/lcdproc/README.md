Lcdproc adapter
======

## Changelog

### 0.1
* initial version

## Documentation

* this adapter allow connection to lcdproc-server via TCP
* the adapter uses the display who is connected to the lcdproc-server
* the server can be installed on the same machine as ccu.io

* structure
- firstId    = DEVICE
- firstID +1 = CHANNEL
- firstID +2 = Row 1
- firstID +3 = Row 2
- firstID +4 = Row 3
- firstID +5 = Row 4

* used 20x4 character display with i2c module (ebay < 10�)
                                            
## Todo/Roadmap
* Requests to Eisbaeeer@gmail.com


## Lizenz

Copyright (c) 2014 Eisbaeeer [http://www.weimars.net](http://www.weimars.net)

Lizenz: [CC BY-NC 3.0](http://creativecommons.org/licenses/by-nc/3.0/de/)

Sie d�rfen das Werk bzw. den Inhalt vervielf�ltigen, verbreiten und �ffentlich zug�nglich machen,
Abwandlungen und Bearbeitungen des Werkes bzw. Inhaltes anfertigen zu den folgenden Bedingungen:

  * **Namensnennung** - Sie m�ssen den Namen des Autors/Rechteinhabers in der von ihm festgelegten Weise nennen.
  * **Keine kommerzielle Nutzung** - Dieses Werk bzw. dieser Inhalt darf nicht f�r kommerzielle Zwecke verwendet werden.

Wobei gilt:
Verzichtserkl�rung - Jede der vorgenannten Bedingungen kann aufgehoben werden, sofern Sie die ausdr�ckliche Einwilligung des Rechteinhabers dazu erhalten.
Die Ver�ffentlichung dieser Software erfolgt in der Hoffnung, da� sie Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE, sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT F�R EINEN BESTIMMTEN ZWECK. Die Nutzung dieser Software erfolgt auf eigenes Risiko!
=====
This project needs ccu.io
This project allow connection to lcdproc
