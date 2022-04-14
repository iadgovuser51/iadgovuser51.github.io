#!/bin/bash

echo "Success for run"

/usr/share/tomcat/bin/catalina.sh stop
# ls -a /usr/share/tomcat/conf
# cat /usr/share/tomcat/logs/catalina.out

# sed -i "s^<Connector port=\"8443\".*/></Service>^</Service>^" /usr/share/tomcat/conf/server.xml
# sed -i "s/.*<\/Service>/<Connector port=\"8443\" label=\"HIRS\" protocol=\"HTTP\/1.1\" compression=\"on\" compressionMinSize=\"2048\" compressableMimeType=\"text\/html, text\/xml\" SSLEnabled=\"true\" maxThreads=\"150\" scheme=\"https\" secure=\"true\" clientAuth=\"want\" <SSLHostConfig>  sslProtocol=\"TLS\" protocols=\"TLSv1.2\" ciphers=\"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384, TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA256, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384\" SSLDisableCompression=\"true\" keystoreFile=\"${CA_CERT_DIR_ESCAPED}\/keyStore.jks\" keystorePass=\"$P12_PASSWORD\" truststoreFile=\"${CA_CERT_DIR_ESCAPED}\/TrustStore.jks\" truststorePass=\"password\" <\/SSLHostConfig> \/><\/Service>/" /usr/share/tomcat/conf/server.xml
# cat /usr/share/tomcat/conf/server.xml
# HIRS_ACA_PORTAL_IP=localhost
# HIRS_ACA_PORTAL_PORT=8443

# curl --connect-timeout 1 -I -k https://${HIRS_ACA_PORTAL_IP}:${HIRS_ACA_PORTAL_PORT}/HIRS_AttestationCAPortal