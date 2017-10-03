@echo off

rem remove for all file types
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text\command" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with Sublime Text as Admin\command" /f

rem remove on folders
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text\command" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text\command" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text\command" /f

rem admin folders
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open Sublime Text as Admin\command" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open Sublime Text as Admin\command" /f

pause