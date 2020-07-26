# Conky Focal Theme

![Print](https://drive.google.com/uc?export=view&id=1KIHJTScAmfg3SxvHDik3NEtFISpnf5sy)

## Requirements
Install package `conky-all` in your distro.

## How to use
Assuming your conky directory is `~/.conky`:
```sh
cd ~/.conky/focal
conky -c .conkyrc
```

## How to autostart
Assuming you have the path `~/.bin`
Create a simple .sh file
```sh
touch ~/.bin/conky_autostart.sh
chmod +x ~/.bin/conky_autostart.sh
nano ~/.bin/conky_autostart.sh
```

Paste content:
```sh
#!/usr/bin/env bash
cd ~/.conky/focal/ && conky -p10 -c .conkyrc
```

Now assuming you use Gnome3, tap startup and add new startup program with the command:
```sh
~/.bin/conky_autostart.sh
```

Thank you for project [Conky Draw Project](https://github.com/fisadev/conky-draw)

License
----

MIT

Duvidas, criticas ou sugestões:
E-mail: adaoduquesn@gmail.com
Telegram: @adaoDuque
