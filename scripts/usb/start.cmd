@call %~dp0/../../config/main

@set ADB_EXEC_BEFORE_COMMANDS[0]=echo Starting IP WebCam...
@set ADB_EXEC_BEFORE_COMMANDS[1]=rem call %adb_cmd_tools%/adb_restart

@if "%1"=="" (
	set init_cam=init_cam
) else (
	set init_cam=init_cam_%1
)

@set ADB_EXEC_COMMANDS[0]=adb devices
@set ADB_EXEC_COMMANDS[1]=adb !ADB_EXEC_USETCP_OPT! shell am startservice -S -W -n com.flybbit.remotecontrol/com.flybbit.remotecontrol.ScreenOnServ
@set ADB_EXEC_COMMANDS[2]=adb !ADB_EXEC_USETCP_OPT! shell am start -S -W -n com.pas.webcam/com.pas.webcam.Rolling
@set ADB_EXEC_COMMANDS[3]=adb !ADB_EXEC_USETCP_OPT! shell am startservice -S -W -n com.flybbit.remotecontrol/com.flybbit.remotecontrol.ScreenOffServ
@set ADB_EXEC_COMMANDS[4]=call %~dp0/%init_cam%



@set ADB_EXEC_AFTER_COMMANDS[0]=echo DONE

@call %adb_cmd_tools%/adb_exec