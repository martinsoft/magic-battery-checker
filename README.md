# magic-battery-checker
Check your Magic Keyboard / Mouse battery levels from macOS command line, and trigger notifications on a schedule if battery levels are low.

## Background 
Ever notice that macOS seems to warn you that your Magic Mouse or Magic Keyboard battery is low, about 2 minutes before it runs out?

This can be really inconvenient! Especially if you're on an iMac you don't have a separate keyboard or mouse to fall back on.

So, `magic-battery-checker` aims to help avoid unplanned situations like this: 
<<image>>
  
Combining a command line tool with a piece of AppleScript that runs on a schedule, we can check the battery level and give an earlier warning that the battery is low, at a time that's a bit more convenient!  (I have mine set up to check the battery level at the end of the day, so I can recharge overnight when I'm not using my Mac 😉).

With tool, we can get a reminder to charge, if needed, at a time that suits us:
<<image>>
  

## Notes
This repo includes two utilities:

1. A command line tool `btstat` which reports the battery level of a Magic Mouse and/or Magic Keyboard currently connected to your Mac.
2. A LaunchAgent service which can periodically check the battery level and trigger a notifictaion if the battery is low.

Using these tools, it's possible to trigger a battery check and a battery warning if necessary, at a time that we choose.


## Installation

1. Copy `btstat` to a suitable location on your Mac. I have mine in `~/Library/Scripts`, but you can put it wherever you like.
2. Set up the AppleScript - this performs the battery checks and triggers a notification when needed:
    1. Copy `Service/MouseAndKeyboardBatteryChecks.scpt` to a suitable location on your Mac. Again I have mine in `~/Library/Scripts` but you can put it wherever you like.
    2. Open `MouseAndKeyboardBatteryChecks.scpt` using Script Editor, and update the following:
        * `btStatLocation` should match wherever you installed the `btstat` script
        * `warningThreshold` determines when a 'battery low' notification should be triggered. e.g. '30' means a notification will fire if the keyboard or mouse battery falls below 30%. 
3. Set up the background service, which runs the battery check on a schedule:
    1. Open `net.martinsoft.batterychecker.plist` using a text editor. This defines a service which will run `MouseAndKeyboardBatteryChecks.scpt`at a time that you choose.
    2. Update the path to `MouseAndKeyboardBatteryChecks.scpt` on line 12 to match wherever you installed the appliescript in step 2 above.
    3. Update the `integer` values for `Hour` and `Minute` to set the time you would like the battery levels to be checked. (It defaults to 5:30pm).
    4. Copy `net.martinsoft.batterychecker.plist` into `~/Library/LaunchAgents`
    5. To start the service either:
        * 'launchctl load ~/Library/LaunchAgents/net.martinsoft.batterychecker.plist`
        * OR log out and log in again. 
 
To check that the service is running: 
`launchctl list | grep batterychecker`
You should see `net.martinsoft.batterychecker` listed.


That's it!

The next time your keyboard or mouse drops below the threshold you set, you should get a notification at the time you set.
<<image>>
  
 
## Feedback

This script is provided as-is, and without support. 

I've been using it on MacOS Catalina (up to and including macOS 10.15.7) without issue.

If you run into difficulties check that the paths are correct:
* `MouseAndKeyboardBatteryChecks.scpt` should point to wherever you have installed the `btstat` script
* `net.martinsoft.batterychecker.plist` should point to whenever you installed `MouseAndKeyboardBatteryChecks.scpt`
* Also check that `btstat` returns the correct battery levels for your devices (see below) and that the device names match those in `MouseAndKeyboardBatteryChecks.scpt`



## Further info: btstat

The `btstat` script returns current battery percentages for Apple bluetooth devices connected to your Mac.

When run with no arguments, it will list device names and battery percentages: e.g. 
```
$ btstat
"MagicMouse2",97
"MagicKeyboard",70
```

If run with a device name, it will return a single integer indicating the battery percentage for that device:
```
$ btstat MagicMouse2
97
```
