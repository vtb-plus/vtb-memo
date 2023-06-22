@echo off
"F:\vTools\NegativeEncoder\Libs\VSPipe.exe" --y4m "F:\subt\inga\20210227-初配信\rubia\rubia320k_neenc_vpyTemp.vpy" - | "F:\vTools\NegativeEncoder\Libs\QSVEncC64.exe" --y4m -i - -f mp4 -o "F:\subt\inga\20210227-初配信\rubia\rubia320k_neenc_tempVideo.mp4" --codec h264 --la-icq 23 -u faster --d3d
"F:\vTools\NegativeEncoder\Libs\ffmpeg.exe" -i "F:\subt\inga\20210227-初配信\rubia\rubia320k_neenc_tempVideo.mp4" -i "F:\subt\inga\20210227-初配信\rubia\rubia320k.mp4" -map 0:v -map 1:a -c copy -movflags faststart -f mp4 "F:\subt\inga\20210227-初配信\rubia\rubia320k_neenc.mp4"
@del "F:\subt\inga\20210227-初配信\rubia\rubia320k_neenc_vpyTemp.vpy"
@del "F:\subt\inga\20210227-初配信\rubia\rubia320k_neenc_tempVideo.mp4"
@del "F:\subt\inga\20210227-初配信\rubia\rubia320k_neenc_batTemp.bat"
