::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJN9FGMvN6p6vkoJC21eIJ+cgbDAgZih/J6H4aOEzcYrVzr2NL+5d40brFQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDlAcCCHL2CuCaUgubqooe+fpy0=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
::基于MO Manager v3.x Client制作 -Bt
::生成配置文件
echo off
if not exist ".\Resources\Manager\Config.ini" goto Next
::读取配置文件
::全局设置
set a=0
for /f "skip=2 tokens=2 delims==" %%i in ('type ".\Resources\Manager\Config.ini"') do (if not defined Enable set Enable=%%i)
if %Enable%==false (
start "" ".\Resources\clientdx.exe"
goto end2
)
::图片随机化格式设�?
setlocal enabledelayedexpansion
for /f %%i in ('dir /b .\Resources\Manager\gamecreationoptionsbg\*.pbt') do (
set /a countsas=!countsas!+1
)
set minr=1
set /a modw=!countsas!-!minr!+1
set /a gcob=!random!%%!modw!+!minr!
if exist ".\Resources\Manager\gamecreationoptionsbg\!gcob!.pbt" (
	del /q ".\Resources\gamecreationoptionsbg.png"
	copy ".\Resources\Manager\gamecreationoptionsbg\!gcob!.pbt" ".\Resources\"
	ren ".\Resources\!gcob!.pbt" gamecreationoptionsbg.png
	goto es
	)
	:es
	
	for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFBGM.ini"') do (if not defined Musica set Musica=%%i)
	if %Musica%==A1 (
	set Bgmd=Bgm)
	if %Musica%==A2 (
	set Bgmd=Bgm2)
	if %Musica%==A3 (
	set Bgmd=Bgm3)
	if %Musica%==A4 (
	set Bgmd=Bgm4)
	if %Musica%==A5 (
	set Bgmd=Bgm5)
	if %Musica%==A6 (
	set Bgmd=Bgm6)
	if %Musica%==A7 (
	set Bgmd=Bgm7)
for /f %%i in ('dir /b .\Resources\Manager\%Bgmd%\*.BTM') do (
set /a counts=!counts!+1
)
set min=1
set /a mod=!counts!-!min!+1
set /a bgm=!random!%%!mod!+!min!
if exist ".\Resources\Manager\%Bgmd%\!bgm!.BTM" (
	del /q ".\Resources\chaoticimpulse.wma"
	copy ".\Resources\Manager\%Bgmd%\!bgm!.BTM" ".\Resources\"
	ren ".\Resources\!bgm!.BTM" chaoticimpulse.wma
	goto d
	)
:d
for /f "skip=6 tokens=2 delims==" %%i in ('type ".\Resources\Manager\Config.ini"') do (if not defined Picture set Picture=%%i)
for /f "skip=7 tokens=2 delims==" %%i in ('type ".\Resources\Manager\Config.ini"') do (if not defined RLoadingscreen set RLoadingscreen=%%i)
if %RLoadingscreen%==true (
setlocal enabledelayedexpansion
for /f %%i in ('dir /b .\Resources\Manager\loadingscreen\*.pbt') do (
set /a countse=!countse!+1
)
set mine=1
set /a moda=!countse!-!mine!+1
set /a cg=!random!%%!moda!+!mine!
if exist ".\Resources\Manager\loadingscreen\!cg!.pbt" (
	del /q ".\Resources\loadingscreen.png"
	copy ".\Resources\Manager\loadingscreen\!cg!.pbt" ".\Resources\"
	ren ".\Resources\!cg!.pbt" loadingscreen.png
	
	goto bg
	)
)
:bg

::主题1（Gura�?
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modea set Modea=%%i)
if %Modea%==MM1 (
:1
copy ".\Resources\Manager\MainMenu\1.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\1.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\1\" ".\Resources\"
goto bg2
)


::主题2（Atri�?

for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modeb set Modeb=%%i)
if %Modeb%==MM2 (
:2
copy ".\Resources\Manager\MainMenu\2.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\2.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\2\" ".\Resources\"
goto bg2
)


::主题3（Rain�?
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modec set Modec=%%i)
if %Modec%==MM3 (
:3
copy ".\Resources\Manager\MainMenu\3.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\3.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\3\" ".\Resources\"
goto bg2
)


