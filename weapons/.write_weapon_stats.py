import xlrd

def data_reader():
    data = xlrd.open_workbook(r'weapon_list.xlsx')
    table = data.sheets()[0]

    #读取登陆第三方STMP邮箱登陆信息
    mail_data = {
        'user': table.cell(1, 3).value,
        'password': table.cell(1, 4).value,
        'attachment': table.cell(1, 5).value,
    }

    #不同的发件人邮箱不同的第三方STMP地址设置
    if re.search('@foxmail.com', mail_data['user']) or re.search('@qq.com', mail_data['user']):
        mail_data['mail_host'] = 'stmp.qq.com'
        mail_data['port'] = 465
    if re.search('@163.com', mail_data['user']):
        mail_data['mail_host'] = 'smtp.163.com'
        mail_data['port'] = 25
    if re.search('@126.com', mail_data['user']):
        mail_data['mail_host'] = 'smtp.126.com'
        mail_data['port'] = 25
    if re.search('@sina.com', mail_data['user']):
        mail_data['mail_host'] = 'smtp.sina.com'
        mail_data['port'] = 25

    #遍历公司信息，将应聘邮件发给EXCEL中所有记录的公司
    for i in range(1,table.nrows):
        # print (table.row_values(i))
        company = table.row_values(i)
        email_sender(mail_data, company)
    return True
