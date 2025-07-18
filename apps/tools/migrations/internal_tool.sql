INSERT INTO tool (create_time, update_time, id, name, label, "desc", code, input_field_list, init_field_list, icon, is_active, scope, tool_type, template_id, workspace_id, init_params, user_id, folder_id) VALUES ('2025-03-10 06:20:35.945414 +00:00', '2025-03-10 09:19:23.608026 +00:00', 'c75cb48e-fd77-11ef-84d2-5618c4394482', '博查搜索', 'web_search', '从博查搜索任何信息和网页URL', e'def bocha_search(query, apikey):
    import requests
    import json
    url = "https://api.bochaai.com/v1/web-search"
    payload = json.dumps({
        "query": query,
        "summary": True,
        "count": 8
    })

    headers = {
        "Authorization": "Bearer " + apikey, #鉴权参数，示例：Bearer xxxxxx，API KEY请先前往博查AI开放平台（https://open.bochaai.com）> API KEY 管理中获取。
        "Content-Type": "application/json"
    }

    response = requests.request("POST", url, headers=headers, data=payload)
    if response.status_code == 200:
        return response.json()
    else:
        raise Exception(f"API请求失败: {response.status_code}, 错误信息: {response.text}")
        return (response.text)', '[{"name": "query", "type": "string", "source": "reference", "is_required": true}]', '[{"attrs": {"type": "password", "maxlength": 200, "minlength": 1, "show-password": true, "show-word-limit": true}, "field": "apikey", "label": "API Key", "required": true, "input_type": "PasswordInput", "props_info": {"rules": [{"message": "API Key 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "API Key 长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}]', './tool/bochaai/icon.png', true, 'INTERNAL', 'INTERNAL', null, 'None', '', 'f0dd8f71-e4ee-11ee-8c84-a8a1595801ab', 'default');
INSERT INTO tool (create_time, update_time, id, name, label, "desc", code, input_field_list, init_field_list, icon, is_active, scope, tool_type, template_id, workspace_id, init_params, user_id, folder_id) VALUES ('2025-02-26 03:36:48.187286 +00:00', '2025-03-11 07:23:46.123972 +00:00', 'e89ad2ae-f3f2-11ef-ad09-0242ac110002', 'Google Search','web_search', 'Google Web Search', e'def google_search(query, apikey, cx):
    import requests
    import json
    url = "https://customsearch.googleapis.com/customsearch/v1"
    params = {
        "q": query,
        "key": apikey,
        "cx": cx,
        "num": 10,  # 每次最多返回10条
    }

    response = requests.get(url, params=params)
    if response.status_code == 200:
        return response.json()
    else:
        raise Exception(f"API请求失败: {response.status_code}, 错误信息: {response.text}")
        return (response.text)', '[{"name": "query", "type": "string", "source": "reference", "is_required": true}]', '[{"attrs": {"type": "password", "maxlength": 200, "minlength": 1, "show-password": true, "show-word-limit": true}, "field": "apikey", "label": "API Key", "required": true, "input_type": "PasswordInput", "props_info": {"rules": [{"message": "API Key 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "API Key 长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}, {"attrs": {"maxlength": 200, "minlength": 1, "show-word-limit": true}, "field": "cx", "label": "cx", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "cx 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "cx长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}]', './tool/google_search/icon.png', true, 'INTERNAL', 'INTERNAL', null, 'None', '', 'f0dd8f71-e4ee-11ee-8c84-a8a1595801ab', 'default');
INSERT INTO tool (create_time, update_time, id, name, label, "desc", code, input_field_list, init_field_list, icon, is_active, scope, tool_type, template_id, workspace_id, init_params, user_id, folder_id) VALUES ('2025-02-25 07:44:40.141515 +00:00', '2025-03-11 06:33:53.248495 +00:00', '5e912f00-f34c-11ef-8a9c-5618c4394482', 'LangSearch','web_search', e'A Web Search tool supporting natural language search
', e'
def langsearch(query, apikey):
    import json
    import requests

    url = "https://api.langsearch.com/v1/web-search"
    payload = json.dumps({
        "query": query,
        "summary": True,
        "freshness": "noLimit",
        "livecrawl": True,
        "count": 20
    })
    headers = {
        "Authorization": apikey,
        "Content-Type": "application/json"
    }
    # key从官网申请 https://langsearch.com/
    response = requests.request("POST", url, headers=headers, data=payload)
    if response.status_code == 200:
        return response.json()
    else:
        raise Exception(f"API请求失败: {response.status_code}, 错误信息: {response.text}")
        return (response.text)', '[{"name": "query", "type": "string", "source": "reference", "is_required": true}]', '[{"attrs": {"type": "password", "maxlength": 200, "minlength": 1, "show-password": true, "show-word-limit": true}, "field": "apikey", "label": "API Key", "required": true, "input_type": "PasswordInput", "props_info": {"rules": [{"message": "API Key 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "API Key 长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}]', './tool/langsearch/icon.png', true, 'INTERNAL', 'INTERNAL', null, 'None', '', 'f0dd8f71-e4ee-11ee-8c84-a8a1595801ab', 'default');
INSERT INTO tool (create_time, update_time, id, name, label, "desc", code, input_field_list, init_field_list, icon, is_active, scope, tool_type, template_id, workspace_id, init_params, user_id, folder_id) VALUES ('2025-03-17 08:16:32.626245 +00:00', '2025-03-17 08:16:32.626308 +00:00', '22c21b76-0308-11f0-9694-5618c4394482', 'MySQL 查询','database_search', '一个连接MySQL数据库执行SQL查询的工具', e'
def query_mysql(host,port, user, password, database, sql):
    import pymysql
    import json
    from pymysql.cursors import DictCursor
    from datetime import datetime, date

    def default_serializer(obj):
        from decimal import Decimal
        if isinstance(obj, (datetime, date)):
            return obj.isoformat()  # 将 datetime/date 转换为 ISO 格式字符串
        elif isinstance(obj, Decimal):
            return float(obj)  # 将 Decimal 转换为 float
        raise TypeError(f"Type {type(obj)} not serializable")

    try:
        # 创建连接
        db = pymysql.connect(
            host=host,
            port=int(port),
            user=user,
            password=password,
            database=database,
            cursorclass=DictCursor  # 使用字典游标
        )

        # 使用 cursor() 方法创建一个游标对象 cursor
        cursor = db.cursor()

        # 使用 execute() 方法执行 SQL 查询
        cursor.execute(sql)

        # 使用 fetchall() 方法获取所有数据
        data = cursor.fetchall()

        # 处理 bytes 类型的数据
        for row in data:
            for key, value in row.items():
                if isinstance(value, bytes):
                    row[key] = value.decode("utf-8")  # 转换为字符串

        # 将数据序列化为 JSON
        json_data = json.dumps(data, default=default_serializer, ensure_ascii=False)
        return json_data

        # 关闭数据库连接
        db.close()

    except Exception as e:
        print(f"Error while connecting to MySQL: {e}")
        raise e', '[{"name": "sql", "type": "string", "source": "reference", "is_required": true}]', '[{"attrs": {"maxlength": 200, "minlength": 1, "show-word-limit": true}, "field": "host", "label": "host", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "host 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "host长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}, {"attrs": {"maxlength": 20, "minlength": 1, "show-word-limit": true}, "field": "port", "label": "port", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "port 为必填属性", "required": true}, {"max": 20, "min": 1, "message": "port长度在 1 到 20 个字符", "trigger": "blur"}]}, "default_value": "3306", "show_default_value": false}, {"attrs": {"maxlength": 200, "minlength": 1, "show-word-limit": true}, "field": "user", "label": "user", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "user 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "user长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "root", "show_default_value": false}, {"attrs": {"type": "password", "maxlength": 200, "minlength": 1, "show-password": true, "show-word-limit": true}, "field": "password", "label": "password", "required": true, "input_type": "PasswordInput", "props_info": {"rules": [{"message": "password 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "password长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}, {"attrs": {"maxlength": 200, "minlength": 1, "show-word-limit": true}, "field": "database", "label": "database", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "database 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "database长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}]', './tool/mysql/icon.png', true, 'INTERNAL', 'INTERNAL', null, 'None', null, 'f0dd8f71-e4ee-11ee-8c84-a8a1595801ab', 'default');
INSERT INTO tool (create_time, update_time, id, name, label, "desc", code, input_field_list, init_field_list, icon, is_active, scope, tool_type, template_id, workspace_id, init_params, user_id, folder_id) VALUES ('2025-03-17 07:37:54.620836 +00:00', '2025-03-17 07:37:54.620887 +00:00', 'bd1e8b88-0302-11f0-87bb-5618c4394482', 'PostgreSQL 查询','database_search', '一个连接PostgreSQL数据库执行SQL查询的工具', e'
def queryPgSQL(database, user, password, host, port, query):
    import psycopg2
    import json
    from datetime import datetime

    # 自定义 JSON 序列化函数
    def default_serializer(obj):
        from decimal import Decimal
        if isinstance(obj, datetime):
            return obj.isoformat()  # 将 datetime 转换为 ISO 格式字符串
        elif isinstance(obj, Decimal):
            return float(obj)  # 将 Decimal 转换为 float
        raise TypeError(f"Type {type(obj)} not serializable")

    # 数据库连接信息
    conn_params = {
        "dbname": database,
        "user": user,
        "password": password,
        "host": host,
        "port": port
    }
    try:
        # 建立连接
        conn = psycopg2.connect(**conn_params)
        print("连接成功！")
        # 创建游标对象
        cursor = conn.cursor()
        # 执行查询语句
        cursor.execute(query)
        # 获取查询结果
        rows = cursor.fetchall()
        # 处理 bytes 类型的数据
        columns = [desc[0] for desc in cursor.description]
        result = [dict(zip(columns, row)) for row in rows]
        # 转换为 JSON 格式
        json_result = json.dumps(result, default=default_serializer, ensure_ascii=False)
        return json_result
    except Exception as e:
        print(f"发生错误：{e}")
        raise e
    finally:
        # 关闭游标和连接
        if cursor:
            cursor.close()
        if conn:
            conn.close()', '[{"name": "query", "type": "string", "source": "reference", "is_required": true}]', '[{"attrs": {"maxlength": 200, "minlength": 1, "show-word-limit": true}, "field": "host", "label": "host", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "host 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "host长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}, {"attrs": {"maxlength": 20, "minlength": 1, "show-word-limit": true}, "field": "port", "label": "port", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "port 为必填属性", "required": true}, {"max": 20, "min": 1, "message": "port长度在 1 到 20 个字符", "trigger": "blur"}]}, "default_value": "5432", "show_default_value": false}, {"attrs": {"maxlength": 200, "minlength": 1, "show-word-limit": true}, "field": "user", "label": "user", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "user 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "user长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "root", "show_default_value": false}, {"attrs": {"type": "password", "maxlength": 200, "minlength": 1, "show-password": true, "show-word-limit": true}, "field": "password", "label": "password", "required": true, "input_type": "PasswordInput", "props_info": {"rules": [{"message": "password 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "password长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}, {"attrs": {"maxlength": 200, "minlength": 1, "show-word-limit": true}, "field": "database", "label": "database", "required": true, "input_type": "TextInput", "props_info": {"rules": [{"message": "database 为必填属性", "required": true}, {"max": 200, "min": 1, "message": "database长度在 1 到 200 个字符", "trigger": "blur"}]}, "default_value": "x", "show_default_value": false}]', './tool/postgresql/icon.png', true, 'INTERNAL', 'INTERNAL', null, 'None', null, 'f0dd8f71-e4ee-11ee-8c84-a8a1595801ab', 'default');
