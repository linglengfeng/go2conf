-module(cfg_relife_talent).

-export[get/1, get_id/1, get_name/1, get_desc/1, get_conds/1, get_grade/1, get_attr_num/1, get_attr_change/1, get_exclusive/1].

-include("../include/cfg.hrl").

get(1001) ->
	#cfg_relife_talent{id=1001,name="随身玉佩",desc="或许有护佑作用",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1002) ->
	#cfg_relife_talent{id=1002,name="红肚兜",desc="小时候死亡率降低",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1003) ->
	#cfg_relife_talent{id=1003,name="生而为男",desc="性别一定为男",conds="",grade=1,attr_num=,attr_change=[],exclusive=[1004,1025,1024,1113]};
get(1004) ->
	#cfg_relife_talent{id=1004,name="生而为女",desc="性别一定为女",conds="",grade=1,attr_num=,attr_change=[],exclusive=[1003,1024,1025]};
get(1005) ->
	#cfg_relife_talent{id=1005,name="动漫高手",desc="入宅的可能性翻6倍",conds="",grade=2,attr_num=,attr_change=[],exclusive=[]};
get(1006) ->
	#cfg_relife_talent{id=1006,name="乐天派",desc="快乐+1",conds="",grade=0,attr_num=,attr_change=[[5,1]],exclusive=[]};
get(1007) ->
	#cfg_relife_talent{id=1007,name="天赋异禀",desc="初始可用属性点+2",conds="",grade=1,attr_num=2,attr_change=[],exclusive=[]};
get(1008) ->
	#cfg_relife_talent{id=1008,name="天生抑郁",desc="快乐-3",conds="",grade=0,attr_num=,attr_change=[[5,-3]],exclusive=[]};
get(1009) ->
	#cfg_relife_talent{id=1009,name="网络巨魔",desc="快乐+2",conds="",grade=1,attr_num=,attr_change=[[5,2]],exclusive=[]};
get(1010) ->
	#cfg_relife_talent{id=1010,name="天龙人",desc="你拥有北京户口",conds="",grade=2,attr_num=,attr_change=[],exclusive=[1012,1013,1014]};
get(1011) ->
	#cfg_relife_talent{id=1011,name="独生子女",desc="你没有兄弟姐妹",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1012) ->
	#cfg_relife_talent{id=1012,name="乡间微风",desc="你出生在农村",conds="",grade=0,attr_num=,attr_change=[],exclusive=[1010,1013,1014]};
get(1013) ->
	#cfg_relife_talent{id=1013,name="城中高楼",desc="你出生在城市",conds="",grade=0,attr_num=,attr_change=[],exclusive=[1010,1012,1014]};
get(1014) ->
	#cfg_relife_talent{id=1014,name="美籍华人",desc="你有美国国籍",conds="",grade=2,attr_num=,attr_change=[[4,3]],exclusive=[1010,1012,1013]};
get(1015) ->
	#cfg_relife_talent{id=1015,name="家中老大",desc="你最受父母宠爱",conds="",grade=1,attr_num=,attr_change=[],exclusive=[]};
get(1016) ->
	#cfg_relife_talent{id=1016,name="水性良好",desc="不会被淹死",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1017) ->
	#cfg_relife_talent{id=1017,name="先天免疫",desc="你不会得艾滋病",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1018) ->
	#cfg_relife_talent{id=1018,name="人类进化",desc="所有属性+1",conds="",grade=2,attr_num=,attr_change=[[5,1],[4,1],[1,1],[2,1],[3,1]],exclusive=[]};
get(1019) ->
	#cfg_relife_talent{id=1019,name="超凡",desc="初始可用属性点+4",conds="",grade=2,attr_num=4,attr_change=[],exclusive=[]};
get(1020) ->
	#cfg_relife_talent{id=1020,name="父母美貌",desc="颜值+2",conds="",grade=1,attr_num=,attr_change=[[1,2]],exclusive=[]};
get(1021) ->
	#cfg_relife_talent{id=1021,name="红颜薄命",desc="颜值+2，体质-2",conds="",grade=0,attr_num=,attr_change=[[1,2],[2,-2]],exclusive=[]};
get(1022) ->
	#cfg_relife_talent{id=1022,name="属蛇",desc="不会被蛇咬死",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1023) ->
	#cfg_relife_talent{id=1023,name="半神",desc="所有属性+2",conds="",grade=3,attr_num=,attr_change=[[5,2],[4,2],[1,2],[2,2],[3,2]],exclusive=[]};
