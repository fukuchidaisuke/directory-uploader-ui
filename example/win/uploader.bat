rem �A�b�v���[�h��T�[�o�[
if "%SERVER%"=="" set SERVER=http://localhost:8080/rest
rem �T�[�o�[�ɖ���� ID
if "%ID%"=="" set ID=""
rem �T�[�o�[�̔F�؃g�[�N��
if "%TOKEN%"=="" set TOKEN=""
rem �T�[�o�[�ŕR�t�����[�U�[
if "%USER%"=="" set USER=realglobe

rem �Ď�����t�H���_
if "%DIR%"=="" set DIR=image
rem �A�b�v���[�h����t�@�C���̎��
if "%EXTENSION%"=="" set EXTENSION=jpg,jpeg,png,bmp,gif,tiff
rem �A�b�v���[�h����t�@�C���̍ŏ��T�C�Y
if "%MIN%"=="" set MIN=1024
rem �A�b�v���[�h����t�@�C���̍ő�T�C�Y
if "%MAX%"=="" set MAX=8388608

if "%JAVA%"=="" set JAVA=java
if "%JAR%"=="" set JAR=directory-uploader-ui-1.3.1-jar-with-dependencies.jar


%JAVA% -jar %JAR% ^
       --server %SERVER% ^
       --id %ID% ^
       --token %TOKEN% ^
       --user %USER% ^
       --watchDir %DIR% ^
       --ext %EXTENSION% ^
       --min %MIN% ^
       --max %MAX%
