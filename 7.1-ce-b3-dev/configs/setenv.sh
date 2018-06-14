CATALINA_OPTS="$CATALINA_OPTS -server -Dfile.encoding=UTF8 -Xms1g -Xmx4g -XX:NewSize=200m -XX:MaxNewSize=200m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:SurvivorRatio=20 -XX:ParallelGCThreads=2 -Djava.net.preferIPv4Stack=true"
# Remote JMX
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=$JMXREMOTE_PORT -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
# Portal Developer Properties
CATALINA_OPTS="$CATALINA_OPTS -Dexternal-properties=portal-developer.properties"
# Docker specific properties
CATALINA_OPTS="$CATALINA_OPTS -Dexternal-properties=portal-docker.properties"