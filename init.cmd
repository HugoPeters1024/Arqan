@echo off

dotnet publish -c Release -r win-x64 -o tools /p:PublishSingleFile=true ./src-tools/source-generator/SourceGenerator.csproj
