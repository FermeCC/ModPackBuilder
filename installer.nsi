Name "FermeCC ModPack"
OutFile "FermeCC_ModPack.exe"

InstallDir "$DOCUMENTS\My Games\FarmingSimulator2019\Mods"

Section

SetOutPath $INSTDIR
File /r mods\*.zip

SectionEnd
