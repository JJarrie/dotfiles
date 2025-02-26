#!/usr/bin/env bash

VPN_ENTRY="SmileWgGalaxy"
GREP_VPN_WORD="Smile"

ACTIVE_CONNECTION=$(nmcli --mode tabular --terse connection show --active | grep $GREP_VPN_WORD | cut -d ':' -f1) || true

if [[ "$ACTIVE_CONNECTION" == "$VPN_ENTRY" ]]; then
  echo "UP"
fi

if [[ "$ACTIVE_CONNECTION" != "$VPN_ENTRY" ]]; then
  echo "DN"
fi

vpn_toggle_connection() {
  # connects or disconnects vpn

  if [[ "$ACTIVE_CONNECTION" == "$VPN_ENTRY" ]]; then
    nmcli c d $VPN_ENTRY
  fi

  if [[ "$ACTIVE_CONNECTION" != "$VPN_ENTRY" ]]; then
    nmcli c u $VPN_ENTRY
  fi

}

# cases for polybar click events
case "$1" in
-t | --toggle-connection) vpn_toggle_connection ;;
esac
