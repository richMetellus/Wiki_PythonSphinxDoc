ECHO OFF

pushd

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=build
set SHRPTBUILDDIR=build-sharepoint

if "%1" == "" goto help
if "%1" == "livehtml" goto livehtml
if "%1" == "sharepoint-build" goto sharepoint-build
if "%1" == "sharepoint-clean" goto sharepoint-clean

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:help
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:sharepoint-build
%SPHINXBUILD% -M html %SOURCEDIR% %SHRPTBUILDDIR% %SPHINXOPTS% %O% -D html_file_suffix=".aspx"
goto end

:sharepoint-clean
%SPHINXBUILD% -M clean %SOURCEDIR% %SHRPTBUILDDIR% %SPHINXOPTS% %O%
goto end

:livehtml
sphinx-autobuild %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O% 

:end
popd
