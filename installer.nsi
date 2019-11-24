Unicode true

Name "FermeCC ModPack"
OutFile "FermeCC_ModPack.exe"

ShowInstDetails show

InstallDir "$DOCUMENTS\My Games\FarmingSimulator2019\Mods"

;DirText "Veuillez choisir un dossier d'installation"
;ComponentText "Veuillez choisir un type d'installation"

;InstType "Installation complète"

!include MUI.nsh

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "$(MUILicense)"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "English"

LicenseLangString MUILicense ${LANG_ENGLISH} "lic-en.txt"
LicenseLangString MUILicense ${LANG_FRENCH} "lic-fr.txt"

!define MUI_FINISHPAGE_LINK "Discord"
!define MUI_FINISHPAGE_LINK_LOCATION "https://discord.gg/fwMp7sR"

!addplugindir plugins/Nsis7z_19.00/Plugins/x64-unicode

Section Mods
  SectionIn 1 RO

  SetOutPath $INSTDIR
  SetOverwrite on
  AllowSkipFiles on

  InitPluginsDir
  NSISdl::download http://dropbox.s3.ncode.ca/FermeCC/modpack/latest/all_mods_download.zip "$PLUGINSDIR\all_mods_download.zip"
  Pop $R0 ;Get the return value
  StrCmp $R0 "success" +3
  MessageBox MB_OK "Download failed: $R0"
  Quit

  Nsis7z::ExtractWithDetails "$PLUGINSDIR\all_mods_download.zip" "Installing package %s..." 
SectionEnd

Function .onInit
  StrCpy $Language ${LANG_FRENCH}
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

