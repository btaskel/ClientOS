"""
//
// Copyright 2022 Bt & C-Cay Bing_John Inc.
//
// HTML <H5> and JavaScript <JS> and corresponding source code is free
// software: you can redistribute it and/or modify it under the terms of
// the GNU General Public License as published by the Free Software Foundation,
// either version 3 of the License, or (at your option) any later version.

// HTML <H5> and JavaScript <JS> and corresponding source code is distributed
// in the hope that it will be useful, but with permitted additional restrictions
// under Section 7 of the GPL. See the GNU General Public License in LICENSE.TXT
// distributed with this program. You should have received a copy of the
// GNU General Public License along with permitted additional restrictions
// with this program. If not, see #todo GitHub Url for the location of the GNU

/* $Header: /Code/main.py 1     02/09/22 00:00a blue623 & C-Cay Bing_John $ */
/***********************************************************************************************
 ***              C O N F I D E N T I A L  ---  B L U E 6 2 3 - J L B  S T U D I O S         ***
 ***********************************************************************************************
 *                                                                                             *
 *                 Project Name : Attendance & Procedure                                       *
 *                                                                                             *
 *                    File Name : Run.py                                                       *
 *                                                                                             *
 *                   Programmer : blue623 & Joe L. Bing_John                              *
 *                                                                                             *
 *                   Start Date : June 30, 2022                                                *
 *                                                                                             *
 *                  Last Update : September 20, 2022 [Bt] [JLB]                                        *
 *                                                                                             *
 *---------------------------------------------------------------------------------------------*
  * Functions:                                                                                 *
 *   earch -- None                                                                             *
 * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
"""

import os
import sys
import time
import glob
import random
import shutil
import configparser
from flask_cors import CORS
from werkzeug.utils import secure_filename
from flask import Flask, request, redirect, render_template, url_for


def client_os_paths(relative_path):
    if hasattr(sys, 'MEIPASS'):
        return os.path.join(sys.MEIPASS, relative_path)
    return os.path.join(os.path.abspath('.'), relative_path)


def client_os_initer():
    if not os.path.exists('./Resources/Manager/Control.ini'):
        with open(r'./Resources/Manager/Control.ini', mode='w') as Control:
            Control.write(
                ''';-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --\n[Control]\n##Main switch ,True is on and false is off.\nEnable=true\n\n[Advanced setting]\n##****If you don't know what you are doing, please don't change the following settings!!!\n##Default configuration of Mental Omega\nRandom_start_number=1\nClient_Music_extension_name=wma\nClient_Music_name=chaoticimpulse\n\n[Script]\n##****If you don't know what you are doing, please don't change the following settings!!!\n##Default configuration of Mental Omega\nUsing_plug-in_scripts=false\nScript_type=bat''')
    if not os.path.exists('./Resources/Manager/Random.ini'):
        with open(r'./Resources/Manager/Random.ini', mode='w') as Random:
            Random.write(
                ''';-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --\n[Interface settings]\n##Picture format setting, jpg and png can be used.\nPicture=pbt\nLoadingscreen=true\nMainMenubg=true\nClient_music_name=true''')
    if not os.path.exists('./Resources/Manager/Other.ini'):
        with open(r'./Resources/Manager/Other.ini', mode='w') as Other:
            Other.write(
                ''';-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --\n[Start behavior]\n##Quick start under special circumstances.\nHigh_priority=true\n##Delete debug when TDA starts.\nAutomatically_delete_files=false''')
    if not os.path.exists('./Resources/Manager/BGM.ini'):
        with open(r'./Resources/Manager/BGM.ini', mode='w') as BGM_INI:
            BGM_INI.write(
                ''';-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --\n[Confing]\nMode=A1''')
    if not os.path.exists('./Resources/Manager/TPM.ini'):
        with open(r'./Resources/Manager/TPM.ini', mode='w') as TPM_INI:
            TPM_INI.write(
                ''';-- Manager v3.X Project version:Python, By : Bt & C-Cay Bing_John --\n[Confing]\nMode=M1''')


