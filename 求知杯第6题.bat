@echo off
title 求知杯第6题
cls
echo 题目：将集合{1，2，……，19}中每两个互异的数作乘积，所有这种乘积的和为_.
echo 按下任意键开始计算
pause >nul
echo 题目：将集合{1，2，……，19}中每两个互异的数作乘积，所有这种乘积的和为_. >求知杯第6题.txt
::删除运行记录
set num=
set /a num=0
set t1=
set t2=
set /a t1=1
set tmp=
set /a t2=%t1%+1
::定义t1=1，t2=2
:loop
::小循环
set /a tmp=%t1%*%t2%
::计算乘积
set /a num=%num%+%tmp%
::写入乘积
set tmpecho=
set /a tmpecho=%num%-%tmp%
echo 计算过程：%tmpecho%+%t1%×%t2%=%num%
echo 计算过程：%tmpecho%+%t1%×%t2%=%num% >>求知杯第6题.txt
if /i %t2%==19 goto bigloop
::若t2==19，跳转大循环（t1自增，t2原始值自增）
set /a t2=%t2%+1
::否则只有t2自增
goto loop
::回到小循环
:bigloop
::大循环
set /a t1=%t1%+1
::t1自增
set /a t2=%t1%+1
::t1后第一个互异数赋值t2
if /i %t2%==20 if /i %t1%==19 goto result
::若穷举完成则输出结果
goto loop
::否则进入小循环
:result
echo 计算结果：%num%
echo 计算结果：%num% >>求知杯第6题.txt
echo 按下任意键退出程序
pause >nul