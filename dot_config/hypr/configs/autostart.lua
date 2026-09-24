local sleep = "sleep 2 && "

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user import-environment $(env | cut -d'=' -f 1)")
    hl.exec_cmd(sleep .. "uwsm-app -- /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd(sleep .. "uwsm-app -- noctalia")
    hl.exec_cmd(sleep .. "uwsm-app -- hypridle")
    hl.exec_cmd(sleep .. "uwsm-app -- dropbox")
    hl.exec_cmd(sleep .. "uwsm-app -- NetworkManager")
    hl.exec_cmd(sleep .. "sleep 3 && uwsm-app -- AmneziaVPN")
end)
