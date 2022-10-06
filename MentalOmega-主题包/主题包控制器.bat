::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJN9FGMvN6p6vkoJC21eIJ+cgbDAgZih/J6H4aGrbggknFogI3CqVKqJtt25ghzoSyoJCBRhXHg==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
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
::Zh4grVQjdCyDJGyX8VAjFDlAcCCHL2CuCaUgubq16vKCwg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
echo off
::4f5c8005ff1a4274ff0c427ad9ff1a426c7565363233ff0c554944ff1a3236313334373830
::by:Bt(B站：Blue623)
::比较乱，见谅qwp
Title Bt主题包控制台  --By：Bt
mode con cols=45 lines=25
color 3

for /f "skip=1 tokens=2 delims==" %%i in ('type ".\Resources\Manager\TP.ini"') do (if not defined TP set TP=%%i)

:Main
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo.  音乐风格           - 1
echo.                        
echo.  主题设置           - 2
echo.
echo.  图标设定           - 3
::echo.  音乐包对应主题设置 - 4
echo.
echo.  界面细节设置       - 4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 当前主题包版本：%TP%   关于主题包 - [W]
echo.
echo.        -------ClientOS+ -------
set /p pr=      输入数字按回车：
if /i "%pr%"=="1" Goto 1
if /i "%pr%"=="2" Goto 2
if /i "%pr%"=="3" Goto 3
::if /i "%pr%"=="4" Goto 4
if /i "%pr%"=="4" Goto 5
if /i "%pr%"=="W" Goto W
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto Main
:5
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo.  更换展开箭头        - 1
echo.
echo.  更换客户端鼠标箭头  - 2
echo.
echo.  调节按钮颜色        - 3
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo.
echo.        -------ClientOS+ -------
set /p ae=      输入数字按回车：
if /i "%ae%"=="1" Goto AS1
if /i "%ae%"=="2" Goto AS2
if /i "%ae%"=="3" Goto AS3
if /i "%ae%"=="m" Goto Main
echo.
echo.                输入无效！
echo.
ping -n 1 127.0.0.1>nul
goto 5
:AS3
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo.  蓝色[默认]        - 1
echo.
echo.  绿色              - 2
echo.
echo.  橙色              - 3
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo.
echo.        -------ClientOS+ -------
set /p ws=      输入数字按回车：
if /i "%ws%"=="1" Goto Blue
if /i "%ws%"=="2" Goto Green
if /i "%ws%"=="3" Goto Orange
if /i "%ws%"=="m" Goto Main
echo.
echo.                输入无效！
echo.
ping -n 1 127.0.0.1>nul
goto 5
:Blue
copy ".\Resources\Manager\Color\blue\*.png" ".\Resources\"
cls
echo.
echo. 已切换为：蓝色
echo.
pause
goto AS3
:Green
copy ".\Resources\Manager\Color\green\*.png" ".\Resources\"
cls
echo.
echo. 已切换为：绿色
echo.
pause
goto AS3
:Orange
copy ".\Resources\Manager\Color\orange\*.png" ".\Resources\"
cls
echo.
echo. 已切换为：橙色
echo.
pause
goto AS3
:AS2
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo.  样式1 [默认]    - 1
echo.
echo.  样式2           - 2
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo.
echo.        -------ClientOS+ -------
set /p ae=      输入数字按回车：
if /i "%ae%"=="1" Goto CU1
if /i "%ae%"=="2" Goto CU2
if /i "%ae%"=="m" Goto 5
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto AS2
:CU1
copy ".\Resources\Manager\cursor\1\cursor.png" ".\Resources\"
cls
echo.
echo. 切换完成
echo.
pause
goto AS2
:CU2
copy ".\Resources\Manager\cursor\2\cursor.png" ".\Resources\"
cls
echo.
echo. 切换完成
echo.
pause
goto AS2




:AS1
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo.  白色样式        - 1
echo.
echo.  灰色样式        - 2
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo.
echo.        -------ClientOS+ -------
set /p ae=      输入数字按回车：
if /i "%ae%"=="1" Goto B1
if /i "%ae%"=="2" Goto B2
if /i "%ae%"=="m" Goto 5
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto AS1
:B1
copy ".\Resources\Manager\Arrow\White\*.png" ".\Resources\"
cls
echo.
echo. 已切换！
echo.
pause
goto AS1
:B2
copy ".\Resources\Manager\Arrow\Grey\*.png" ".\Resources\"
cls
echo.
echo. 已切换！
echo.
pause
goto AS1





