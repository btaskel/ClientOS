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

from werkzeug.utils import secure_filename
from flask import Flask, request, redirect, render_template, url_for

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False


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
    client_os_flask()
