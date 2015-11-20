param([switch]$skip)

cmd /c mklink $home\.tern-config $PSScriptRoot\.tern-config
cmd /c mklink $home\.atom $PSScriptRoot
if (-not $skip)
{
    apm install --packages-file $PSScriptRoot\packages.txt
}