def client_os_start():
    # 客户端创建文件夹并启动程序
    client_path = ['loadingscreen', 'Map', 'MainMenu', 'MainMenuTheme', 'Scripts/Config', 'Scripts/', 'Arrow/Grey',
                   'Arrow/White']
    for i in client_path:
        if not os.path.exists('.\Resources\Manager\%s' % i):
            os.makedirs('.\Resources\Manager\%s' % i)
    else:
        client_os_initer()
        client_os_master()


def client_os_master():
    # 客户端高优先级设置

    # 强制退出进程
    def client_exit():
        if not os.path.exists('.\Resources\clientdx.exe'):
            sys.exit(0)

    # 备份配置文件
    def client_copy_file(file_old_path, file_new_path):
        for root, dirs, files in os.walk(f'{file_old_path}'):
            for file in files:
                src_file = os.path.join(root, file)
                shutil.copy(src_file, f'{file_new_path}')

    # 查看是否存在INI文件，如果不存在则创建

    # 读取INI
    Control = configparser.ConfigParser()
    Control.read('./Resources/Manager/Control.ini')

    Random = configparser.ConfigParser()
    Random.read('./Resources/Manager/Random.ini')

    Other = configparser.ConfigParser()
    Other.read('./Resources/Manager/Other.ini')

    # 总控
    Master_Switch = Control['Control']['Enable']
    RSN = Control['Advanced setting']['Random_start_number']
    Client_Music_namea = Control['Advanced setting']['Client_music_name']
    Client_Music_extension_name = Control['Advanced setting']['Client_Music_extension_name']

    # 脚本运行
    # Script = Control['Script']['Using_plug-in_scripts']
    # Script_weight = Control['Script']['Script_weight']

    # 随机化
    pic = Random['Interface settings']['Picture']
    Loadingscreen = Random['Interface settings']['Loadingscreen']
    MainMenu = Random['Interface settings']['MainMenubg']
    Client_music_name = Random['Interface settings']['Client_music_name']

    # 其他
    High_priority = Other['Start behavior']['High_priority']
    Automatically_delete_files = Other['Start behavior']['Automatically_delete_files']

    try:
        if High_priority:
            os.system('start /high '' .\Resources\clientdx.exe')
        else:
            os.startfile(f'.\\Resources\\clientdx.exe')
    except Exception as e:
        print(e)
        client_exit()

    if not Master_Switch:
        # Master总开关关闭
        os.startfile(f'.\\Resources\\clientdx.exe')
        client_exit()
    else:
        if Loadingscreen:
            R_Loadingscreen = len(glob.glob(f'.\\Resources\\Manager\\Loadingscreen\\*.{pic}'))
            if int(R_Loadingscreen) > 0:
                RP_Loadingscreen = random.randint(int(RSN), R_Loadingscreen)  # 2
                shutil.copyfile(f'.\\Resources\\Manager\\Loadingscreen\\{RP_Loadingscreen}.{pic}',
                                f'.\\Resources\\Loadingscreen.png')

        # 读取音乐包INI
        BGM_INI = configparser.ConfigParser()
        BGM_INI.read('./Resources/Manager/BGM.ini')
        BGM = BGM_INI['Confing']['Mode']

        with open(r'./Resources/Manager/BGM.ini', mode='r') as GET_BGM:
            READ_BGM = GET_BGM.read()
            bgm_pack = READ_BGM.split('=')

        if BGM[1] == 'A1':
            bgm_pack = 'bgm'
        if BGM[1] == 'A2':
            bgm_pack = 'bgm2'
        if BGM[1] == 'A3':
            bgm_pack = 'bgm3'
        if BGM[1] == 'A4':
            bgm_pack = 'bgm4'
        if BGM[1] == 'A5':
            bgm_pack = 'bgm5'
        if BGM[1] == 'A6':
            bgm_pack = 'bgm6'
        if BGM[1] == 'A7':
            bgm_pack = 'bgm7'

        if Client_music_name:
            # R_的意思代表得到的指定图片随机数 客户端音乐
            R_BGM = len(glob.glob(f'.\\Resources\\Manager\\{bgm_pack}\\*.{Client_Music_extension_name}'))
            if int(R_BGM) > 0:
                RP_BGM = random.randint(int(RSN), R_BGM)  # 1最终随机BGM名字
                shutil.copyfile(f'.\\Resources\\Manager\\{bgm_pack}\\{RP_BGM}.{Client_Music_extension_name}',
                                f'.\\Resources\\{Client_Music_namea}.{Client_Music_extension_name}')

        # 读取主题包INI
        if MainMenu:

            TPM_INI = configparser.ConfigParser()
            TPM_INI.read('./Resources/Manager/TPM.ini')
            TPM = TPM_INI['Confing']['Mode']

            with open(r'./Resources/Manager/TPM.ini', mode='r') as TPM_BGM:
                READ_TPM = TPM_BGM.read()
                Theme = READ_TPM.split('=')

            if TPM == 'M1':
                Theme = '1'
            if TPM == 'M2':
                Theme = '2'
            if TPM == 'M3':
                Theme = '3'
            if TPM == 'M4':
                Theme = '4'
            if TPM == 'M5':
                Theme = '5'
            # if TPM == 'MM6':
            #     Theme = '6'
            # 注意，MM6是缺少的，这并无错
            if TPM == 'M7':
                Theme = '7'
            if TPM == 'M8':
                Theme = '8'
            if TPM == 'M9':
                Theme = '9'
            if TPM == 'M10':
                Theme = '10'
            if TPM == 'M11':
                Theme = '11'

            shutil.copyfile(f'.\\Resources\\Manager\\MainMenu\\{Theme}.{pic}',
                            f'.\\Resources\\mainmenubg.png')
            client_copy_file(f'.\\Resources\\Manager\\TP\\{Theme}', '.\\Resources')

            # MM0为随机主题 主界面图片
            if TPM == 'MM0':
                R_TPM = len(glob.glob(f'.\\Resources\\Manager\\MainMenu\\*.{pic}'))
                if int(R_TPM) > 0:
                    RP_TPM = random.randint(int(RSN), R_TPM)
                    shutil.copyfile(f'.\\Resources\\Manager\\MainMenu\\{RP_TPM}.{pic}',
                                    f'.\\Resources\\MainMenu\\MainMenubg.png')
                    client_copy_file(f'.\\Resources\\Manager\\TP\\{RP_TPM}', '.\\Resources')

        # 清理日志 最后执行
        # 延迟启动 防止抢硬盘资源
        time.sleep(7)
        if Automatically_delete_files:
            if os.path.exists(r'.\syringe.log'):
                os.remove(r'.\syringe.log')
            if os.path.exists(r'debug'):
                os.removedirs(r'.\debug')
            if os.path.exists(r'Client'):
                if os.path.exists(r'.\Client\client.log'):
                    os.remove(r'.\Client\client.log')

    client_exit()


app = Flask(__name__, static_folder=client_os_paths('static'), template_folder=client_os_paths('templates'))
app.config['JSON_AS_ASCII'] = False
CORS(app, supports_credentials=True)


@app.route('/')
def client_os_app():
    return redirect(url_for('client_os_home'))


@app.route('/Home')
def client_os_home():
    return render_template('index.html')


@app.route('/Uploader', methods=['GET', 'POST'])
def client_os_upload_file():
    if request.method == 'POST':
        f = request.files['file']
        f.save(secure_filename(f.filename))
        return 'file uploaded successfully'


def client_os_flask():
    app.run(debug=True)


if __name__ == '__main__':
    client_os_start()
    client_os_flask()
