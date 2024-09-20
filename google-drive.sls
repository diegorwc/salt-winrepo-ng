google-drive:
  latest:
    full_name: 'Google Drive'    
    installer: 'https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe'
    uninstaller: 'C:\Program Files\Google\Drive File Stream\97.0.1.0\uninstall.exe'    
    install_flags: '--silent --desktop_shortcut --gsuite_shortcuts=false'
    uninstall_flags: '--silent'
    msiexec: False
    locale: pt_BR
    reboot: False
