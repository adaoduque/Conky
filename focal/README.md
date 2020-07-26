# Conky Focal Theme

![Print](https://doc-0g-1o-docs.googleusercontent.com/docs/securesc/dhf2908k6pfhj17h5qohj4u864e1frbm/juulf2fagn5nb95g6b318mtb4t12nqs8/1595788500000/01724923584160069038/01724923584160069038/1KIHJTScAmfg3SxvHDik3NEtFISpnf5sy?e=view&authuser=0&nonce=0i5ldq67ie62k&user=01724923584160069038&hash=9v5rs5ni6tahk5tbdufi680vlh2pbk2t)

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
