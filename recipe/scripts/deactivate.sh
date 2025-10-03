#!/bin/bash
# Purpose: On environment deactivation, restore LOADER_JAVA_CLASSPATH
#          to its previous value (or unset it if there was none).

if [[ -n "${LOADER_JAVA_CLASSPATH_BACKUP:-}" ]]; then
  export LOADER_JAVA_CLASSPATH="${LOADER_JAVA_CLASSPATH_BACKUP}"
else
  unset LOADER_JAVA_CLASSPATH
fi
unset LOADER_JAVA_CLASSPATH_BACKUP