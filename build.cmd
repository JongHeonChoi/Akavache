@echo off
tools\nuget\nuget.exe update -self
tools\nuget\nuget.exe install xunit.runner.console -OutputDirectory tools -ExcludeVersion
tools\nuget\nuget.exe install Cake -OutputDirectory tools -ExcludeVersion -Version 0.31.0

tools\Cake\Cake.exe build.cake --target=%1  -Verbosity=Diagnostic

exit /b %errorlevel%
