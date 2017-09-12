@if "%1"=="" (
	@echo Wrong URL
	goto:eof
)

@if "%2"=="" (
	set pvalue=!%1!
) else (
	set pvalue=%2
)

@if "%3"=="" (
	set pname=set
) else (
	set pname=%3
)


@set CURL_PARAMS.URL=%WEBCAM_SERV%/settings/%1
@set CURL_PARAMS.METHOD=GET
@set CURL_PARAMS[0].Name=%pname%
@set CURL_PARAMS[0].Value=%pvalue%

@echo camera setting %1 = %pvalue%