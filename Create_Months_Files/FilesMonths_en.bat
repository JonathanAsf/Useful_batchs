@echo off
setlocal enabledelayedexpansion

set "months=January February March April May June July August September October November December"
set /a count=1

for %%m in (%months%) do (
    if !count! LSS 10 (
        mkdir "0!count! - %%m"
    ) else (
        mkdir "!count! - %%m"
    )
    set /a count+=1
)

