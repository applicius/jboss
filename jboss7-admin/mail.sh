#! /bin/sh

CONFIG="$1"
HOST="$2"
PORT="$3"
USER="$4"
PASS="$5"
JNDI="$6"
SSL="false"

if [ $# -ge 7 ]; then
  if [ "$7" = "true" ]; then
    SSL="true"
  else
    SSL="false"
  fi
fi

perl -pe "s|<outbound-socket-binding name=\"mail-smtp\">|<outbound-socket-binding name=\"ugc-smtp\">\r\n            <remote-destination host=\"$HOST\" port=\"$PORT\"/>\r\n        </outbound-socket-binding>\r\n        <outbound-socket-binding name=\"mail-smtp\">|;s|</mail-session>|</mail-session>\r\n            <mail-session jndi-name=\"$JNDI\">\r\n                <smtp-server ssl=\"$SSL\" outbound-socket-binding-ref=\"ugc-smtp\">\r\n                  <login name=\"$USER\" password=\"$PASS\"/>\r\n                </smtp-server>\r\n            </mail-session>\r\n|" < "$CONFIG" > "$CONFIG.mail" && mv "$CONFIG.mail" "$CONFIG"
