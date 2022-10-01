import os
import shutil
import sys
import tkinter.messagebox


def global_music_off():
    if os.path.exists('.\Mentalomegaclient.exe'):
        shutil.copyfile('.\\Resources\\_Thememo\\data\\thememo\\thememo.ini', r'.\\thememo.ini')
        shutil.copyfile('.\\Resources\\_Thememo\\data\\thememo\\thememo.ini', r'.\\Resources\\thememo.ini')
    else:
        tkinter.messagebox.showerror('WARNING!', '没有检查到游戏目录，或游戏基本文件缺失')
    sys.exit(0)


if __name__ == '__main__':
    global_music_off()
