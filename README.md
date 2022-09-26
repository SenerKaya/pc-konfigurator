# Full-Stack Application PC-Konfigurator

Der PC-Konfigurator ist eine Anwendung, die es nutzern erlauben soll einen Computer entsprechend ihren Nutzungsabsichten zu auszuwählen und ggf. auch selbst zu zusammenzustellen. Für diese Full-Stack Application nutzen wir **Vue.js** frontend-seitig sowie **Node.js & Express** als Backend. Anfallende Daten speichern wir in einer **MySQL Datebank**.

Dabei existieren zwei separate Projekte, eins jeweils für das Frontend und eins für das Backend. Das bedeutet, dass wir ebenfalls zwei verschiedene **package.json** Dateien haben. Diese enthalten die Metadaten über das jeweilige Projekt.

# Das Projekt starten

Da beim lokalen Testen der Applikation sowohl Backend als auch Frontend gleichzeitig aktiv sein müssen, empfiehlt es sich zwei verschiedene Terminals zu öffnen. In jedem der jeweiligen Projekte muss beim erstmaligen Aufrufen der Applikation auf einem lokalen Gerät, im Ordner, in welchem sich die **package.json**-Datei befindet, 

    npm install

ausgeführt werden, um alle Dependencies (das Projekt verwendende Javascript-libraries) zu installieren. Voraussetzung dafür ist eine aktuelle Version von Node.js selbst. Das Projekt wurde mit 14.8.0 erstellt.

Um den Backend-Server zu starten:

    node index

Die Frontend-Applikation starten:

    npm run serve

Die Webapplikation wird zusätzlich auf Heroku online veröffentlicht. 

Die Links dazu befinden sich unten. 

https://backend-pc-konfigurator.herokuapp.com/

https://frontend-pc-konfigurator.herokuapp.com/