get(1024) ->
	#cfg_relife_talent{id=1024,name="人中龙凤",desc="天生双重性别",conds="",grade=2,attr_num=,attr_change=[],exclusive=[1003,1004,1025]};
get(1025) ->
	#cfg_relife_talent{id=1025,name="阴阳之外",desc="天生无性别",conds="",grade=2,attr_num=,attr_change=[],exclusive=[1003,1024,1004,1113]};
get(1026) ->
	#cfg_relife_talent{id=1026,name="彩虹之下",desc="可能和同性交往",conds="",grade=0,attr_num=,attr_change=[],exclusive=[1113]};
get(1027) ->
	#cfg_relife_talent{id=1027,name="斩情证道",desc="终生不恋爱结婚",conds="",grade=1,attr_num=,attr_change=[],exclusive=[1113]};
get(1028) ->
	#cfg_relife_talent{id=1028,name="桃花连连",desc="恋爱机会提升",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1029) ->
	#cfg_relife_talent{id=1029,name="平安童年",desc="12岁前父母都健在",conds="",grade=1,attr_num=,attr_change=[],exclusive=[]};
get(1030) ->
	#cfg_relife_talent{id=1030,name="宠物大师",desc="宠物不会意外死亡",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1031) ->
	#cfg_relife_talent{id=1031,name="天生残疾",desc="体质-2",conds="",grade=0,attr_num=,attr_change=[[2,-2]],exclusive=[]};
get(1032) ->
	#cfg_relife_talent{id=1032,name="早产儿",desc="所有属性-1",conds="",grade=0,attr_num=,attr_change=[[5,-1],[4,-1],[1,-1],[2,-1],[3,-1]],exclusive=[]};
get(1033) ->
	#cfg_relife_talent{id=1033,name="十死无生",desc="体质-10",conds="",grade=0,attr_num=,attr_change=[[2,-10]],exclusive=[]};
get(1034) ->
	#cfg_relife_talent{id=1034,name="家运不顺",desc="家境-2",conds="",grade=0,attr_num=,attr_change=[[4,-2]],exclusive=[]};
get(1035) ->
	#cfg_relife_talent{id=1035,name="头着地",desc="智力-2",conds="",grade=0,attr_num=,attr_change=[[3,-2]],exclusive=[]};
get(1036) ->
	#cfg_relife_talent{id=1036,name="胎教",desc="智力+1",conds="",grade=0,attr_num=,attr_change=[[3,1]],exclusive=[]};
get(1037) ->
	#cfg_relife_talent{id=1037,name="班中红人",desc="和同学容易处好关系",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1038) ->
	#cfg_relife_talent{id=1038,name="骑士",desc="能轻松学会骑车",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1039) ->
	#cfg_relife_talent{id=1039,name="永远的神",desc="电竞天才",conds="",grade=1,attr_num=,attr_change=[],exclusive=[]};
get(1040) ->
	#cfg_relife_talent{id=1040,name="戒律",desc="赌毒不沾",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1041) ->
	#cfg_relife_talent{id=1041,name="丁克",desc="不生孩子",conds="",grade=1,attr_num=,attr_change=[],exclusive=[1113]};
get(1042) ->
	#cfg_relife_talent{id=1042,name="少数民族",desc="高考+5分",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1043) ->
	#cfg_relife_talent{id=1043,name="老司机",desc="你和家人不会发生车祸",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1044) ->
	#cfg_relife_talent{id=1044,name="低压",desc="你的家人不会心脏病",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1045) ->
	#cfg_relife_talent{id=1045,name="战功",desc="你退伍后会当官",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1046) ->
	#cfg_relife_talent{id=1046,name="不孕不育",desc="你生不出孩子",conds="",grade=1,attr_num=,attr_change=[],exclusive=[1113]};
get(1047) ->
	#cfg_relife_talent{id=1047,name="白头偕老",desc="爱人至少能活到70岁",conds="",grade=1,attr_num=,attr_change=[],exclusive=[]};
get(1048) ->
	#cfg_relife_talent{id=1048,name="神秘的小盒子",desc="100岁时才能开启",conds="",grade=3,attr_num=,attr_change=[],exclusive=[]};
