#!/bin/bash

BRIGHTNESSPATH="/sys/class/backlight/intel_backlight"
MAXBRIGHTNESS=$(cat $BRIGHTNESSPATH/max_brightness)
BRIGHTNESS=$(cat $BRIGHTNESSPATH/brightness)

# ensure brightness is in the range 0 .. max_brightness
if [ "$BRIGHTNESS" -gt "$MAXBRIGHTNESS" ]; then
  BRIGHTNESS=$MAXBRIGHTNESS
elif [ "$BRIGHTNESS" -lt 0 ]; then
  BRIGHTNESS=0
fi

# increment/decrement the brightness by the given percentage
MAXBRIGHTNESS_PERCENT=$(expr $MAXBRIGHTNESS / 100)
INCREMENT_PERCENT=2
INCREMENT=$(expr $INCREMENT_PERCENT \* $MAXBRIGHTNESS_PERCENT)

# handle the "up" and "down" brightness events
if [ "x$1" = "xdown" ]; then
   NEWBRIGHTNESS=$(( $BRIGHTNESS - $INCREMENT ))
   if [ "$NEWBRIGHTNESS" -ge $INCREMENT ]; then
      echo $NEWBRIGHTNESS > $BRIGHTNESSPATH/brightness
   else
      echo 0 > $BRIGHTNESSPATH/brightness
   fi
elif [ "x$1" = "xup" ]; then
   NEWBRIGHTNESS=$(( $BRIGHTNESS + $INCREMENT ))
   if [ "$NEWBRIGHTNESS" -le "$MAXBRIGHTNESS" ]; then
      echo $NEWBRIGHTNESS > $BRIGHTNESSPATH/brightness
   else
      echo $MAXBRIGHTNESS > $BRIGHTNESSPATH/brightness
   fi
else
   echo >&2 Unknown argument $1
fi
