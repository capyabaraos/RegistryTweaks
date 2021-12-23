:: Disable Intel USB Logging
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\IUSB3P" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\WMI\Autologger\IUSB3P" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IUSB3P" /v "Start" /t REG_DWORD /d "0" /f

:: Remove Dependencies of Wlansvc
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Wlansvc" /v "DependOnService" /t REG_MULTI_SZ /d "nativewifip\0RpcSs" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\services\Wlansvc" /v "DependOnService" /t REG_MULTI_SZ /d "nativewifip\0RpcSs" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\services\Wlansvc" /v "DependOnService" /t REG_MULTI_SZ /d "nativewifip\0RpcSs" /f
exit