get(1049) ->
	#cfg_relife_talent{id=1049,name="三十而立",desc="30岁时家境+2",conds="AGE?[30]",grade=0,attr_num=,attr_change=[[4,2]],exclusive=[]};
get(1050) ->
	#cfg_relife_talent{id=1050,name="四十不惑",desc="40岁时智力+2",conds="AGE?[40]",grade=0,attr_num=,attr_change=[[3,2]],exclusive=[]};
get(1051) ->
	#cfg_relife_talent{id=1051,name="知天命",desc="50岁时智力、快乐+1",conds="AGE?[50]",grade=0,attr_num=,attr_change=[[5,1],[3,1]],exclusive=[]};
get(1052) ->
	#cfg_relife_talent{id=1052,name="耳顺",desc="60岁时快乐+2",conds="AGE?[60]",grade=0,attr_num=,attr_change=[[5,2]],exclusive=[]};
get(1053) ->
	#cfg_relife_talent{id=1053,name="从心所欲",desc="70岁时快乐+3",conds="AGE?[70]",grade=0,attr_num=,attr_change=[[5,3]],exclusive=[]};
get(1054) ->
	#cfg_relife_talent{id=1054,name="老当益壮",desc="60岁时体质+2",conds="AGE?[60]",grade=1,attr_num=,attr_change=[[2,2]],exclusive=[]};
get(1055) ->
	#cfg_relife_talent{id=1055,name="鹤发童颜",desc="70岁时颜值+3",conds="AGE?[70]",grade=0,attr_num=,attr_change=[[1,3]],exclusive=[]};
get(1056) ->
	#cfg_relife_talent{id=1056,name="学前启蒙",desc="5岁时智力+2",conds="AGE?[5]",grade=1,attr_num=,attr_change=[[3,2]],exclusive=[]};
get(1057) ->
	#cfg_relife_talent{id=1057,name="十八变",desc="18岁时颜值+2",conds="AGE?[18]",grade=1,attr_num=,attr_change=[[1,2]],exclusive=[]};
get(1058) ->
	#cfg_relife_talent{id=1058,name="迟来之财",desc="90岁时家境+4",conds="AGE?[90]",grade=0,attr_num=,attr_change=[[4,4]],exclusive=[]};
get(1059) ->
	#cfg_relife_talent{id=1059,name="理财达人",desc="30、40、50岁时家境+1",conds="AGE?[30,40,50]",grade=0,attr_num=,attr_change=[[4,1]],exclusive=[]};
get(1060) ->
	#cfg_relife_talent{id=1060,name="成熟",desc="12、18岁时智力+1",conds="AGE?[12,18]",grade=1,attr_num=,attr_change=[[3,1]],exclusive=[]};
get(1061) ->
	#cfg_relife_talent{id=1061,name="形象管理",desc="16、24岁时颜值+1",conds="AGE?[16,24]",grade=1,attr_num=,attr_change=[[1,1]],exclusive=[]};
get(1062) ->
	#cfg_relife_talent{id=1062,name="成年礼",desc="18岁时快乐+1",conds="AGE?[18]",grade=0,attr_num=,attr_change=[[5,1]],exclusive=[]};
get(1063) ->
	#cfg_relife_talent{id=1063,name="开光之胎",desc="初始可用属性点+1",conds="",grade=0,attr_num=1,attr_change=[],exclusive=[]};
get(1064) ->
	#cfg_relife_talent{id=1064,name="天命",desc="初始可用属性点+8",conds="",grade=3,attr_num=8,attr_change=[],exclusive=[]};
get(1065) ->
	#cfg_relife_talent{id=1065,name="祖传药丸",desc="功能不明",conds="",grade=1,attr_num=,attr_change=[],exclusive=[]};
get(1066) ->
	#cfg_relife_talent{id=1066,name="精准扶贫",desc="家境为0时家境+1",conds="(MNY<1)&(MNY>-1)",grade=0,attr_num=,attr_change=[[4,1]],exclusive=[]};
get(1067) ->
	#cfg_relife_talent{id=1067,name="乐天派",desc="快乐为0时快乐+1",conds="(SPR<1)&(SPR>-1)",grade=1,attr_num=,attr_change=[[5,1]],exclusive=[]};
