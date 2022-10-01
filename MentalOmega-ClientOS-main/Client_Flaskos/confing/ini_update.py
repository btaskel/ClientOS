# 比较INI文件并比较是否相同

import sys


def data_block(file_stream):
    global line_list, var
    flag = False
    for line in file_stream:
        line = line.strip()
        if line.startswith('[') and line.endswith(']'):

            if flag:
                yield var
            line_list = []
            line_list.append(('tag', line))
        elif line == "":
            continue
        else:
            line = line.split('=', 1)
            line = tuple(line)
            line_list.append(line)
            var = dict(line_list)
            flag = True
    yield var


def line_count(keywords, filename):
    """
    :param keywords: 对比旧文件，在新文件中改变值的键名或新增的键
    :return: 返回键所在的行号
    ：filename 文件名称
    """
    with open(filename) as fp:
        for index, line in enumerate(fp):
            if keywords in line:
                return index + 1


def compare_config(dict1, dict2):
    """
    遍历新文件中的每个键是否在旧文件中存在，如果存在，则比较值是否相同，不相同则打印配置更新，和所在的位置
    否则视为在新文件中新增的项
    :return:
    """
    for k2 in dict2.keys():
        k1 = list(dict1.keys())
        if k2 in k1:
            if dict2[k2] != dict1[k2]:
                count = line_count(dict2['tag'], file2)
                print(f'{dict2["tag"]}中配置项值更新：{k2}={dict1[k2]}-->{k2}={dict2},位置在第{count}行')
        else:
            count = line_count(k2, file2)
            print(f'{dict2["tag"]}中新增配置项：{k2}={dict2[k2]},位置在第{count}行')

    # 新文件中删除了哪些项，在旧文件中有，在新文件中没有的项
    set1 = set(dict1.keys())
    set2 = set(dict2.keys())
    deleteKeys = set1 - set2
    for k1 in deleteKeys:
        count = line_count(dict1['tag'], file1)
        print('新文件%s中删除了配置：%s=%s，位置在旧文件中的第%s行' % (dict2['tag'], k1, dict1[k1], count))


def delete_config(dict1_tag, dict2_tag, data_list1):
    delete_section = set(dict1_tag) - set(dict2_tag)
    for dict1 in data_list1:
        if dict1['tag'] in delete_section:
            count = line_count(dict1['tag'], file1)
            print('新文件中已经删除了配置%s，位置在旧文件中的第%s行' % (dict1['tag'], count))
            dict1.pop('tag')
            for k1, v1 in dict1.items():
                print(k1 + ' = ' + v1)


if __name__ == '__main__':

    try:
        file1 = sys.argv[1]
        file2 = sys.argv[2]
    except IndexError:
        print('userage:xxx.py oldfile newfile')
        sys.exit(1)
    with open(file1, 'r') as fp1:
        data_list1 = []
        a1 = data_block(fp1)
        for i in a1:
            data_list1.append(i)
        dict1_tag = []
        for dict1 in data_list1:
            dict1_tag.append(dict1['tag'])
    with open(file2, 'r') as fp2:
        data_list2 = []
        a2 = data_block(fp2)
        for i in a2:
            data_list2.append(i)
        dict2_tag = []
        for dict2 in data_list2:
            dict2_tag.append(dict2['tag'])

    for dict2 in data_list2:
        if dict2['tag'] in dict1_tag:
            for dict1 in data_list1:
                if dict1['tag'] == dict2['tag']:
                    """dict1,dict2是键值对字典"""
                    compare_config(dict1, dict2)

        else:
            print('新文件中新增%s配置,配置项如下：' % dict2['tag'])
            dict2.pop('tag')
            for k2, v2 in dict2.items():
                print(k2 + ' = ' + v2)
    delete_config(dict1_tag, dict2_tag, data_list1)
