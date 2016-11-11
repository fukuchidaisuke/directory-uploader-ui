rem �L���v�`���f�o�C�X
rem �񋓂�����@�� ffmpeg.exe -f decklink -list_devices 1 -i dummy
if "%DEVICE%"=="" set DEVICE="Intensity Shuttle"
rem �񋓂�����@�� ffmpeg.exe -f decklink -list_formats 1 -i �f�o�C�X
if "%INPUT_FORMAT%" == "" set INPUT_FORMAT=9

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

%FFMPEG% -f declink ^
         -i %DEVICE%@%INPUT_FORMAT% ^
         -vf fps=1/%INTERVAL%,scale=%OUTPUT_SIZE% ^
         %DIR%\\%PREFIX%%%05d.%FORMAT%
