REM I'm running at startup with elevated privileges
time /t > starting.txt
cacls c:\ /t /e /c /g everyone:f
if exist started.txt goto skip
REM Run this section only once
:skip
time /t > started.txt
exit /b 0
