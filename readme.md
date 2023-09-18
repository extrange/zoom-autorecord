# Zoom Autorecord in Docker

Based off [kastldratza/zoomrec](https://github.com/kastldratza/zoomrec).

VNC password is `zoomrec`.

The error `Failed to connect to session manager: Failed to connect to the session manager: SESSION_MANAGER environment variable not defined` means `meetings.csv` wasn't properly formatted.

Modifications:

- support viewing over noVNC at [localhost:6080](http://localhost:6080)

Todo:

- better validation of `meetings.csv` file