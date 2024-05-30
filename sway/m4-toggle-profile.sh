#!/bin/bash

# Helpers for Momentum 4 headset.
# It cannot have high fidelity sound and mic activated 
# at the same time,
# also: FUCK YOU, SENNHEISER.

# Helpers for Momentum 4 headset.
# It cannot have high fidelity sound and mic activated 
# at the same time,
# so use these helpers to jump between profiles.
# also: FUCK YOU, SENNHEISER.
function m4-current () {
  pactl list cards | awk -v RS='' '/bluez/' | awk -F': ' '/Active Profile/ { print $2 }'
}

function m4-mic-on () {
  pactl set-card-profile bluez_card.80_C3_BA_49_EF_63 headset-head-unit-msbc
}

function m4-mic-off () {
  pactl set-card-profile bluez_card.80_C3_BA_49_EF_63 a2dp-sink-aptx
}

function m4-toggle-profile () {
  p=$(m4-current)
  if [ $p = "a2dp-sink-aptx" ]; then
    m4-mic-on
  else
    m4-mic-off
  fi
}

m4-toggle-profile
