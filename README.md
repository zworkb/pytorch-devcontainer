# Basic PyTorch project containerized

## installation

Prinzipiell gibts 4 Betriebsmodi fuer vscode:

- local/local: das ist der normale Modus, wie wir ihn kennen
- local/container: vscode in einem lokalen Docker Container
- ssh/"local": vscode per ssh auf einem Server, ssh-key muss funktionieren, sodass man sich ohne pwd einloggen kann. Man kann dann auf dem Server Files und Directories oeffnen, wie man es lokal gewohnt ist.
- ssh/container: analog kann man auf dem Server einen Container oeffnen/erstellen, wie man es lokal auch tut.

### local container

- auf >< symbol klicken und "reopen in container" bzw "rebuild container" anklicken

### remote container

- darauf achten, dass man sich ohne passwort auf den remote server einloggen kann
- auf >< symbol klicken und "connect to host..." waehlen
- auf host das gewuenschte Projekt oeffnen
- auf >< klicken und "reopen in container"

mit Klick auf >< kann man mit "reopen in container" und "reopen in local filesystem" zwischen Container und "Normalbetrieb" wechseln

