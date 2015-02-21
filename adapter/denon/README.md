Denon adapter
======
* entwickelt auf Basis des Onkyo-Adapters von Eisbaeeer (vielen dank daf�r!)
* getestet mit Denon AVR-X3000

## Dokumentation

* Dieser Adapter erm�glicht die Anbindung eines Denon Reveivers an ccu.io
* Es werden Variable in der ccu.io erstellt.
* Die Variable Denon_Command kann als Sendevariable zum Denon verwendet werden. Wird dort
  z.B. ein "MUON" gesetzt, wird der Befehl "Mute On" an den Denon 
  gesendet. Anschlie�end wird die Variable wieder geleert. Eine �bersicht der 
  m�glichen Befehle gibt es in der offiziellen Dokumentation von Denon 
  http://assets.denoneu.com/DocumentMaster/DE/AVRX3000_PROTOCOL(10.2.0)_V01.pdf
  Zur Integration in DashUI bitte auch die Hilfestellungen im Forum zum onkyo-Adapter beachten. 
  Das Vorgehen ist absolut identisch.
* Die Variable Denon_CommandSender zeigt an, welches Ger�t zuletzt einen Befehl abgesetzt hat.
* Die Variable Denon_Conect_Status zeigt den Verbindungsstatus an. Sollte die Verbindung einmal verloren gehen, dann versucht der Adapter sie wieder aufzubauen.
  
* Konfiguration �ber settings.js unter adapter:
  enabled:  		true|false
  IP:       		xxx.xxx.xxx.xxx (Onkyo Reveiver)
  Port:     		xxxxx  (Denon Port)
  FirstId:  		xxxxxx  (Erste ID, �ber 100000 verwenden!) 
  Raum Mainzone:	Id des Raumes, zu dem die Mainzone-Denon-Werte erg�nzt werden sollen; es kann auch der Name eines neuen Raumes angelegt werden oder das Feld bleibt leer
  Raum Zone2:		Id des Raumes, zu dem die Zone2-Denon-Werte erg�nzt werden sollen; es kann auch der Name eines neuen Raumes angelegt werden oder das Feld bleibt leer
  Gewerke:			Alle Denon-Werte k�nnen zu einem bestehendem Gewerk (Id eingeben) oder zu einem neuen Gewerk hinzugef�gt werden (Name eingeben) oder das Feld bleibt leer
  Favoriten:		Alle Denon-Werte k�nnen zu einem bestehendem Favoriten (Id eingeben) oder zu einem neuen Favoriten hinzugef�gt werden (Name eingeben) oder das Feld bleibt leer
  Debug: 			true|false (bei true werden die empfangenen Befehle des Denons in die ccu.io.log geschrieben

## Todo/Roadmap

* mehr Befehle integrieren


## Changelog
### 0.3.0
* Implementierung einiger weiterer Befehle. Zum Beispiel ist es nun m�glich �ber Soundmode zwischen Cinema, Music und Game zu wechseln.
### 0.2.0
* Komplette �berarbeitung: Alle Anpassungen und Verbesserungen vom Onkyo-Adapter bis zur CCU.IO-Version 1.0.42 wurden �bernommen.
  -Das Senden �ber den Adapter selbst ist nun m�glich und es muss nicht die Variable Denon_Command benutzt werden. F�r die Steuerung �ber die Homematic muss in der Homematic selbst keine Logik mehr abgebildet werden.
  -Devices und Channel erg�nzt, um den Adapter in der ScriptGUI verwenden zu k�nnen. ACHTUNG: Wurde der Onkyo bisher �ber die Homematic gesteuert, dann muss die Variable "Denon_Command" in der Homematic angepasst werden.
* Devices und Channels sind R�umen, Gewerken oder Favoriten zuordbar. Damit ist die Benutzung direkt in Yahui m�glich.
* Sleeptimer f�r Mainzone und Zone2 erg�nzt
* Nach dem Update sollte die adapter-denon.json im datastore umbenannt/gel�scht werden.

### 0.1.1
* Status �ber Variable sichtbar

### 0.1.0
* First launch

## Lizenz

Copyright (c) 2014 BlueEssi
Lizenz: [CC BY-NC 3.0](http://creativecommons.org/licenses/by-nc/3.0/de/)

Sie d�rfen das Werk bzw. den Inhalt vervielf�ltigen, verbreiten und �ffentlich zug�nglich machen,
Abwandlungen und Bearbeitungen des Werkes bzw. Inhaltes anfertigen zu den folgenden Bedingungen:

  * **Namensnennung** - Sie m�ssen den Namen des Autors/Rechteinhabers in der von ihm festgelegten Weise nennen.
  * **Keine kommerzielle Nutzung** - Dieses Werk bzw. dieser Inhalt darf nicht f�r kommerzielle Zwecke verwendet werden.
  * Wobei gilt: Verzichtserkl�rung - Jede der vorgenannten Bedingungen kann aufgehoben werden, sofern Sie die ausdr�ckliche Einwilligung des Rechteinhabers dazu erhalten.
  * Die Ver�ffentlichung dieser Software erfolgt in der Hoffnung, da� sie Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE, sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT F�R EINEN BESTIMMTEN ZWECK. Die Nutzung dieser Software erfolgt auf eigenes Risiko!

=====

* This project needs ccu.io
* This project allow connection to Denon network enabled receiver
