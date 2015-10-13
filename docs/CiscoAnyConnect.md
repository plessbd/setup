Hide Cisco Any Connect Client dock icon
================

http://www.cnet.com/news/prevent-an-applications-dock-icons-from-showing-in-os-x/

```
sudo /usr/libexec/PlistBuddy -c "Add :LSUIElement bool true" /Applications/Cisco/Cisco\ AnyConnect\ Secure\ Mobility\ Client.app/Contents/Info.plist
```
