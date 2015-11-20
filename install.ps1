param([switch]$skip)

cmd /c mklink $home\.tern-config $PSScriptRoot\.tern-config
cmd /c mklink /D $home\.atom $PSScriptRoot
if (-not $skip)
{
    node install.js
}
