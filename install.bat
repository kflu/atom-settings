mklink %userprofile%\.tern-config %~d0%~p0\.tern-project
mklink /d %userprofile%\.atom %~d0%~p0
apm install --packages-file %~d0%~p0\packages.txt
