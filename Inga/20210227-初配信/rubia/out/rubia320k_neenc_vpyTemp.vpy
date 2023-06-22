import sys
sys.path.append(r'F:\vTools\NegativeEncoder\Libs\site-packages')

from vapoursynth import core, YUV420P8

VIDEO_PATH = r'F:\subt\inga\20210227-初配信\rubia\rubia320k.mp4'
SUB_PATH = r'F:\subt\inga\20210227-初配信\rubia\rubia320k.ass'

video = core.lsmas.LWLibavSource(VIDEO_PATH)
video = core.resize.Bicubic(video, format=YUV420P8)
video = core.vsf.TextSub(video, SUB_PATH)
video.set_output()
