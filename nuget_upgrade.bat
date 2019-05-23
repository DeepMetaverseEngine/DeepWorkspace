set inc=..\DeepPackages\Release\bin\net462\nuinc
FOR /R ..\DeepCore\   %%i IN (*.csproj) DO @%inc% "%%i"
FOR /R ..\DeepFrozen\ %%i IN (*.csproj) DO @%inc% "%%i"
%inc% ..\DeepEditor\DeepEditor.Common\DeepEditor.Common.csproj.nuspec
%inc% ..\DeepEditor\DeepEditor.Plugin\DeepEditor.Plugin.csproj.nuspec
msbuild DeepCore.sln
pause
