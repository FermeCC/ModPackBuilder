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

Section Mods
  SectionIn 1 RO

  SetOutPath $INSTDIR
  File /r mods\*.zip
SectionEnd

Function .onInit
  StrCpy $Language ${LANG_FRENCH}
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

