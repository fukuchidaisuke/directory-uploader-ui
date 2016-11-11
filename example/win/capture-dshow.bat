rem �L���v�`���f�o�C�X
rem ���j���[�́u���f�B�A�v->�u�L���v�`���[�f�o�C�X���J���v�ɂ���r�f�I�f�o�C�X������I��
if "%DEVICE%"=="" set DEVICE="eMPIA HDMI Grabber"
rem ���͂̃t���[�����[�g
if "%FPS%"=="" set /A FPS=30
rem ���͂̉��c�䗦
if "%ASPECT%"=="" set ASPECT=16:9

rem ���b���Ƃɉ摜��ۑ����邩
if "%INTERVAL%"=="" set INTERVAL=10
rem �o�̓T�C�Y
if "%OUTPUT_SIZE%"=="" set OUTPUT_SIZE=1920x1080

rem �摜��ۑ�����t�H���_
if "%DIR%"=="" set DIR=image
rem �摜�t�@�C�����̐ړ���
if "%PREFIX%"=="" set PREFIX=""
if "%FORMAT%"=="" set FORMAT=jpg

if "%VLC%"=="" set VLC="VLCPortable\VLCPortable.exe"


for /F "delims=x tokens=1-2" %%1 in ("%OUTPUT_SIZE%") do (
    set WIDTH=%%1
    set HEIGHT=%%2
)
set /A RATIO=%FPS%*%INTERVAL%

call backup.bat

%VLC% --video-filter=scene ^
      --scene-format=%FORMAT% ^
      --scene-width=%WIDTH% ^
      --scene-height=%HEIGHT% ^
      --scene-prefix=%PREFIX% ^
      --scene-path=%DIR% ^
      --scene-ratio=%RATIO% ^
      dshow:// ^
      :dshow-vdev=%DEVICE% ^
      :live-caching=300 ^
      --aspect-ratio=%ASPECT%
