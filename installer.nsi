Name "FermeCC ModPack"
OutFile "FermeCC_ModPack.exe"

ShowInstDetails show

InstallDir "$DOCUMENTS\My Games\FarmingSimulator2019\Mods"

DirText "Test d'un message dirtext"
ComponentText "Test d'un message componenttext"

InstType "Full"
InstType "Custom"

Section Full
  SectionIn 1 RO

  SetOutPath $INSTDIR
  File /r mods\*.zip
SectionEnd

Section Custom
  SectionIn 2

  SetOutPath $INSTDIR
  File /r mods\*.zip
SectionEnd

