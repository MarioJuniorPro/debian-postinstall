#!/bin/bash
xset q | awk '/LED/{ if ($10 ~ "00000000") print "led"; else print "-led" }' | xargs xset