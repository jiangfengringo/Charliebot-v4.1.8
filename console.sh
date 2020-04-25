#!/bin/sh
#
# ==========================================================================
# Alicebot Program D
# Copyright (C) 1995-2001, A.L.I.C.E. AI Foundation
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, 
# USA.
# ==========================================================================

ALICE_HOME=.
SERVLET_LIB=lib/servlet.jar
ALICE_LIB=lib/aliceserver.jar
JS_LIB=lib/js.jar

# Set SQL_LIB to the location of your database driver.
SQL_LIB=lib/mysql_comp.jar

# These are for Jetty; you will want to change these if you are using a different http server.
HTTP_SERVER_LIBS=lib/org.mortbay.jetty.jar:lib/javax.xml.jaxp.jar:lib/org.apache.crimson.jar

PROGRAMD_CLASSPATH=$SERVLET_LIB:$ALICE_LIB:$JS_LIB:$SQL_LIB:$HTTP_SERVER_LIBS
java -classpath $PROGRAMD_CLASSPATH -Xms64m -Xmx128m org.alicebot.gui.SimpleConsole $1 &

