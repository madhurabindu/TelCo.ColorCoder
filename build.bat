dotnet restore
pushd "%~dp0"
if exist Debug rd /s /q Debug
if exist Release rd /s /q Release

"%programfiles(x86)%\Microsoft Visual Studio\2019\Enterprise\MSBuild\Current\Bin\msbuild.exe" 

dotnet run -p TelCo.ColorCoder

:exit
popd