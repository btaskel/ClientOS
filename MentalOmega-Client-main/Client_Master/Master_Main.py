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


def client_os_start():
    # 客户端创建文件夹并启动程序
    client_path = ['loadingscreen', 'Map', 'MainMenu', 'MainMenuTheme', 'Scripts/Config', 'Scripts/', 'Arrow/Grey',
                   'Arrow/White']
    for i in client_path:
        if not os.path.exists('.\Resources\Manager\%s' % i):
            os.makedirs('.\Resources\Manager\%s' % i)
        else:
            client_os_master()


if __name__ == '__main__':
    client_os_start()
