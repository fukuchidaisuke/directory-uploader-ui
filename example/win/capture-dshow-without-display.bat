rem �L���v�`���f�o�C�X
rem �񋓂�����@�� ffmpeg.exe -list_devices true -f dshow -i dummy
if "%DEVICE%"=="" set DEVICE="eMPIA HDMI Grabber"

rem ���b���Ƃɉ摜��ۑ����邩
if "%INTERVAL%"=="" set INTERVAL=10
rem �o�̓T�C�Y
if "%OUTPUT_SIZE%"=="" set OUTPUT_SIZE=1920x1080

rem �摜��ۑ�����t�H���_
if "%DIR%"=="" set DIR=image
rem �摜�t�@�C�����̐ړ���
if "%PREFIX%"=="" set PREFIX=""
if "%FORMAT%"=="" set FORMAT=jpg

if "%FFMPEG%"=="" set FFMPEG="ffmpeg-3.2-win64-static\bin\ffmpeg.exe"


call backup.bat

%FFMPEG% -rtbufsize 128MB ^
         -f dshow ^
         -i video=%DEVICE% ^
         -vf fps=1/%INTERVAL%,scale=%OUTPUT_SIZE% ^
         %DIR%\\%PREFIX%%%05d.%FORMAT%
