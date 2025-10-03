#!/bin/bash
# Purpose: On environment activation, set a default 
#          LOADER_JAVA_CLASSPATH (do NOT override user value).

# Remember previous value to restore it on deactivate
export LOADER_JAVA_CLASSPATH_BACKUP="${LOADER_JAVA_CLASSPATH:-}"

# Only set default if user did not set it
if [[ -z "${LOADER_JAVA_CLASSPATH:-}" ]]; then
  JAR_PATH="${CONDA_PREFIX}/lib/java/toolsUI.jar"
  if [[ -f "${JAR_PATH}" ]]; then
    export LOADER_JAVA_CLASSPATH="${JAR_PATH}"
  fi
fi
