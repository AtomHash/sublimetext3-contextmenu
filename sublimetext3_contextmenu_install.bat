@echo off
SET admin_st3_path=powershell cd 'c:\\program files\\sublime text 3\\'; Start-Process sublime_text.exe -Verb runAs
SET st3_path=C:\Program Files\Sublime Text 3\sublime_text.exe
SET st3_label_edit=Edit with Sublime Text
SET st3_label_admin_edit=Edit with Sublime Text as Admin
SET st3_label_admin_open=Open with Sublime Text as Admin
SET st3_label=Open with Sublime Text

rem add for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text"         /t REG_SZ /v "" /d "%st3_label_edit%" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3_path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text\command" /t REG_SZ /v "" /d "%st3_path% \"%%1\"" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin"         /t REG_SZ /v "" /d "%st3_label_admin_edit%" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin"         /t REG_EXPAND_SZ /v "Icon" /d "%st3_path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin"         /t REG_SZ /v "Extended" /d ""
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin\command" /t REG_SZ /v "" /d "%admin_st3_path% \"%%1\"" /f

rem add for folders
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "%st3_label%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3_path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3_path% \"%%V\"" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "%st3_label%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3_path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3_path% \"%%V\"" /f

rem directory for admin
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin"         /t REG_SZ /v "" /d "%st3_label_admin_open%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin"         /t REG_EXPAND_SZ /v "Icon" /d "%st3_path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin"         /t REG_SZ /v "Extended" /d "" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin\command" /t REG_SZ /v "" /d "%admin_st3_path% \"%%V\"" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin"         /t REG_SZ /v "" /d "%st3_label_admin_open%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin"         /t REG_EXPAND_SZ /v "Icon" /d "%st3_path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin"         /t REG_SZ /v "Extended" /d "" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin\command" /t REG_SZ /v "" /d "%admin_st3_path% \"%%V\"" /f

pause
