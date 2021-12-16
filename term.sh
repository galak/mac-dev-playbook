#!/bin/bash
PLIST="$HOME/Library/Preferences/com.apple.Terminal.plist"

/usr/libexec/PlistBuddy -c "Add 'Window Settings':Basic:shellExitAction integer 0" $PLIST
/usr/libexec/PlistBuddy -c "Set 'Window Settings':Basic:shellExitAction 0" $PLIST

/usr/libexec/PlistBuddy -c "Add 'Window Settings':Basic:UseBoldFonts integer 1" $PLIST
/usr/libexec/PlistBuddy -c "Set 'Window Settings':Basic:UseBoldFonts 1" $PLIST
killall Terminal
