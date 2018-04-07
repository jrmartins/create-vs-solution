@echo off
cls

set CURRENT=%CD%
set FOLDERNAME=%1
set PROJECTNAME=%2

echo Creating Solution Folder

cd %FOLDERNAME%

mkdir %PROJECTNAME%

echo Created Solution Folder

cd %PROJECTNAME%
copy %CURRENT%\.gitignore .

echo Creating default folders (src, docs, tests)

mkdir src
mkdir docs
mkdir tests

echo Created default folders

echo Creating README file(README.md)

echo %PROJECTNAME% === > README.md

echo Created README file

echo Creating Solution %PROJECTNAME%

dotnet new sln --name %PROJECTNAME%

cd %FOLDERNAME%\%PROJECTNAME%

echo *** Process Complete ***



