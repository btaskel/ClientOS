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
from Master import client_os_master


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


if __name__ == '__main__':
    client_os_start()
