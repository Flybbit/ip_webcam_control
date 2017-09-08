@set ADB_EXEC_BEFORE_COMMANDS[1]=echo Starting IP WebCam...
@set ADB_EXEC_BEFORE_COMMANDS[2]=call %adb_cmd_tools%/adb_restart
@set ADB_EXEC_BEFORE_COMMANDS.length=2

@set ADB_EXEC_COMMANDS[1]=adb devices
@set ADB_EXEC_COMMANDS[2]=adb !ADB_EXEC_USETCP_OPT! shell am startservice -S -W -n com.flybbit.remotecontrol/com.flybbit.remotecontrol.ScreenOnServ
@set ADB_EXEC_COMMANDS[3]=adb !ADB_EXEC_USETCP_OPT! shell am start -S -W -n com.pas.webcam/com.pas.webcam.Rolling
@set ADB_EXEC_COMMANDS[4]=adb !ADB_EXEC_USETCP_OPT! shell am startservice -S -W -n com.flybbit.remotecontrol/com.flybbit.remotecontrol.ScreenOffServ
@set ADB_EXEC_COMMANDS.length=4

@set ADB_EXEC_AFTER_COMMANDS[1]=echo DONE
@set ADB_EXEC_AFTER_COMMANDS.length=1

@call %adb_cmd_tools%/adb_exec