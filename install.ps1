param([switch]$skip)

npm i -g auto-apm
cmd /c mklink $home\.tern-config $PSScriptRoot\.tern-config
cmd /c mklink /D $home\.atom $PSScriptRoot
if (-not $skip)
{
    auto-apm -p $PSScriptRoot\packages.json
}
