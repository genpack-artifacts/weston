# weston

weston(Waylandのリファレンス実装)を動作させる環境をビルドするためのサンプルアーティファクト。日本語入力のために fcitx+mozcを有効にしており、代表的なアプリケーションとしてChromeを導入している。

## Westonでの日本語入力について

GTKアプリケーションはfcitx-gtkが入っていればfcitxでの日本語入力ができる。chromeはozoneという独自ツールキットでGUIを表示しておりGTKのIM対応とは無関係で、```--ozone-platform=wayland --enable-wayland-ime --wayland-text-input-version=1```という起動オプションで Weston環境での日本語入力ができる。```--wayland-text-input-version```はデフォルトで3のようで、Westonはv3に対応していないためこのオプションでバージョンを明示的に下げてやる必要がある模様
