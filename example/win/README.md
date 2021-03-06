# キャプチャデバイスから取り出した画像のアップロード

+ [Java ランタイムの準備](#java)
+ [directory-uploader-ui の準備](#uploader)
+ [VLC の準備](#vlc)
+ [ffmpeg の準備](#ffmpeg)
+ [設定](#config)
+ [実行](#exec)


## <div id="java"/>Java ランタイムの準備</div>

アップロードプログラムを実行するために Java ランタイムが必要になる。

例えば、以下のどちらかからダウンロードしてインストールする。

+ https://java.com/download/
+ [Java SE Downloads](http://www.oracle.com/technetwork/java/javase/downloads/index.html) の JRE DOWNLOAD

上だと余計なものを入れようとするから、下の方がおすすめ。


## <div id="java"/>directory-uploader-ui の準備</div>

例えば、[directory-uploader-ui](../../README.md) に従って jar をつくる。


## <div id="vlc"/>VLC の準備</div>

映像を画面に映しながら画像を取り出すために VLC を使う。

例えば、以下のどちらかからダウンロードしてインストールする。

+ [VLC Media Player](http://www.videolan.org/vlc/)
+ [VLC Media Player Portable](http://portableapps.com/apps/music_video/vlc_portable)

VLC Media Player Portable は、インストールと言っても展開するだけ。


## <div id="ffmpeg"/>ffmpeg の準備</div>

映像を画面に映さずに画像を取り出すために ffmpeg を使う。

例えば、以下からダウンロードして展開する。

+ https://ffmpeg.zeranoe.com/builds/


## <div id="config"/>設定</div>

[uploader.bat](uploader.bat), capture-\*.bat, capture-\*-without-display.bat をエディタで開いて、変数値を自分の環境に合わせて変更する。


## <div id="exec"/>実行</div>

映像を画面に映す場合は [uploader.bat](uploader.bat) と capture-\*.bat を、映さない場合は [uploader.bat](uploader.bat) と capture-\*-without-display.bat を実行する。
