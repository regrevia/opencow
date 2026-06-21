property repoRoot : "<repo>"
property nodeBin : "<node-bin>"
property appPath : "$HOME/Desktop/OpenCow最新测试版.app"
property desktopTarget : "$HOME/Desktop/OpenCow桌面端.app"

on run
  my syncDesktopApp()
  if my appExists(desktopTarget) then
    do shell script "open " & quoted form of desktopTarget
    return
  end if

  display alert "OpenCow 最新测试版启动失败" message "桌面端.app 不存在，请先同步构建。"
end run

on syncDesktopApp()
  set launchScript to "cd " & quoted form of repoRoot & "\n" & ¬
    "export PATH=" & quoted form of (nodeBin & ":/usr/bin:/bin:/usr/sbin:/sbin") & "\n" & ¬
    "python3 scripts/sync-opencow-mac-apps.py"
  do shell script "/bin/zsh -lc " & quoted form of launchScript
end syncDesktopApp

on appExists(appPath)
  try
    do shell script "test -d " & quoted form of appPath
    return true
  on error
    return false
  end try
end appExists
