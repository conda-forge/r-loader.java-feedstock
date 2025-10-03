@echo off
REM Purpose: On environment activation, set a default LOADER_JAVA_CLASSPATH (do NOT override user value).

REM # Remember previous value to restore it on deactivate
IF DEFINED LOADER_JAVA_CLASSPATH (
  set "LOADER_JAVA_CLASSPATH_BACKUP=%LOADER_JAVA_CLASSPATH%"
) ELSE (
  set "LOADER_JAVA_CLASSPATH_BACKUP="
)

REM Only set default if user did not set it
IF NOT DEFINED LOADER_JAVA_CLASSPATH (
  set "JAR_PATH=%CONDA_PREFIX%\lib\java\toolsUI.jar"
  IF EXIST "%JAR_PATH%" (
    set "LOADER_JAVA_CLASSPATH=%JAR_PATH%"
  ) 
)
