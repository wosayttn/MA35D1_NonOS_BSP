cd MA35D1_NuWriter

:forever_develop
py -3 nuwriter.py -a ddrimg\enc_ddr3_winbond_256mb.bin
IF %ERRORLEVEL% EQU 0 (
   @rem py -3 nuwriter.py -w ddr 0x88000000 ../../../FreeRTOS_Dual_LVGL_STREAM/FreeRTOS_Core1_STREAM/GCC/MA35D1_1920x1080/stream_ma35d1.bin
   py -3 nuwriter.py -o execute -w ddr 0x80400000 ../../../FreeRTOS_Dual_LVGL_STREAM/FreeRTOS_Core0_LVGL/GCC/MA35D1_1920x1080/lvgl_ma35d1.bin
)
pause

goto :forever_develop
