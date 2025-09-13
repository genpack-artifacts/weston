set -e
cd
mkdir -p .config/fcitx5
cat <<EOF > .config/fcitx5/config
[Hotkey]
EnumerateWithTriggerKeys=True
EnumerateForwardKeys=
EnumerateBackwardKeys=
EnumerateSkipFirst=False
ModifierOnlyKeyTimeout=250

[Hotkey/TriggerKeys]
0=Control+space
1=Zenkaku_Hankaku
2=Alt+grave

[Hotkey/AltTriggerKeys]
0=Shift_L

[Hotkey/EnumerateGroupForwardKeys]
0=Super+space

[Hotkey/EnumerateGroupBackwardKeys]
0=Shift+Super+space

[Hotkey/ActivateKeys]
0=Hangul_Hanja

[Hotkey/DeactivateKeys]
0=Hangul_Romaja

[Hotkey/PrevPage]
0=Up

[Hotkey/NextPage]
0=Down

[Hotkey/PrevCandidate]
0=Shift+Tab

[Hotkey/NextCandidate]
0=Tab

[Hotkey/TogglePreedit]
0=Control+Alt+P

[Behavior]
ActiveByDefault=False
resetStateWhenFocusIn=No
ShareInputState=No
PreeditEnabledByDefault=True
ShowInputMethodInformation=True
showInputMethodInformationWhenFocusIn=False
CompactInputMethodInformation=True
ShowFirstInputMethodInformation=True
DefaultPageSize=5
OverrideXkbOption=False
CustomXkbOption=
EnabledAddons=
DisabledAddons=
PreloadInputMethod=True
AllowInputMethodForPassword=False
ShowPreeditForPassword=False
AutoSavePeriod=30
EOF

cat <<EOF > .config/fcitx5/profile
.config/fcitx5/profile
[Groups/0]
Name=デフォルト
Default Layout=us
DefaultIM=mozc

[Groups/0/Items/0]
Name=keyboard-us
Layout=

[Groups/0/Items/1]
Name=mozc
Layout=

[GroupOrder]
0=デフォルト
EOF