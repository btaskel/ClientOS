# 获取压缩包所在目录
import os
import time
import shutil
import zipfile


def copy_ini():
    # 获取压缩包所在目录
    zip_dir = os.path.join(os.path.dirname(os.path.dirname(__file__)), 'zip')
    # 获取压缩包所在目录下所有文件
    zip_files = os.listdir(zip_dir)
    # 获取当前时间
    now = time.strftime('%Y%m%d%H%M%S', time.localtime(time.time()))
    # 生成压缩包存放的目录
    zip_dir = os.path.join(zip_dir, now)
    # 创建目录
    os.makedirs(zip_dir)
    # 遍历所有文件
    for zip_file in zip_files:
        # 获取压缩包的绝对路径
        zip_file = os.path.join(zip_dir, zip_file)
        # 解压缩
        zip = zipfile.ZipFile(zip_file)
        zip.extractall(zip_dir)
        zip.close()
        # 删除压缩包
        os.remove(zip_file)
    # 获取解压缩后的目录
    ini_dir = os.path.join(zip_dir, 'ini')
    # 获取解压缩后的目录下所有文件
    ini_files = os.listdir(ini_dir)
    # 遍历所有文件
    for ini_file in ini_files:
        # 获取ini文件的绝对路径
        ini_file = os.path.join(ini_dir, ini_file)
        # 获取ini文件的文件名
        ini_name = os.path.basename(ini_file)
        # 获取ini文件所在目录
        ini_path = os.path.dirname(ini_file)
        # 获取配置文件所在目录
        conf_dir = os.path.join(os.path.dirname(os.path.dirname(__file__)), 'config')
        # 获取配置文件所在目录下所有文件
        conf_files = os.listdir(conf_dir)
        # 遍历所有文件
        for conf_file in conf_files:
            # 获取配置文件的绝对路径
            conf_file = os.path.join(conf_dir, conf_file)
            # 获取配置文件的文件名
            conf_name = os.path.basename(conf_file)
            # 判断文件名是否相同
            if ini_name == conf_name:
                # 复制文件
                shutil.copy(ini_file, conf_file)
                # 删除文件
                os.remove(ini_file)