get(1068) ->
	#cfg_relife_talent{id=1068,name="命悬一线",desc="体质为0时体质+1",conds="(STR<1)&(STR>-1)",grade=0,attr_num=,attr_change=[[2,1]],exclusive=[]};
get(1069) ->
	#cfg_relife_talent{id=1069,name="智可生财",desc="若20岁时智力>8，家境+2",conds="(AGE?[20])&(INT>8)",grade=0,attr_num=,attr_change=[[4,2]],exclusive=[]};
get(1070) ->
	#cfg_relife_talent{id=1070,name="舔狗甚多",desc="若20岁时颜值>8，快乐+2",conds="(AGE?[20])&(CHR>8)",grade=0,attr_num=,attr_change=[[5,2]],exclusive=[]};
get(1071) ->
	#cfg_relife_talent{id=1071,name="保胎丸",desc="你不会胎死腹中",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1072) ->
	#cfg_relife_talent{id=1072,name="白化病",desc="你不会遭遇枪击",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1073) ->
	#cfg_relife_talent{id=1073,name="佛宗",desc="考上哈佛大学的几率提高",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1074) ->
	#cfg_relife_talent{id=1074,name="悟道",desc="智力>10时快乐+3",conds="INT>10",grade=1,attr_num=,attr_change=[[5,3]],exclusive=[]};
get(1075) ->
	#cfg_relife_talent{id=1075,name="驻颜",desc="体质>10时颜值+3",conds="STR>10",grade=0,attr_num=,attr_change=[[1,3]],exclusive=[]};
get(1076) ->
	#cfg_relife_talent{id=1076,name="界限突破",desc="体质>10时快乐+3",conds="STR>10",grade=1,attr_num=,attr_change=[[5,3]],exclusive=[]};
get(1077) ->
	#cfg_relife_talent{id=1077,name="倾城",desc="颜值>10时快乐+3",conds="CHR>10",grade=1,attr_num=,attr_change=[[5,3]],exclusive=[]};
get(1078) ->
	#cfg_relife_talent{id=1078,name="训练有方",desc="智力>10时体质+3",conds="INT>10",grade=0,attr_num=,attr_change=[[2,3]],exclusive=[]};
get(1079) ->
	#cfg_relife_talent{id=1079,name="相由心生",desc="智力>10时颜值+3",conds="INT>10",grade=0,attr_num=,attr_change=[[1,3]],exclusive=[]};
get(1080) ->
	#cfg_relife_talent{id=1080,name="智多鑫",desc="智力>10时家境+3",conds="INT>10",grade=0,attr_num=,attr_change=[[4,3]],exclusive=[]};
get(1081) ->
	#cfg_relife_talent{id=1081,name="灵光",desc="快乐>10时其他属性+1",conds="SPR>10",grade=0,attr_num=,attr_change=[[4,1],[1,1],[2,1],[3,1]],exclusive=[]};
get(1082) ->
	#cfg_relife_talent{id=1082,name="天启",desc="快乐>10时其他属性+2",conds="SPR>10",grade=1,attr_num=,attr_change=[[4,2],[1,2],[2,2],[3,2]],exclusive=[]};
get(1083) ->
	#cfg_relife_talent{id=1083,name="神谕",desc="快乐>10时其他属性+3",conds="SPR>10",grade=2,attr_num=,attr_change=[[4,3],[1,3],[2,3],[3,3]],exclusive=[]};
get(1084) ->
	#cfg_relife_talent{id=1084,name="献祭",desc="初始可用属性点-2，快乐+2",conds="",grade=0,attr_num=-2,attr_change=[[5,2]],exclusive=[1122]};
get(1085) ->
	#cfg_relife_talent{id=1085,name="幸运儿",desc="初始可用属性点-3，快乐+5",conds="",grade=1,attr_num=-3,attr_change=[[5,5]],exclusive=[1122]};
get(1086) ->
	#cfg_relife_talent{id=1086,name="挑战者",desc="初始可用点-10",conds="",grade=0,attr_num=-10,attr_change=[],exclusive=[1122]};
get(1087) ->
	#cfg_relife_talent{id=1087,name="你不懂",desc="家境>10时快乐+3",conds="MNY>10",grade=1,attr_num=,attr_change=[[5,3]],exclusive=[]};
get(1088) ->
	#cfg_relife_talent{id=1088,name="整容",desc="家境>10时颜值+3",conds="MNY>10",grade=0,attr_num=,attr_change=[[1,3]],exclusive=[]};
