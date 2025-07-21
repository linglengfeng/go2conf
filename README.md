# go2conf
使用说明 有go环境： go run main.go
打包exe： go build -o gen.exe main.go
使用exe: 直接运行 gen.exe

xlsx文件转换成任意类型文件
目前支持
- [x] **1.** xlsx to txt(result file: [test_svr.txt](https://github.com/linglengfeng/go2conf/tree/main/output/txt/svr/test_svr.txt "test_svr.txt"))
- [x] **2.** xlsx to json(result file: [test_svr.json](https://github.com/linglengfeng/go2conf/tree/main/output/json/svr/test_svr.json "test_svr.json"))
- [x] **3.** xlsx to erl(result file: [cfg_test_svr.erl](https://github.com/linglengfeng/go2conf/tree/main/output/erl/svr/cfg_test_svr.erl "cfg_test_svr.erl"))
- [x] **4.** xlsx to erl and hrl(result file: [cfg_test_people.erl](https://github.com/linglengfeng/go2conf/tree/main/output/erl_hrl/svr/erl/cfg_test_people.erl "cfg_test_people.erl"), [cfg.hrl](https://github.com/linglengfeng/go2conf/tree/main/output/erl_hrl/svr/include/cfg.hrl "cfg.hrl"))

## 如何添加别的文件类型
在[tocfgWriter.go](https://github.com/linglengfeng/go2conf/blob/main/src/tocfgWriter.go)方法initWorker中添加接口WriterWorker
参考文件： [tocfgTxt.go](https://github.com/linglengfeng/go2conf/blob/main/src/tocfgTxt.go), [tocfgJson.go](https://github.com/linglengfeng/go2conf/blob/main/src/tocfgJson.go),[tocfgErl.go](https://github.com/linglengfeng/go2conf/blob/main/src/tocfgErl.go),[tocfgErlHrl.go](https://github.com/linglengfeng/go2conf/blob/main/src/tocfgErlHrl.go)
格式说明代码：[tocfgConst.go](https://github.com/linglengfeng/go2conf/blob/main/src/tocfgConst.go)

## config.json 说明
		
- **excel_dir** 必填,excel导出目录
- **writers** 必填,导出列表
- *type* 支持 
  - [x] "json"
  - [x] "txt"
  - [x] "erl"
  - [x] "erl_hrl"
- *out_svr_dir* 可选，没有字段表示不导出
- *out_cli_dir* 可选，没有字段表示不导出

导出文件参照：[output目录](https://github.com/linglengfeng/go2conf/tree/main/output)
```json
{
    <!-- 文件所在目录 -->
    "excel_dir": "./xlsx"
    <!-- 导出列表 -->
    "writers": [
       {
         <!-- 导出格式 json -->
        "type": "json",
        <!-- 导出服务器目录 -->
        "out_svr_dir": "./output/json/svr",
        <!-- 导出客户端目录 -->
        "out_cli_dir": "./output/json/cli"
       },
        <!-- 导出txt -->
       {
        "type": "txt",
        "out_svr_dir": "./output/txt/svr",
        "out_cli_dir": "./output/txt/cli"
       },
       <!-- 导出erl -->
       {
        "type": "erl",
        "out_svr_dir": "./output/erl/svr",
        "out_cli_dir": "./output/erl/cli"
       },
       <!-- 导出erl和头文件 -->
       {
        "type": "erl_hrl",
        "out_svr_dir": "./output/erl_hrl/svr",
        "out_cli_dir": "./output/erl_hrl/cli"
       }
    ]
}
```

### xlsx 格式说明

|   格式说明    |       |       |       |       |       |       |
|---------------|-------|-------|-------|-------|-------|-------|
| **EXPORT_SVR**	| TRUE	| fName | 			
| **EXPORT_CLI**	| FALSE	| fName |		
| **PRIMARY_KEY**	| id	| 		|	
| **UNION_KEYS_SVR**| 	    |
| **UNION_KEYS_CLI**|       |       | 
|                   |       |       |       |       |       |       |
| **OUT_SVR**	    | TRUE	| TRUE	| TRUE	| TRUE	| TRUE	| FALSE | 
| **OUT_CLI**	    | TRUE	| TRUE	| TRUE	| TRUE	| TRUE	| TRUE  | 
| **TYPE**	        | INT	| STR	|  INT	| INT	| LIST	|  STR  | 
| **NAME**	        | id	| 名字	| 年龄	| 性别	| 物品	| 说明  | 
| **KEY**	        | id	| name	| age	| sex	| items	| desc  | 
| **NOTE**	        | 备注	| 备注	| 备注	| 备注	| 备注	|       | 
| **VALUE**	        | 1	    | name1	| 10	|   1	|[1,2,3]| 说明1 | 
| **VALUE**	        | 2	    | name2	| 11	|   2	|[1,2,4]| 说明2 | 


1. 第一行：
    * 第一列：
        - [x] **EXPORT_SVR**
    * 第二列：TRUE|FALSE 表示该页是否导出服务器（TRUE导出，FALSE不导出）
        - [x] **TRUE**
        - [x] **FALSE**
    * 第三列：导出文件名（不填默认filename_sheetname）

2. 第二行：
    * 第一列：
        - [x] **EXPORT_CLI**
    * 第二列：TRUE|FALSE 表示该页是否导出客户端（TRUE导出，FALSE不导出）
        - [x] **TRUE**
        - [x] **FALSE**
    * 第三列：导出文件名（不填默认filename_sheetname）

3. 第三行：
    * 第一列：
        - [x] **PRIMARY_KEY**
    * 第二列：主键名

4. 第四行：
    * 第一列：
        - [x] **UNION_KEYS_SVR**
    * 第二列：服务器联合键集合 格式：[[key1],[key1,key2]...]

5. 第五行：
    * 第一列：
        - [x] **UNION_KEYS_CLI**
    * 第二列：客户端联合键集合 格式：[[key1],[key1,key2]...]

6. 第六行：
    * 空行，预留

7. 第七行：
    * 第一列：
        - [x] **OUT_SVR**
    * 第x列：TRUE|FALSE 表示该字段是否导出
        - [x] **TRUE**
        - [x] **FALSE**

8. 第八行：
    * 第一列：
        - [x] **OUT_CLI**
    * 第x列：TRUE|FALSE 表示该字段是否导出
        - [x] **TRUE**
        - [x] **FALSE**

9. 第九行：
    * 第一列：
        - [x] **TYPE**
    * 第x列：该字段类型 INT|STR|LIST
        - [x] **INT**
        - [x] **STR**
        - [x] **LIST**

10. 第十行：
    * 第一列：
        - [x] **NAME**
    * 第x列：该字段名

11. 第十一行：
    * 第一列：
        - [x] **NOTE**
    * 第x列：该字段备注

12. 第x行：
    * 第一列：固定 VALUE,填VALUE表示该行生效导出，不填或者填其他表示该行不生效不导出
        - [x] **VALUE**
