#!/bin/sh

exec 2>&1
set -e

# Exporting the java path
export  JAVA=/usr/lib/jvm/java-8-oracle

#  Starting the java process
exec    java
