@echo off
setlocal enabledelayedexpansion

set "months=Janeiro Fevereiro Marco Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro"
set /a count=1

for %%m in (%months%) do (
    if !count! LSS 10 (
        mkdir "0!count! - %%m"
    ) else (
        mkdir "!count! - %%m"
    )
    set /a count+=1
)

