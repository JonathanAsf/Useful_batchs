@echo off
ipconfig /release
ipconfig /flushdns
ipconfig /renew
ipconfig /registerdns
nbtstat -R
nbtstat -RR
netsh int ip reset
netsh winsock reset
