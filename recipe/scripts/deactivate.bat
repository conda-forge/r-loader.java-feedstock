@echo off
REM Purpose: On environment deactivation, restore LOADER_JAVA_CLASSPATH to its previous value (or unset it if there was none).

IF DEFINED LOADER_JAVA_CLASSPATH_BACKUP (
  set "LOADER_JAVA_CLASSPATH=%LOADER_JAVA_CLASSPATH_BACKUP%"
) ELSE (
  set LOADER_JAVA_CLASSPATH=
)
set LOADER_JAVA_CLASSPATH_BACKUP=