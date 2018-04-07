@echo off
cls

set FOLDERNAME=%1

echo Creating Solution Folder


mkdir %FOLDERNAME%
cd %FOLDERNAME%

echo Creating default folders (src, docs, tests)

mkdir src
mkdir docs
mkdir tests

echo Creating README file(README.md)

echo %FOLDERNAME% === > README.md

echo Creating Solution %FOLDERNAME%

dotnet new sln --name %FOLDERNAME%

