Name "FermeCC ModPack"
OutFile "FermeCC_ModPack.exe"

ShowInstDetails show

InstallDir "$DOCUMENTS\My Games\FarmingSimulator2019\Mods"

;DirText "Veuillez choisir un dossier d'installation"
;ComponentText "Veuillez choisir un type d'installation"

;InstType "Installation complète"

!include MUI2.nsh

!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "English"

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "lic.txt"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

Section Mods
  SectionIn 1 RO

  SetOutPath $INSTDIR
  File /r mods\*.zip
SectionEnd

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

