#!/bin/sh
source env.sh

export ALT_BOOTDIR=`/usr/libexec/java_home -v 1.6`
make sanity
unset JAVA_HOME

make LANG=C -Wno-parentheses-equality  DISABLE_HOTSPOT_OS_VERSION_CHECK=ok debug_build 
