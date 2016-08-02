@echo off

REM ///
REM /// @author     Drew Chapin <druciferre@gmail.com>
REM /// @date       August 2nd, 2016
REM /// @copyright  GNU General Public License (GPLv3)
REM ///

set SESSIONS_KEY=HKEY_CURRENT_USER\SOFTWARE\SimonTatham\PuTTY\Sessions

for /f "usebackq" %%a in (`reg query %SESSIONS_KEY% /f * /k ^| find "Sessions\"`) do (
	echo Updating Sessions %%~na
	reg add "%%a" /f /v "Colour6"  /t REG_SZ /d "46,52,54" 1> nul
	reg add "%%a" /f /v "Colour7"  /t REG_SZ /d "85,87,83" 1> nul
	reg add "%%a" /f /v "Colour8"  /t REG_SZ /d "204,0,0" 1> nul
	reg add "%%a" /f /v "Colour9"  /t REG_SZ /d "239,41,41" 1> nul
	reg add "%%a" /f /v "Colour10" /t REG_SZ /d "78,154,6" 1> nul
	reg add "%%a" /f /v "Colour11" /t REG_SZ /d "138,226,52" 1> nul
	reg add "%%a" /f /v "Colour12" /t REG_SZ /d "196,160,0" 1> nul
	reg add "%%a" /f /v "Colour13" /t REG_SZ /d "252,233,79" 1> nul
	reg add "%%a" /f /v "Colour14" /t REG_SZ /d "52,101,164" 1> nul
	reg add "%%a" /f /v "Colour15" /t REG_SZ /d "114,159,207" 1> nul
	reg add "%%a" /f /v "Colour16" /t REG_SZ /d "117,80,123" 1> nul
	reg add "%%a" /f /v "Colour17" /t REG_SZ /d "173,127,168" 1> nul
	reg add "%%a" /f /v "Colour18" /t REG_SZ /d "6,152,154" 1> nul
	reg add "%%a" /f /v "Colour19" /t REG_SZ /d "52,226,226" 1> nul
	reg add "%%a" /f /v "Colour20" /t REG_SZ /d "211,215,207" 1> nul
	reg add "%%a" /f /v "Colour21" /t REG_SZ /d "238,238,236"
)
