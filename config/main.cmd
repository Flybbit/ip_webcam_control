@if defined ip_webcam_control_config goto:eof
@set ip_webcam_control_config=1

@set def_night_vision=off
@set def_night_vision_gain=1
@set def_night_vision_average=2
@set def_scene_mode=auto
@set def_quality=30
@set def_exposure=0
@set def_video_size=960x720


@if NOT DEFINED night_vision (set night_vision=%def_night_vision%)
@if NOT DEFINED night_vision_gain (set night_vision_gain=%def_night_vision_gain%)
@if NOT DEFINED night_vision_average (set night_vision_average=%def_night_vision_average%)
@if NOT DEFINED scene_mode (set scene_mode=%def_scene_mode%)
@if NOT DEFINED quality (set quality=%def_quality%)
@if NOT DEFINED exposure (set exposure=%def_exposure%)
@if NOT DEFINED video_size (set video_size=%def_video_size%)



@if NOT DEFINED webcam_host (set webcam_host=192.168.1.11)
@if NOT DEFINED webcam_serv_port (set webcam_serv_port=8080)
@if NOT DEFINED WEBCAM_SERV (set WEBCAM_SERV=http://%webcam_host%:%webcam_serv_port%)





@echo.
@echo webcam_host = %webcam_host%
@echo webcam_serv_port = %webcam_serv_port%
@echo WEBCAM_SERV = %WEBCAM_SERV%
