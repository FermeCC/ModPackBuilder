# Mod Notes

Information pertaining to changes that were applied manually to mods, mainly to make them work in a multiplayer setting and possibly minor bugfixes.

## SM19_Large_Multi_Silo.zip

Manually added `<multiplayer supported="true" />` in `modDesc.xml` using the following:

```
% unzip SM19_Large_Multi_Silo.zip -d SM19_Large_Multi_Silo
% cd SM19_Large_Multi_Silo
% xmlstarlet ed --inplace --subnode "/modDesc" --type elem -n multiplayer -v "" modDesc.xml
% xmlstarlet ed --inplace --insert "//multiplayer" --type attr -n supported -v true modDesc.xml
% zip -r SM19_Large_Multi_Silo.zip *

# ... upload to server ...

% rm -r SM19_Large_Multi_Silo
```