:4
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo. 模式1：使音乐包不对应主题播放[默认] - 1
echo.
echo. 模式2：使音乐包对应主题播放         - 2
echo.
echo.
echo.
echo.
echo.
if not exist ".\Resources\Manager\IFBGM\random\TP.x" echo. 当前状态：模式1
if exist ".\Resources\Manager\IFBGM\random\TP.x" echo. 当前状态：模式2
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo.
echo.        -------ClientOS+ -------
set /p pr=      输入数字按回车：
if /i "%pr%"=="1" Goto ra1
if /i "%pr%"=="2" Goto ra2
if /i "%pr%"=="m" Goto Main
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto 4
:ra1
cls
del /q ".\Resources\Manager\IFBGM\random\TP.x"
cls
echo.
echo. 已切换为模式1
echo.
pause
goto 4
:ra2
cls
(
echo 4f5c8005ff1a4274ff0c427ad9ff1a426c7565363233ff0c554944ff1a3236313334373830
) > .\Resources\Manager\IFBGM\random\TP.x
cls
echo.
echo. 已切换为模式1
echo.
pause
goto 4
:W
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo. 制作：Bt,July_John
echo. Bilibili：Blue623 （UID：326134780）
echo. July_John（UID：1609367677）
echo. 使用基于C-Cay项目的ClientOS+进行主题包制作
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. ps：玩过暗黑仪式战役包嘛，很好玩的哦
echo.
echo.
echo. 作者B站  -  1
echo. 
echo. 检查更新 -  2
echo.
echo. 当前主题包版本：%TP%             ← [M]
echo.
echo.        -------ClientOS+ -------
set /p pr=      输入数字按回车：
if /i "%pr%"=="1" Goto WA1
if /i "%pr%"=="2" Goto WA2
if /i "%pr%"=="M" Goto Main
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto W
:WA1
start "" "https://space.bilibili.com/326134780"
goto W
:WA2
start "" "https://pan.baidu.com/s/18hl8lxwa6ilXFedQ6pI9qw?pwd=xfcu"
goto W
::4f5c8005ff1a4274ff0c427ad9ff1a426c7565363233ff0c554944ff1a3236313334373830
:1
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo. 注意：每次切换主题时都会切换至对应的音
echo. 乐包,但你仍可以切换主题包后将其切换回来
echo. 
echo. [1]安静钢琴乐[默认] - 1
echo.
echo. [2]二次元摇滚音乐   - 2
echo.
echo. [3]雨天钢琴乐       - 3
echo.
echo. [4]怪诞/压抑音乐    - 4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo.
echo.        -------ClientOS+ -------
set /p pr=      输入数字按回车：
if /i "%pr%"=="1" Goto A1
if /i "%pr%"=="2" Goto A2
if /i "%pr%"=="3" Goto A3
if /i "%pr%"=="4" Goto A4
if /i "%pr%"=="m" Goto Main
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto 1
:A1
cls
del /s /q ".\Resources\Manager\IFBGM\*.x"
(echo Mode=A1
) > .\Resources\Manager\IFBGM.ini
cls
echo.
echo. 切换音乐包完成
echo.
pause
goto 1
:A2
cls
del /s /q ".\Resources\Manager\IFBGM\*.x"
(echo Mode=A2
) > .\Resources\Manager\IFBGM.ini
cls
echo.
echo. 切换音乐包完成
echo.
pause
goto 1
:A3
cls
del /s /q ".\Resources\Manager\IFBGM\*.x"
(echo Mode=A3
) > .\Resources\Manager\IFBGM.ini
cls
echo.
echo. 切换音乐包完成
echo.
pause
goto 1
:A4
cls
del /s /q ".\Resources\Manager\IFBGM\*.x"
(echo Mode=A4
) > .\Resources\Manager\IFBGM.ini
cls
echo.
echo. 切换音乐包完成
echo.
pause
goto 1
:2
for /f %%i in ('type .\Resources\Manager\TP\1.name') do set loada=%%i
for /f %%i in ('type .\Resources\Manager\TP\2.name') do set loadb=%%i
for /f %%i in ('type .\Resources\Manager\TP\3.name') do set loadc=%%i
for /f %%i in ('type .\Resources\Manager\TP\4.name') do set loadd=%%i
for /f %%i in ('type .\Resources\Manager\TP\5.name') do set loade=%%i
for /f %%i in ('type .\Resources\Manager\TP\6.name') do set loadf=%%i
for /f %%i in ('type .\Resources\Manager\TP\7.name') do set loadg=%%i
for /f %%i in ('type .\Resources\Manager\TP\8.name') do set loadh=%%i
for /f %%i in ('type .\Resources\Manager\TP\9.name') do set loadi=%%i
for /f %%i in ('type .\Resources\Manager\TP\10.name') do set loadj=%%i


cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo. 每次启动随机选择一个主题   - 1
echo.
echo. %loada%- 2
echo.
echo. %loadb%- 3
echo.
echo. %loadc%- 4
echo.
echo. %loadd%- 5
echo.
echo. %loade%- 6
echo.
echo. %loadf%- 7
echo.
echo. %loadg%- 8
echo.
echo. %loadh%- 9
echo.
echo. %loadi%- 10
echo.
echo.                           ← [M]  [N] →
echo.
echo.        -------ClientOS+ -------
set /p pr=      输入数字按回车：
if /i "%pr%"=="1" Goto MM0
if /i "%pr%"=="2" Goto MM1
if /i "%pr%"=="3" Goto MM2
if /i "%pr%"=="4" Goto MM3
if /i "%pr%"=="5" Goto MM4
if /i "%pr%"=="6" Goto MM5
if /i "%pr%"=="7" Goto MM7
if /i "%pr%"=="8" Goto MM8
if /i "%pr%"=="9" Goto MM9
if /i "%pr%"=="10" Goto MM10
if /i "%pr%"=="m" Goto Main
if /i "%pr%"=="n" Goto nexts
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto 2
::第二界面
:nexts
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo. %loadj%- 1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo.
echo.        -------ClientOS+ -------
set /p pr=      输入数字按回车`：
if /i "%pr%"=="1" Goto MM11
if /i "%pr%"=="m" Goto 2
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto nexts







:MM0
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Mian_img_random) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM1
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img1) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM2
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img2) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM3
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img3) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM4
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img4) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM5
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img5) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM7
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img7) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM8
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img8) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM9
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img9) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM10
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img10) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:MM11
(echo. ;-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --
echo. [Confing]
echo. Mode=Main_img11) > .\Resources\Manager\TPM.ini
cls
echo. 
echo. 主题模式切换完成
echo. 
pause
goto 2
:3
cls
echo.
echo. -------[Bt - July_John]主题包控制台-------
echo.
echo.  原版紫球图标   - 1
echo.
echo.  默认主题包图标 - 2
echo.
echo.  甘城猫猫1      - 3
echo.
echo.  森蚺           - 4
echo.
echo.  史尔特尔       - 5
echo.
echo.  小草神纳西妲   - 6
echo.
echo.  白洲梓         - 7
echo.
echo.
echo.
echo.
echo.
echo.                                  ← [M]
echo. 
echo.        -------ClientOS+ -------
set /p pr=      输入数字按回车：
if /i "%pr%"=="1" Goto C1
if /i "%pr%"=="2" Goto C2
if /i "%pr%"=="3" Goto C3
if /i "%pr%"=="4" Goto C4
if /i "%pr%"=="5" Goto C5
if /i "%pr%"=="6" Goto C6
if /i "%pr%"=="7" Goto C7
if /i "%pr%"=="m" Goto Main
echo.                输入无效！
ping -n 1 127.0.0.1>nul
goto 3
:C1

copy ".\Resources\Manager\OE\Backup.ico" ".\Resources\"
del /q ".\Resources\clienticon.ico"
ren ".\Resources\Backup.ico" clienticon.ico

copy ".\Resources\Manager\OE\Backup.ico" ".\Resources\"
del /q ".\Resources\cncnet.ico"
ren ".\Resources\Backup.ico" cncnet.ico

copy ".\Resources\Manager\OE\Backup.ico" ".\Resources\"
del /q ".\Resources\mainclienticon.ico"
ren ".\Resources\Backup.ico" mainclienticon.ico

copy ".\Resources\Manager\OE\Backup.ico" ".\Resources\"
del /q ".\Resources\PM.ico"
ren ".\Resources\Backup.ico" PM.ico

copy ".\Resources\Manager\OE\Backup.ico" ".\Resources\"
del /q ".\Resources\statview.ico"
ren ".\Resources\Backup.ico" statview.ico
cls
echo.
echo. 切换完成
echo.
pause
goto 3
:C2
copy ".\Resources\Manager\OE\clienticon.ico" ".\Resources\"
cls
echo.
echo. 切换完成
echo.
pause
goto 3
:C3
copy ".\Resources\Manager\OE\clienticon2.ico" ".\Resources\"
del /s /q ".\Resources\clienticon.ico"
ren ".\Resources\clienticon2.ico" clienticon.ico
cls
echo.
echo. 切换完成
echo.
pause
goto 3
:C4
copy ".\Resources\Manager\OE\clienticon3.ico" ".\Resources\"
del /s /q ".\Resources\clienticon.ico"
ren ".\Resources\clienticon3.ico" clienticon.ico
cls
echo.
echo. 切换完成
echo.
pause
goto 3
:C5
copy ".\Resources\Manager\OE\clienticon4.ico" ".\Resources\"
del /s /q ".\Resources\clienticon.ico"
ren ".\Resources\clienticon4.ico" clienticon.ico
cls
echo.
echo. 切换完成
echo.
pause
goto 3
:C6
copy ".\Resources\Manager\OE\clienticon5.ico" ".\Resources\"
del /s /q ".\Resources\clienticon.ico"
ren ".\Resources\clienticon5.ico" clienticon.ico
cls
echo.
echo. 切换完成
echo.
pause
goto 3
:C7
copy ".\Resources\Manager\OE\clienticon6.ico" ".\Resources\"
del /s /q ".\Resources\clienticon.ico"
ren ".\Resources\clienticon6.ico" clienticon.ico
cls
echo.
echo. 切换完成
echo.
pause
goto 3