@echo off
echo ===================================
echo Verification version of YouTube-DL
youtube-dl.exe -U > nul
echo YouTube-DL version :
youtube-dl.exe --version
echo ===================================
echo Press any key to continue
pause > nul
goto start_bat

:start_bat
cls
echo =========================================================================
echo YOUTUBE-DL SIMPLIFIE
echo Made By Elixir/Nathan#7914
echo Required things Microsoft Visual C++ 2010 Redistributable Package (x86)
echo If you don't have this, YouTube-DL dont work
echo =========================================================================
echo Press any key to coninue
pause > nul
goto debug_mode

:debug_mode
cls
echo For debug mode respond valid is YES or NO (uppercase is important)
echo > You wan't to active debug mode ?
del You
set /p ENTRY_USER_DEBUG_MODE=">"
if %ENTRY_USER_DEBUG_MODE%==YES (
	set DEBUG_MODE_YOUTUBE-DL="-v"
	goto resolution
)
if %ENTRY_USER_DEBUG_MODE%==NO (
	set DEBUG_MODE_YOUTUBE-DL=
	goto resolution
)
echo Entry is not valid, please retry
timeout /t 005 > nul
goto debug_mode

:resolution
cls
echo Choses your video resolution :
echo ===================================
echo 144p
echo 240p
echo 360p
echo 480p
echo 720p
echo 1080p (HD)
echo 1440p (UHD)
echo 2160p (4K)
echo ===================================
echo /!\ write what is on the screen /!\
set /p RESOLUTION_USER_ENTRY=">"
if %RESOLUTION_USER_ENTRY%==144p (
	set RESOLUTION_YOUTUBE-DL=144
	goto Download
)
if %RESOLUTION_USER_ENTRY%==240p (
	set RESOLUTION_YOUTUBE-DL=240
	goto Download
)
if %RESOLUTION_USER_ENTRY%==360p (
	set RESOLUTION_YOUTUBE-DL=360
	goto Download
)
if %RESOLUTION_USER_ENTRY%==480p (
	set RESOLUTION_YOUTUBE-DL=480
	goto Download
)
if %RESOLUTION_USER_ENTRY%==720p (
	set RESOLUTION_YOUTUBE-DL=720
	goto Download
)
if %RESOLUTION_USER_ENTRY%==1080p (
	set RESOLUTION_YOUTUBE-DL=1080
	goto Download
)
if %RESOLUTION_USER_ENTRY%==1440p (
	set RESOLUTION_YOUTUBE-DL=1440
	goto Download
)
if %RESOLUTION_USER_ENTRY%==2160p (
	set RESOLUTION_YOUTUBE-DL=2160
	goto Download
)
echo No resolution entry. Please retry
goto resolution

:Download
echo Write here the videos you wish to download
echo If you want to download multiple videos, simply space them in one space
set /p URL=">"
echo Download has started
youtube-dl.exe %DEBUG_MODE_YOUTUBE-DL% -f "bestvideo[height<=%RESOLUTION_YOUTUBE-DL%]+bestaudio[ext!=m4a]/best[height<=%RESOLUTION_YOUTUBE-DL%]" %URL%
echo Download complete !
timeout /t 002
goto credits

:credits
echo =====================================
echo Batch codage : Elixir/Nathan#7914
echo Software use : FFmpeg and YouTube-DL
echo =====================================
pause > nul