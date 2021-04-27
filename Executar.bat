@echo off
rem comentario
title "Aula 02 - Programação Batch"
mode 60, 30
color 0a
:inicio
cls
echo.
echo ==========================
echo      MENU PRINCIPAL
echo ==========================
echo [W] Executar o Word
echo [E] Executar o Excel
echo [P] Executar o PowerPoint
echo [A] Executar o Acess
echo [I] Acessar a Web
echo [T] Testar Conexao de Rede
echo [C] Calculadora
echo [S] Sair do Script
echo ==========================
echo.
set/p op=Digite a opcao desejada:

if /i %op% == w (goto:word)
if /i %op% == e (goto:excel)
if /i %op% == p (goto:power)
if /i %op% == a (goto:acess)
if /i %op% == i (goto:web)
if /i %op% == t (goto:teste)
if /i %op% == c (goto:calculadora)
if /i %op% == s (goto:sair) else (
	echo.
	echo --------------
	echo  OPÇÃO INVÁLIDA!
	echo --------------
	pause > nul
	goto:inicio)
	
:word
start winword.exe
goto:inicio

:excel
start excel.exe
goto:inicio

:power
start powerpnt.exe
goto:inicio

:acess
start msaccess.exe
goto:inicio

:web
echo.
set /p site=Digite o endereco da pagina :
start %site%
goto:inicio

:teste
echo.
set /p conexao=Digite o IP da Maquina ou endereco web:
ping %conexao% -t
goto:inicio

:calculadora
start calc.exe
goto:inicio

:sair
echo.
set /p resp=Deseja realmente sair [S/N]:
if /i %resp% == s (exit) else (
	echo.
	goto:inicio)