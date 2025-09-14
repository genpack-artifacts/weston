set -e
cd
mkdir -p .config
cat << EOF > .config/weston.ini
[launcher]
icon=/usr/share/weston/icon_terminal.png
path=/usr/bin/weston-terminal

[launcher]
icon=/usr/share/icons/hicolor/24x24/apps/google-chrome.png
path=/usr/bin/google-chrome-stable --enable-wayland-ime --wayland-text-input-version=1 --no-first-run --no-default-browser-check --disable-first-run-ui

[input-method]
path=/usr/libexec/fcitx5-wayland-launcher
EOF