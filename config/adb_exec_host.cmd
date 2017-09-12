@if defined ip_webcam_config_adb_exec_host goto:eof
@set ip_webcam_config_adb_exec_host=1

@rem net scripts call this cmd evry time at the very beginning
@rem you can override default value of webcamhost before calling this script

@call %~dp0/main
@if NOT DEFINED webcam_adb_port (@set webcam_adb_port=5555)
@if NOT DEFINED ADB_EXEC_HOST (@set ADB_EXEC_HOST=%webcam_host%:%webcam_adb_port%)


@echo.
@echo webcam_adb_port = %webcam_adb_port%
@echo ADB_EXEC_HOST = %ADB_EXEC_HOST%


