param([switch]$skip)

npm i -g auto-apm

rm -force $home\.tern-config
cmd /c mklink $home\.tern-config $PSScriptRoot\.tern-config

# it requires two consecutive remove-item to remove the directory
cmd /c rmdir /s /q $home\.atom
cmd /c mklink /D $home\.atom $PSScriptRoot

if (-not $skip)
{
    auto-apm -p $PSScriptRoot\packages.json
}
