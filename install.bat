apm install --packages-file packages.txt
cmd /c mklink %userprofile%\.tern-config %~d0%~p0\.tern-project
