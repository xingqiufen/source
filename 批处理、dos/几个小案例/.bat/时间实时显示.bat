@echo off
setlocal enabledelayedexpansion
MODE con: COLS=87 LINES=10

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set h0=．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．
set h1=████．．．．█．████．████．█．．█．████．████．████．████．████．．．．．．
set h2=█．．█．．．．█．．．．█．．．．█．█．．█．█．．．．█．．．．．．．█．█．．█．█．．█．．．．．．
set h3=█．．█．．．．█．．．．█．．．．█．█．．█．█．．．．█．．．．．．．█．█．．█．█．．█．．．█．．
set h4=█．．█．．．．█．████．████．████．████．████．．．．█．████．████．．．．．．
set h5=█．．█．．．．█．█．．．．．．．█．．．．█．．．．█．█．．█．．．．█．█．．█．．．．█．．．█．．
set h6=█．．█．．．．█．█．．．．．．．█．．．．█．．．．█．█．．█．．．．█．█．．█．．．．█．．．．．．
set h7=████．．．．█．████．████．．．．█．████．████．．．．█．████．████．．．．．．
set h8=．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．．
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

 

set sn=0&set cr=0&set colr=bc2d9ea
:tim
:::::::::::::::::::::颜色设置:::::::::::::::::::::::
set clr=!colr:~%cr%,1!
if !sn!==0 set/a cr+=1
if !cr! equ 7 set cr=0
color !clr!!W7!
:::::::::::::::::::::读取时间:::::::::::::::::::::::
set  W0=%time:~0,1%
if "!W0!"=="" set W1=0
set  W1=%time:~1,1%
set  W2=10
set  W3=%time:~3,1%
set  W4=%time:~4,1%
set  W5=10
set  W6=%time:~6,1%
set  W7=%time:~7,1%
for /l %%k in (0,1,7) do (set/a hx%%k=!W%%k!*5)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set tme=%time:~0,8%
set dat=%date%
title %dat% 【当前时间：!tme!】
cls
:::::::::::::::::::::::显示:::::::::::::::::::::::::
if !sn!==0 echo ．．．．．．．．．．．．．．．．．^
．．．．．．．．．．．．．．．．．．．．．．．．．．
if !sn!==1 echo.
for /l %%j in (1,1,7) do (
set DW0=!h%%j:~%hx0%,5!
set DW1=!h%%j:~%hx1%,5!
set DW2=!h%%j:~%hx2%,5!
set DW3=!h%%j:~%hx3%,5!
set DW4=!h%%j:~%hx4%,5!
set DW5=!h%%j:~%hx5%,5!
set DW6=!h%%j:~%hx6%,5!
set DW7=!h%%j:~%hx7%,5!
set Hg=．!DW0!!DW1!!DW2!!DW3!!DW4!!DW5!!DW6!!DW7!．．
if !sn!==1 (set Hg=!Hg:．=  !)
echo !Hg!)
if !sn!==0 echo ．．．．．．．．．．．．．．．．．^
．．．．．．．．．．．．．．．．．．．．．．．．．．

if !sn!==0 (set sn=1) else (set sn=0)
:::::::::::::::::::::::延时:::::::::::::::::::::::::
:ys
set W=%time:~7,1%
if !W! equ !W7! goto ys
goto tim

::::::::::::::::::::::到这里结束:::::::::::::::::::::