get(1089) ->
	#cfg_relife_talent{id=1089,name="钻石健身卡",desc="家境>10时体质+3",conds="MNY>10",grade=0,attr_num=,attr_change=[[2,3]],exclusive=[]};
get(1090) ->
	#cfg_relife_talent{id=1090,name="身残志坚",desc="体质<0时其他属性+1",conds="STR<0",grade=0,attr_num=,attr_change=[[5,1],[4,1],[1,1],[3,1]],exclusive=[]};
get(1091) ->
	#cfg_relife_talent{id=1091,name="活死人",desc="体质<-1时其他属性+2",conds="STR<0",grade=1,attr_num=,attr_change=[[5,2],[4,2],[1,2],[3,2]],exclusive=[]};
get(1092) ->
	#cfg_relife_talent{id=1092,name="开一扇窗",desc="颜值<0时其他属性+1",conds="CHR<0",grade=0,attr_num=,attr_change=[[5,1],[4,1],[2,1],[3,1]],exclusive=[]};
get(1093) ->
	#cfg_relife_talent{id=1093,name="大额头",desc="颜值-2，智力+2",conds="",grade=0,attr_num=,attr_change=[[1,-2],[3,2]],exclusive=[]};
get(1094) ->
	#cfg_relife_talent{id=1094,name="痘痘脸",desc="颜值-1",conds="",grade=0,attr_num=,attr_change=[[1,-1]],exclusive=[]};
get(1095) ->
	#cfg_relife_talent{id=1095,name="潜能",desc="家境<0时其他属性+1",conds="MNY<0",grade=0,attr_num=,attr_change=[[5,1],[1,1],[2,1],[3,1]],exclusive=[]};
get(1096) ->
	#cfg_relife_talent{id=1096,name="哀兵",desc="快乐<0时其他属性+1",conds="SPR<0",grade=0,attr_num=,attr_change=[[4,1],[1,1],[2,1],[3,1]],exclusive=[]};
get(1097) ->
	#cfg_relife_talent{id=1097,name="苦痛侍僧",desc="快乐<-1时其他属性+2",conds="SPR<-1",grade=1,attr_num=,attr_change=[[4,2],[1,2],[2,2],[3,2]],exclusive=[]};
get(1098) ->
	#cfg_relife_talent{id=1098,name="觉醒",desc="家境<-1时其他属性+2",conds="MNY<-1",grade=1,attr_num=,attr_change=[[5,2],[1,2],[2,2],[3,2]],exclusive=[]};
get(1099) ->
	#cfg_relife_talent{id=1099,name="抖M",desc="家境-2，快乐+2",conds="",grade=0,attr_num=,attr_change=[[5,2],[4,-2]],exclusive=[]};
get(1100) ->
	#cfg_relife_talent{id=1100,name="海的女儿",desc="颜值-2，初始可用属性点+1",conds="",grade=0,attr_num=1,attr_change=[[1,-2]],exclusive=[]};
get(1101) ->
	#cfg_relife_talent{id=1101,name="进阶",desc="所有属性>5时，所有属性+1",conds="(SPR>5)&(MNY>5)&(CHR>5)&(STR>5)&(INT>5)",grade=0,attr_num=,attr_change=[[5,1],[4,1],[1,1],[2,1],[3,1]],exclusive=[]};
get(1102) ->
	#cfg_relife_talent{id=1102,name="超进化",desc="所有属性>5时，所有属性+2",conds="(SPR>5)&(MNY>5)&(CHR>5)&(STR>5)&(INT>5)",grade=1,attr_num=,attr_change=[[5,2],[4,2],[1,2],[2,2],[3,2]],exclusive=[]};
get(1103) ->
	#cfg_relife_talent{id=1103,name="白色胶囊",desc="你10岁时无事发生",conds="AGE?[10]",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1104) ->
	#cfg_relife_talent{id=1104,name="紫色胶囊",desc="跳过你的40~50岁",conds="AGE?[40,41,42,43,44,45,46,47,48,49,50]",grade=2,attr_num=,attr_change=[],exclusive=[]};
get(1105) ->
	#cfg_relife_talent{id=1105,name="蓝色胶囊",desc="你20、30岁时无事发生",conds="AGE?[20,30]",grade=1,attr_num=,attr_change=[],exclusive=[]};
