cd C:\install\Sniffdogminer-master\monitor
@echo off
mode con cols=75 lines=20
set max_temp=79
cls
:begin
FOR /L %%A IN (60,-1,0) DO (
  cls
  echo Timeout [92;1m%%A[0m seconds...
  timeout /t 1 >nul
)
:start
cls
:measure
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=0 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage0=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=1 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage1=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=2 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage2=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=3 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage3=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=4 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage4=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=5 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage5=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=6 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage6=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=7 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage7=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=8 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage8=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=9 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage9=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=10 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage10=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=11 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage11=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=12 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage12=%%p


set /a total=%gpu_usage0%+%gpu_usage1%+%gpu_usage2%+%gpu_usage3%+%gpu_usage4%+%gpu_usage5%+%gpu_usage6%+%gpu_usage7%+%gpu_usage8%+%gpu_usage9%+%gpu_usage10%+%gpu_usage11%+%gpu_usage12%
set /a gpu_average=%total%/13

for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=0 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp0=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=1 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp1=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=2 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp2=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=3 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp3=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=4 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp4=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=5 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp5=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=6 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp6=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=7 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp7=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=8 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp8=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=9 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp9=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=10 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp10=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=11 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp11=%%p
for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=12 --query-gpu^=temperature.gpu --format^=csv^,noheader^,nounits') do set gpu_temp12=%%p

:end_for
cls
echo Average Usage of 13 GPUs usage is %gpu_average%%%
if %gpu_average% GTR 40 (
   echo [92;1mMining is working[0m
   echo [102;92;1mMining is working[0m
   echo.

   echo GPU 0: %gpu_usage0%   GPU 1 : %gpu_usage1%   GPU 2 : %gpu_usage2%  
   echo GPU 3: %gpu_usage3%   GPU 4 : %gpu_usage4%   GPU 5 : %gpu_usage5%  
   echo GPU 6: %gpu_usage6%   GPU 7 : %gpu_usage7%   GPU 8 : %gpu_usage8% 
   echo GPU 9: %gpu_usage9%   GPU 10: %gpu_usage10%  GPU 11: %gpu_usage11%    
   echo GPU 12:%gpu_usage12%   

  echo [92;1m
  if %gpu_temp0% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp1% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp2% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp3% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp4% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp4% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp5% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp6% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp7% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp8% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp9% GTR %max_temp% ( echo [101;93m) 
  if %gpu_temp10% GTR %max_temp% ( echo [101;93m)
  if %gpu_temp11% GTR %max_temp% ( echo [101;93m) 

   echo GPU 0: %gpu_temp0%C   GPU 1 : %gpu_temp1%C   GPU 2 : %gpu_temp2%C  
   echo GPU 3: %gpu_temp3%C   GPU 4 : %gpu_temp4%C   GPU 5 : %gpu_temp5%C  
   echo GPU 6: %gpu_temp6%C   GPU 7 : %gpu_temp7%C   GPU 8 : %gpu_temp8%C 
   echo GPU 9: %gpu_temp9%C   GPU 10: %gpu_temp10%C   GPU 11: %gpu_temp11%C    
   echo GPU 12:%gpu_temp12%C   
   echo [0m
   timeout /t 30 >nul
   goto :start


)

set log_file=mining_problems_log.txt
set ping_time=500
FOR /F "skip=8 tokens=10" %%G in ('ping -n 3 google.com') DO set ping_time=%%G
if %ping_time% GTR 0 (
   
   echo Control checking of GPUs usage, timeout 60 sec...
   echo GPU 0: %gpu_usage0%   GPU 1 : %gpu_usage1%   GPU 2: %gpu_usage2% 
   echo GPU 3: %gpu_usage3%   GPU 4 : %gpu_usage4%   GPU 5: %gpu_usage5% 
   echo GPU 6: %gpu_usage6%   GPU 7 : %gpu_usage7%   GPU 8 : %gpu_usage8% 
   echo GPU 9: %gpu_usage9%   GPU 10: %gpu_usage10%    GPU 11: %gpu_usage11%   
   echo GPU 12:%gpu_usage12%   

   timeout /t 60 >nul
   goto:recheck
   :endrecheck
   if %gpu_average% GTR 40 (
      echo ------------------- %date% %time% reboot warning>> %log_file%
      goto :start
   )
   echo.
   echo Average Usage of 13 GPUs usage is [93m%gpu_average%%%[0m
   echo.
   
   echo ping is [92m%ping_time%[0m - OK, not internet problem
   timeout /t 5 >nul
   goto :endif
)
:else
   cls
   echo      %date% %time% No internet connection>> %log_file%
   echo No internet connection, keep working...
   timeout /t 5 >nul
   goto :begin
:endif

SET mypath=%~dp0
SET scrpath=%mypath%Scr
if not exist "%scrpath%" mkdir "%scrpath%"

cd\ C:\install\Sniffdogminer-master
nircmd.exe savescreenshot "%date% %random%.png"
rem echo "%scrpath%%DATE:~6,4%.%DATE:~3,2%.%DATE:~0,2% %TIME:~0,-9%-%TIME:~3,2%-%TIME:~6,2%.png"

echo.>> %log_file%
echo ---------------------------------------------------------------------------------------------------->> %log_file%
echo.>> %log_file%
echo PC was restarted at %date% %time%>> %log_file%, mining issue. GPUs usage is %gpu_average%%%
"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi">> %log_file%
echo.>> %log_file%
echo ---------------------------------------------------------------------------------------------------->> %log_file%
echo.>> %log_file%
echo GPU 0: %gpu_usage0%   GPU 1 :%gpu_usage1%   GPU 2: %gpu_usage2%  >> %log_file%
echo GPU 3: %gpu_usage3%   GPU 4 :%gpu_usage4%   GPU 5: %gpu_usage5% >> %log_file%
echo GPU 6: %gpu_usage6%   GPU 7 :%gpu_usage7%   GPU 8: %gpu_usage8% >> %log_file%
echo GPU 9: %gpu_usage9%   GPU 10:%gpu_usage10%   GPU 11: %gpu_usage11% >> %log_file%
echo GPU 12:%gpu_usage12% >> %log_file%
echo.>> %log_file%
echo GPU 0: %gpu_temp0%C   GPU 1 : %gpu_temp1%C   GPU 2 : %gpu_temp2%C  >> %log_file%
echo GPU 3: %gpu_temp3%C   GPU 4 : %gpu_temp4%C   GPU 5 : %gpu_temp5%C  >> %log_file%
echo GPU 6: %gpu_temp6%C   GPU 7 : %gpu_temp7%C   GPU 8 : %gpu_temp8%C >> %log_file%
echo GPU 9: %gpu_temp9%C   GPU 10: %gpu_temp10%C   GPU 11: %gpu_temp11%C >> %log_file%   
echo GPU 12:%gpu_temp12%C >> %log_file%

echo [101;93mMining is NOT working, rebooting in 10 seconds...[0m
timeout /t 10 >nul
shutdown.exe /r /t 00 /f
goto :end



:recheck
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=0 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage0=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=1 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage1=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=2 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage2=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=3 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage3=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=4 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage4=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=5 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage5=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=6 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage6=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=7 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage7=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=8 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage8=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=9 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage9=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=10 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage10=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=11 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage11=%%p
   for /F %%p in ('"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi" --id^=12 --query-gpu^=utilization.gpu --format^=csv^,noheader^,nounits') do set gpu_usage12=%%p
   
   set /a total=%gpu_usage0%+%gpu_usage1%+%gpu_usage2%+%gpu_usage3%+%gpu_usage4%+%gpu_usage5%+%gpu_usage6%+%gpu_usage7%+%gpu_usage8%+%gpu_usage9%+%gpu_usage10%+%gpu_usage11%+%gpu_usage12%
   set /a gpu_average=%total%/13
goto :endrecheck
:end
