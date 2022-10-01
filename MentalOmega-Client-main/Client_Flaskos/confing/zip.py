import os
import zipfile
import shutil


def unzip_file(zip_path):
    filenames = os.listdir(zip_path)  # 获取目录下所有文件名
    for filename in filenames:
        filepath = os.path.join(zip_path, filename)
        zip_file = zipfile.ZipFile(filepath)  # 获取压缩文件

        # print(filename)

        newfilepath = filename.split('.', 1)[0]  # 获取压缩文件的文件名
        newfilepath = os.path.join(zip_path, newfilepath)

        # print(newfilepath)

        if os.path.isdir(newfilepath):  # 根据获取的压缩文件的文件名建立相应的文件夹
            pass
        else:
            os.mkdir(newfilepath)
        for name in zip_file.namelist():  # 解压文件
            zip_file.extract(name, newfilepath)
        zip_file.close()
        Conf = os.path.join(newfilepath, 'conf')
        if os.path.exists(Conf):  # 如存在配置文件，则删除（需要删则删，不要的话不删）
            shutil.rmtree(Conf)
        if os.path.exists(filepath):  # 删除原先压缩包
            os.remove(filepath)
        print(f'解压{filename}成功')


if __name__ == '__main__':
    unzip_file('./Resources/Manager/')
