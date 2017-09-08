
@rem net scripts call this cmd evry time at the very beginning
@rem you can override default value of webcamhost before calling this script

@if NOT DEFINED webcamhost (set webcamhost=192.168.1.11:5555)
@set ADB_EXEC_HOST=%webcamhost%

@echo.
@echo webcamhost = %webcamhost%
