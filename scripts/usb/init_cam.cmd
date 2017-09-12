@call %~dp0/../../config/main


@setlocal EnableDelayedExpansion

@set PARAMS[0].Name=night_vision
@rem set PARAMS[0].Value=off
@set PARAMS[1].Name=night_vision_gain
@set PARAMS[2].Name=night_vision_average
@set PARAMS[3].Name=scene_mode
@set PARAMS[4].Name=quality
@set PARAMS[5].Name=exposure
@rem @set PARAMS[6].Name=video_size



@set i=0


:loop

	@set pname=!PARAMS[%i%].NAME!

	@if "!pname!"=="" @goto exec
	@set pvalue=!PARAMS[%i%].VALUE!
	
	@call %adb_cmd_tools%/utils/curl "%~dp0/utils/set_param %pname% %pvalue%"

@set /a i=%i%+1

@goto loop

:exec

@endlocal