@call %~dp0/../../config/main

@set ADB_EXEC_BEFORE_COMMANDS[0]=echo Stoping IP WebCam...
@set ADB_EXEC_BEFORE_COMMANDS[1]=call %adb_cmd_tools%/adb_restart

@set ADB_EXEC_COMMANDS[0]=adb devices
@set ADB_EXEC_COMMANDS[1]=adb !ADB_EXEC_USETCP_OPT! shell am force-stop com.pas.webcam
@set ADB_EXEC_COMMANDS[2]=adb !ADB_EXEC_USETCP_OPT! shell am startservice -S -W -n com.flybbit.remotecontrol/com.flybbit.remotecontrol.ScreenOffServ

@set ADB_EXEC_AFTER_COMMANDS[0]=echo DONE

@call %adb_cmd_tools%/adb_exec