get(1106) ->
	#cfg_relife_talent{id=1106,name="健康饮食",desc="你不吃洋快餐",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1107) ->
	#cfg_relife_talent{id=1107,name="不想罢了",desc="你不会上清华大学",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1108) ->
	#cfg_relife_talent{id=1108,name="挑衅",desc="你喜欢没事找事",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1109) ->
	#cfg_relife_talent{id=1109,name="旅行者",desc="你喜欢旅游",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1110) ->
	#cfg_relife_talent{id=1110,name="水仙",desc="你比较自恋",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1111) ->
	#cfg_relife_talent{id=1111,name="缺一门",desc="无效果",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1112) ->
	#cfg_relife_talent{id=1112,name="异界来客",desc="你可能听到一些绝密消息",conds="",grade=2,attr_num=,attr_change=[],exclusive=[]};
get(1113) ->
	#cfg_relife_talent{id=1113,name="三胎人生",desc="你尽可能生三胎",conds="",grade=1,attr_num=,attr_change=[],exclusive=[1003,1025,1026,1027]};
get(1114) ->
	#cfg_relife_talent{id=1114,name="橙色胶囊",desc="跳过你的60~90岁",conds="AGE?[60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90]",grade=3,attr_num=,attr_change=[],exclusive=[]};
get(1115) ->
	#cfg_relife_talent{id=1115,name="宙斯",desc="参加奥赛的几率提高",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1116) ->
	#cfg_relife_talent{id=1116,name="为人民服务",desc="考公务员时一定能考上",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1117) ->
	#cfg_relife_talent{id=1117,name="表现良好",desc="入狱会减刑",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1118) ->
	#cfg_relife_talent{id=1118,name="小吉",desc="运气稍微提升",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1119) ->
	#cfg_relife_talent{id=1119,name="天秤座",desc="据说做事很公平",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1120) ->
	#cfg_relife_talent{id=1120,name="万里挑一",desc="你很攻",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1121) ->
	#cfg_relife_talent{id=1121,name="把握不住",desc="你有强迫症",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1122) ->
	#cfg_relife_talent{id=1122,name="急了急了",desc="赶着投胎，不要初始属性了",conds="",grade=1,attr_num=-20,attr_change=[],exclusive=[1084,1085,1086]};
get(1123) ->
	#cfg_relife_talent{id=1123,name="不离不弃",desc="你不会离婚",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1124) ->
	#cfg_relife_talent{id=1124,name="足量",desc="身高不矮",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1125) ->
	#cfg_relife_talent{id=1125,name="易胖体质",desc="颜值更容易降低",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1126) ->
	#cfg_relife_talent{id=1126,name="黄帝",desc="种族主义者",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1127) ->
	#cfg_relife_talent{id=1127,name="左撇子",desc="习惯使用左手",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1128) ->
	#cfg_relife_talent{id=1128,name="克苏鲁",desc="&▓▓▓◆▓▓▓￥#▓@■.◆",conds="",grade=2,attr_num=,attr_change=[],exclusive=[]};
get(1129) ->
	#cfg_relife_talent{id=1129,name="不连续存在",desc="你还拥有其他人格",conds="",grade=2,attr_num=,attr_change=[],exclusive=[]};
get(1130) ->
	#cfg_relife_talent{id=1130,name="占位符",desc="少一个可选天赋",conds="",grade=0,attr_num=,attr_change=[],exclusive=[]};
get(1131) ->
	#cfg_relife_talent{id=1131,name="魔法棒",desc="不知道有什么用……",conds="",grade=2,attr_num=,attr_change=[],exclusive=[]};
get(_) ->
	undefined.

get_id(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.id;
get_id(_) ->
	undefined.

get_name(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.name;
get_name(_) ->
	undefined.

get_desc(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.desc;
get_desc(_) ->
	undefined.

get_conds(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.conds;
get_conds(_) ->
	undefined.

get_grade(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.grade;
get_grade(_) ->
	undefined.

get_attr_num(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.attr_num;
get_attr_num(_) ->
	undefined.

get_attr_change(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.attr_change;
get_attr_change(_) ->
	undefined.

get_exclusive(Val=#cfg_relife_talent{}) ->
	Val#cfg_relife_talent.exclusive;
get_exclusive(_) ->
	undefined.