::主题4（Cat�?
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Moded set Moded=%%i)
if %Moded%==MM4 (
:4
copy ".\Resources\Manager\MainMenu\4.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\4.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\4\" ".\Resources\"
goto bg2
)

::主题5（梅比乌斯）
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modee set Modee=%%i)
if %Modee%==MM5 (
:5
copy ".\Resources\Manager\MainMenu\5.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\5.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\5\" ".\Resources\"
goto bg2
)

::主题6（Pink Cat�?
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modef set Modef=%%i)
if %Modef%==MM7 (
:6
copy ".\Resources\Manager\MainMenu\6.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\6.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\6\" ".\Resources\"
goto bg2
)

::主题7（城市）
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modeg set Modeg=%%i)
if %Modeg%==MM8 (
:7
copy ".\Resources\Manager\MainMenu\7.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\7.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\7\" ".\Resources\"
goto bg2
)
::主题8（天�?恶魔�?
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modeh set Modeh=%%i)
if %Modeh%==MM9 (
:8
copy ".\Resources\Manager\MainMenu\8.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\8.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\8\" ".\Resources\"
goto bg2
)
::主题9（温�?猫娘�?
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modei set Modei=%%i)
if %Modei%==MM10 (
:9
copy ".\Resources\Manager\MainMenu\9.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\9.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\9\" ".\Resources\"
goto bg2
)
::主题10（甘雨）
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Modej set Modej=%%i)
if %Modej%==MM11 (
:10
copy ".\Resources\Manager\MainMenu\10.pbt" ".\Resources\MainMenu\"
del /q ".\Resources\MainMenu\mainmenubg.png"
ren ".\Resources\MainMenu\10.pbt" mainmenubg.png
copy ".\Resources\Manager\TP\10\" ".\Resources\"
goto bg2
)








::随机主题
for /f "tokens=2 delims==" %%i in ('type ".\Resources\Manager\IFMM\TPMM.ini"') do (if not defined Mode set Mode=%%i)
if %Mode%==MM0 (
for /f %%i in ('dir /b .\Resources\Manager\MainMenu\*.pbt') do (
set /a countst=!countst!+1
)
set mint=1
set /a modt=!countst!-!mint!+1
set /a cgt=!random!%%!modt!+!mint!
goto !cgt!
)
:bg2
for /f "skip=14 tokens=2 delims==" %%i in ('type ".\Resources\Manager\Config.ini"') do (if not defined ADF set ADF=%%i)
if %ADF%==true (
taskkill /f /im clientdx.exe
if not exist ".\Resources\clientdx.exe" goto end1
start "" /high ".\Resources\clientdx.exe"
ping -n 7 127.0.0.1>nul
del /S /Q ".\syringe.log"
del /S /Q ".\debug\"
del /S /Q ".\Client\*.log"
del /S /Q ".\Client\ErrorLogs\*.TXT"
del /q ".\stats.dmp"
rd ".\debug"
goto end2
)
::高优�?
for /f "skip=12 tokens=2 delims==" %%i in ('type ".\Resources\Manager\Config.ini"') do (if not defined Highpriority set Highpriority=%%i)
if %Highpriority%==true (
taskkill /f /im clientdx.exe
if not exist ".\Resources\clientdx.exe" goto end1
start "" /high ".\Resources\clientdx.exe"
goto end1
)
:Next
if not exist ".\Resources\clientdx.exe" goto end1
start "" ".\Resources\clientdx.exe"
:end1
if exist ".\Resources\Manager\Config.ini" goto end2
if not exist ".\Resources\clientdx.exe" goto end2
(
echo -- Manager v3.X Project , By : Bt --
echo ##Main switch ,True is on and false is off.
echo Enable=true
echo --
echo [Interface settings]
echo ##Picture format setting, jpg and png can be used.
echo Picture=jpg
echo Random_Loadingscreen=true
echo Random_MainMenu=true
echo --
echo [Start behavior]
echo ##Quick start under special circumstances.
echo High_priority=true
echo ##Delete debug when TDA starts.
echo Automatically_delete_files=false
echo ##For debugging client+
echo Client_debug=false
) > .\Resources\Manager\Config.ini
:end2