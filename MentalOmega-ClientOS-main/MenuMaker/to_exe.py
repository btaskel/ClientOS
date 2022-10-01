from PyInstaller.__main__ import run

if __name__ == '__main__':
    opts = [r'main.py',  # 主程序文件
            r'-n MentalOmegaClientOS&Imaginary Master',  # 可执行文件名称
            r'-F',  # 打包单文件
            r'-y',
            # r'-w',  # 是否以控制台黑窗口运行
            r'--icon=./favicon.ico',  # 可执行程序图标
            r'--clean',
            r'--workpath=build',
            # r'--add-data=templates;templates',  # 打包包含的HTML页面
            # r'--add-data=static;static',  # 打包包含的静态资源
            r'--distpath=build',
            r'--specpath=./'
            ]

    run(opts)
