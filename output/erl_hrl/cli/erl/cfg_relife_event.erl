-module(cfg_relife_event).

-export[get/1, get_id/1, get_evts/1, get_attrs_change/1, get_is_rand_evt/1, get_prev_conds/1, get_out_conds/1, get_first_branch/1, get_branch/1].

-include("../include/cfg.hrl").

get(10000) ->
	#cfg_relife_event{id=10000,evts="你死了。",attrs_change=[[5,-1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10001) ->
	#cfg_relife_event{id=10001,evts="你出生了，是个男孩。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="TLT?[1004,1024,1025,1113]",first_branch="",branch=""};
get(10002) ->
	#cfg_relife_event{id=10002,evts="你出生了，是个女孩。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="TLT?[1003,1024,1025]",first_branch="",branch=""};
get(10003) ->
	#cfg_relife_event{id=10003,evts="你生了场重病。",attrs_change=[[3,-1],[4,-1]],is_rand_evt=,prev_conds="",out_conds="STR>6",first_branch="TLT?[1001]:10004",branch="STR<2&MNY<3:10000"};
get(10004) ->
	#cfg_relife_event{id=10004,evts="可能是玉佩保佑，你活了下来。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10005) ->
	#cfg_relife_event{id=10005,evts="刚学会走路，你意外从桌子上跌落。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="INT>7",first_branch="TLT?[1002]:10006",branch="STR<3&MNY<3:10000"};
get(10006) ->
	#cfg_relife_event{id=10006,evts="红肚兜挂在了桌角上，你没有受伤。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10007) ->
	#cfg_relife_event{id=10007,evts="你开始看动漫。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="TLT?[1005]",out_conds="(MNY<3)|(EVT?[10007,10008])",first_branch="INT>5:20008",branch="CHR>5:20007"};
get(10008) ->
	#cfg_relife_event{id=10008,evts="你开始看动漫。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="",out_conds="(MNY<3)|(EVT?[10007,10008])",first_branch="INT>5:20008",branch="CHR>5:20007"};
get(20007) ->
	#cfg_relife_event{id=20007,evts="你喜欢看画面人设好看的动漫。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20008) ->
	#cfg_relife_event{id=20008,evts="你喜欢看剧情棒的动漫。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10009) ->
	#cfg_relife_event{id=10009,evts="你从小生活在农村",attrs_change=[],is_rand_evt=,prev_conds="(MNY<8)|(TLT?[1012])",out_conds="TLT?[1010,1013,1014]",first_branch="",branch=""};
get(10010) ->
	#cfg_relife_event{id=10010,evts="你从小生活在城市",attrs_change=[],is_rand_evt=,prev_conds="(MNY>1)|(TLT?[1010,1013])",out_conds="TLT?[1012,1014]",first_branch="",branch=""};
get(10011) ->
	#cfg_relife_event{id=10011,evts="你出生在美利坚，拥有美国国籍",attrs_change=[],is_rand_evt=,prev_conds="(MNY>8)|(TLT?[1014])",out_conds="TLT?[1010,1012]",first_branch="",branch=""};
get(10012) ->
	#cfg_relife_event{id=10012,evts="你父母又生了个女儿。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10001,10014,10016,10017])|(TLT?[1011])",first_branch="",branch="MNY<2:10013"};
get(10013) ->
	#cfg_relife_event{id=10013,evts="你的家庭更加困难，吃不饱饭。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch="MNY<1:10000"};
get(10014) ->
	#cfg_relife_event{id=10014,evts="你父母又生了个儿子。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10001,10014,10016,10017])|(TLT?[1011])",first_branch="",branch="MNY<2:10013"};
get(10015) ->
	#cfg_relife_event{id=10015,evts="你父母并没有精心照顾你。",attrs_change=[[2,-1],[4,-1]],is_rand_evt=,prev_conds="",out_conds="(EVT?[10015,10011,10019])|(TLT?[1015])",first_branch="",branch=""};
get(10016) ->
	#cfg_relife_event{id=10016,evts="你的母亲因病去世。",attrs_change=[[3,-1],[4,-1]],is_rand_evt=,prev_conds="(EVT?[10009])&(STR<3)&(SPR<3)&(MNY<3)",out_conds="(EVT?[10016])|(TLT?[1029])",first_branch="EVT?[10017]:10000",branch=""};
get(10017) ->
	#cfg_relife_event{id=10017,evts="你的父亲因病去世。",attrs_change=[[3,-2],[4,-1]],is_rand_evt=,prev_conds="(EVT?[10009])&(STR<3)&(SPR<3)&(MNY<3)",out_conds="(EVT?[10017])|(TLT?[1029])",first_branch="EVT?[10016]:10000",branch=""};
get(10018) ->
	#cfg_relife_event{id=10018,evts="你的父亲在种地时意外发现一箱金条。",attrs_change=[[3,2],[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10018,10017]",first_branch="",branch=""};
get(10019) ->
	#cfg_relife_event{id=10019,evts="你的父母对你视若珍宝，呵护备至。",attrs_change=[[2,1],[4,1]],is_rand_evt=,prev_conds="",out_conds="EVT?[10015,10016,10017,10019]",first_branch="",branch=""};
get(10020) ->
	#cfg_relife_event{id=10020,evts="你天资聪颖，但家人并不懂如何培养。",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="(EVT?[10009])&(INT>7)",out_conds="EVT?[10021,10020]",first_branch="",branch=""};
get(10021) ->
	#cfg_relife_event{id=10021,evts="你天资聪颖，家人很关注你的学习。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="(EVT?[10009])&(INT>7)&(MNY>3)",out_conds="EVT?[10020,10021]",first_branch="",branch=""};
get(10022) ->
	#cfg_relife_event{id=10022,evts="你什么事都要让着妹妹。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10012]",out_conds="(EVT?[10022,10014])|(TLT?[1015])",first_branch="",branch=""};
get(10023) ->
	#cfg_relife_event{id=10023,evts="你什么事都要让着弟弟。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10014]",out_conds="(EVT?[10023])|(TLT?[1015])",first_branch="",branch=""};
get(10024) ->
	#cfg_relife_event{id=10024,evts="家人到城里务工。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10016,10017,10024]",first_branch="TLT?[1015]:10025",branch=""};
get(10025) ->
	#cfg_relife_event{id=10025,evts="你和父母一同进了城。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10026) ->
	#cfg_relife_event{id=10026,evts="你比其他小朋友长得更可爱。",attrs_change=[],is_rand_evt=,prev_conds="CHR>7",out_conds="EVT?[10026,10030]",first_branch="",branch=""};
get(10027) ->
	#cfg_relife_event{id=10027,evts="你的母亲救了个人，得到了很多感谢金。",attrs_change=[[3,2],[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10027,10016]",first_branch="",branch=""};
get(10028) ->
	#cfg_relife_event{id=10028,evts="你很调皮，喜欢在家到处乱跑。",attrs_change=[[2,1],[4,1]],is_rand_evt=,prev_conds="(STR>3)&(EVT?[10009])",out_conds="EVT?[10028,10052]",first_branch="CHR>7:20029",branch="STR<5:20028"};
get(20028) ->
	#cfg_relife_event{id=20028,evts="有次你不小心摔倒撞到了脑袋，智力略微受损。",attrs_change=[[1,-1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20029) ->
	#cfg_relife_event{id=20029,evts="看在你长得可爱的份上家人不和你计较。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10029) ->
	#cfg_relife_event{id=10029,evts="家人从小就培养你做家务。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10029])|(TLT?[1015])",first_branch="",branch=""};
get(10030) ->
	#cfg_relife_event{id=10030,evts="你的脸意外被开水烫伤。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="(CHR>3)&(EVT?[10015])",out_conds="EVT?[10030]",first_branch="",branch="SPR<2:10062"};
get(10031) ->
	#cfg_relife_event{id=10031,evts="你被邻居叔叔绑架了。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(CHR>4)&(MNY>4)&(EVT?[10009])",out_conds="EVT?[10031]",first_branch="EVT?[10018,10027,10078]:10032",branch="(CHR>7)&(EVT?[10002,10111]):10033"};
get(10032) ->
	#cfg_relife_event{id=10032,evts="叔叔向你父母勒索了很多现金。",attrs_change=[[3,-2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10033) ->
	#cfg_relife_event{id=10033,evts="叔叔侵犯了你。",attrs_change=[[4,-2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch="STR<3:10000"};
get(10034) ->
	#cfg_relife_event{id=10034,evts="你和邻家小孩被定了娃娃亲。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>3)&(EVT?[10009])",out_conds="EVT?[10034,10024]",first_branch="",branch=""};
get(10035) ->
	#cfg_relife_event{id=10035,evts="你的大姐出嫁，收了很多彩礼。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10035])|(TLT?[1011])",first_branch="CHR>7:20035",branch=""};
get(20035) ->
	#cfg_relife_event{id=20035,evts="你大姐偷偷告诉你，她一点也不喜欢男方。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20036) ->
	#cfg_relife_event{id=20036,evts="你的大姐自杀了。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[20035]",out_conds="EVT?[20036]",first_branch="",branch=""};
get(10036) ->
	#cfg_relife_event{id=10036,evts="你喜欢用父母的手机玩王者荣耀。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="MNY>2",out_conds="EVT?[10011,10024,10016,10017,10036,10037,10038]",first_branch="INT>8:20037",branch="INT>5:20038"};
get(20037) ->
	#cfg_relife_event{id=20037,evts="你轻松打上了王者。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20038) ->
	#cfg_relife_event{id=20038,evts="你打上了黄金段位。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10037) ->
	#cfg_relife_event{id=10037,evts="你喜欢用父母的手机刷抖音。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="MNY>2",out_conds="EVT?[10011,10024,10016,10017,10036,10037,10038]",first_branch="",branch=""};
get(10038) ->
	#cfg_relife_event{id=10038,evts="你玩父母手机时被诈骗。",attrs_change=[[3,-1],[4,-1]],is_rand_evt=,prev_conds="(MNY>2)&(INT<8)",out_conds="EVT?[10011,10024,10016,10017,10038]",first_branch="SPR<2:10062",branch="INT>5:10040"};
get(10039) ->
	#cfg_relife_event{id=10039,evts="你智力迟钝，仍然不会说话。",attrs_change=[],is_rand_evt=,prev_conds="INT<3",out_conds="EVT?[10039]",first_branch="",branch=""};
get(10040) ->
	#cfg_relife_event{id=10040,evts="你告诉父母后，打电话举报。",attrs_change=[[3,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10041) ->
	#cfg_relife_event{id=10041,evts="你和村里小孩打架。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10002,10025]",first_branch="STR<3:10000",branch="STR>9:10042"};
get(10042) ->
	#cfg_relife_event{id=10042,evts="你失手把一个小孩打死了。",attrs_change=[[3,-2],[4,-1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="SPR<2:10062",branch=""};
get(10043) ->
	#cfg_relife_event{id=10043,evts="你想天天吃肉，但父母告诉你吃不起。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<7)&(EVT?[10009])",out_conds="EVT?[10043]",first_branch="",branch=""};
get(10044) ->
	#cfg_relife_event{id=10044,evts="你喜欢去周围的小池塘边玩。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10044,10047,10025,10180]",first_branch="",branch=""};
get(10045) ->
	#cfg_relife_event{id=10045,evts="你有次去池塘边玩时掉进了水里。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10044,10047,10180]",out_conds="EVT?[10045]",first_branch="TLT?[1016]:10046",branch="STR<7:10000"};
get(10046) ->
	#cfg_relife_event{id=10046,evts="还好你会游泳，没淹死。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10047) ->
	#cfg_relife_event{id=10047,evts="你在周围的池塘钓到了几只小龙虾。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10025,10047]",first_branch="",branch=""};
get(10048) ->
	#cfg_relife_event{id=10048,evts="你的绘画天赋好像不错。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="EVT?[10048]",first_branch="(EVT?[10009])&(CHR<3):20048",branch=""};
get(20048) ->
	#cfg_relife_event{id=20048,evts="有亲戚笑你画的比长的好看多了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10049) ->
	#cfg_relife_event{id=10049,evts="你的音乐天赋好像不错。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="EVT?[10049]",first_branch="(EVT?[10009])&(CHR<3):20049",branch=""};
get(20049) ->
	#cfg_relife_event{id=20049,evts="有亲戚遗憾地说你声音很好听，可惜长得太丑了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10050) ->
	#cfg_relife_event{id=10050,evts="你的数学天赋好像不错。",attrs_change=[],is_rand_evt=,prev_conds="INT>8",out_conds="EVT?[10050]",first_branch="",branch=""};
get(10051) ->
	#cfg_relife_event{id=10051,evts="你偷了父母的零钱去买零食。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10051]",first_branch="",branch=""};
get(10052) ->
	#cfg_relife_event{id=10052,evts="你追得家里的动物鸡飞狗跳。",attrs_change=[],is_rand_evt=,prev_conds="(STR>3)&(EVT?[10009])",out_conds="EVT?[10052]",first_branch="",branch=""};
get(10053) ->
	#cfg_relife_event{id=10053,evts="姐姐拿她的旧衣服给你穿。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<6)&(EVT?[10009])",out_conds="(EVT?[10053])|(TLT?[1011])",first_branch="(CHR>6)&(EVT?[10001]):20053",branch=""};
get(20053) ->
	#cfg_relife_event{id=20053,evts="虽然你是男孩子，但并不抗拒。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20054) ->
	#cfg_relife_event{id=20054,evts="你喜欢上了女装。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[20053]",out_conds="EVT?[20054]",first_branch="",branch=""};
get(20055) ->
	#cfg_relife_event{id=20055,evts="你业余时间在家当女装主播。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[20054]",out_conds="EVT?[20055]",first_branch="MNY<6:20056",branch=""};
get(20056) ->
	#cfg_relife_event{id=20056,evts="并且有时还接单。",attrs_change=[[3,2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10054) ->
	#cfg_relife_event{id=10054,evts="你经常在田里玩。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10025]",first_branch="",branch="INT>7:10055"};
get(10055) ->
	#cfg_relife_event{id=10055,evts="你对自然规律有所观察。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch="INT>9:10056"};
get(10056) ->
	#cfg_relife_event{id=10056,evts="你对植物和养生有所领悟。",attrs_change=[[2,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10057) ->
	#cfg_relife_event{id=10057,evts="你开始下地干农活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10057,10025]",first_branch="",branch=""};
get(10058) ->
	#cfg_relife_event{id=10058,evts="下暴雨，发洪水。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10058,10025]",first_branch="TLT?[1016]:10046",branch="CHR<4:10000"};
get(10059) ->
	#cfg_relife_event{id=10059,evts="大旱灾，颗粒无收。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10059,10025]",first_branch="",branch="MNY<3:10013"};
get(10060) ->
	#cfg_relife_event{id=10060,evts="发生蝗灾，颗粒无收。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10060,10025]",first_branch="",branch="MNY<3:10013"};
get(10061) ->
	#cfg_relife_event{id=10061,evts="一个人在家，非常寂寞。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10024]",out_conds="EVT?[10025]",first_branch="",branch="SPR<2:10062"};
get(10062) ->
	#cfg_relife_event{id=10062,evts="你的情绪越来越低落，尝试自杀。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch="SPR<1:10000"};
get(10063) ->
	#cfg_relife_event{id=10063,evts="你的爷爷奶奶只想要男孩，把你活埋了。",attrs_change=[],is_rand_evt=,prev_conds="(CHR<3)&(MNY<3)&(EVT?[10009])",out_conds="(EVT?[10063,10001])|(TLT?[1015])",first_branch="",branch="MNY<3:10000"};
get(10064) ->
	#cfg_relife_event{id=10064,evts="你被卖给了人贩子。人贩子运送路上你很虚弱。",attrs_change=[],is_rand_evt=,prev_conds="(STR<3)&(MNY<3)&(EVT?[10009])",out_conds="(EVT?[10064,10001,10019])|(TLT?[1015])",first_branch="",branch="STR<3:10000"};
get(10065) ->
	#cfg_relife_event{id=10065,evts="空气很新鲜，生活很健康。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10065,10025]",first_branch="",branch=""};
get(10066) ->
	#cfg_relife_event{id=10066,evts="你的生活很自由，没有什么束缚。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10066]",first_branch="",branch=""};
get(10067) ->
	#cfg_relife_event{id=10067,evts="有一只鸟撞在了你家窗户上。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10067]",first_branch="",branch="INT<6:10068"};
get(10068) ->
	#cfg_relife_event{id=10068,evts="你把它炖了吃了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10069) ->
	#cfg_relife_event{id=10069,evts="平平淡淡，没有什么特别的事。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="",first_branch="",branch=""};
get(10070) ->
	#cfg_relife_event{id=10070,evts="可能是运气不佳，这年里有好多小事让你烦心。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="",out_conds="EVT?[10646,10655]",first_branch="",branch="(INT<6)&(SPR<2):10062"};
get(10071) ->
	#cfg_relife_event{id=10071,evts="比较顺风顺水，快乐的一年。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="",out_conds="",first_branch="",branch=""};
get(10072) ->
	#cfg_relife_event{id=10072,evts="有天打雷，劈断了你家门口一棵树。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10072,10025]",first_branch="",branch=""};
get(10073) ->
	#cfg_relife_event{id=10073,evts="你意外挖到一个上了锁的盒子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10073,10025]",first_branch="",branch="INT>8:10074"};
get(10074) ->
	#cfg_relife_event{id=10074,evts="你想方设法打开了锁。",attrs_change=[[3,2],[4,2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10075) ->
	#cfg_relife_event{id=10075,evts="你的运动天赋好像不错。",attrs_change=[],is_rand_evt=,prev_conds="STR>8",out_conds="EVT?[10075]",first_branch="INT<3:20075",branch=""};
get(20075) ->
	#cfg_relife_event{id=20075,evts="可惜智力低了些。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10076) ->
	#cfg_relife_event{id=10076,evts="你发现动物好像都不怎么害怕你。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>9)&(EVT?[10009])",out_conds="EVT?[10076,10052]",first_branch="",branch=""};
get(10077) ->
	#cfg_relife_event{id=10077,evts="你发现你和其他人的想法好像都不一样。",attrs_change=[],is_rand_evt=,prev_conds="INT>9",out_conds="EVT?[10077,10090]",first_branch="",branch=""};
get(10078) ->
	#cfg_relife_event{id=10078,evts="你们家成为村里最富的家庭。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10009])",out_conds="EVT?[10078,10025]",first_branch="",branch=""};
get(10079) ->
	#cfg_relife_event{id=10079,evts="你的高颜值已经在周边家喻户晓。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>7)&(EVT?[10009])",out_conds="EVT?[10079]",first_branch="",branch=""};
get(10080) ->
	#cfg_relife_event{id=10080,evts="有人将你发在了网上，你小有名气。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>8)&(EVT?[10079])",out_conds="EVT?[10080]",first_branch="",branch=""};
get(10081) ->
	#cfg_relife_event{id=10081,evts="有星探和公司想带你去大城市发展。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10080]",out_conds="EVT?[10081]",first_branch="",branch="STR>5&MNY<5:10082"};
get(10082) ->
	#cfg_relife_event{id=10082,evts="你来到了一线城市，住进了一家网络公司。",attrs_change=[[3,2],[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10083) ->
	#cfg_relife_event{id=10083,evts="你过气了，被公司解除了协议。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10082]",out_conds="EVT?[10083]",first_branch="",branch="(INT<6)&(EVT?[10002,10111]):10084"};
get(10084) ->
	#cfg_relife_event{id=10084,evts="你过惯了奢靡的生活，无法再回乡下了。",attrs_change=[[2,-1],[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10085) ->
	#cfg_relife_event{id=10085,evts="你患上了艾滋病。",attrs_change=[[2,-3],[4,-2]],is_rand_evt=,prev_conds="EVT?[10084,10162,10219,20056]",out_conds="(EVT?[10085,10087])|(TLT?[1017])",first_branch="",branch="STR<1:10000"};
get(10086) ->
	#cfg_relife_event{id=10086,evts="你的病情逐渐加重。",attrs_change=[[2,-3],[4,-1]],is_rand_evt=,prev_conds="EVT?[10085]",out_conds="",first_branch="",branch="STR<1:10000"};
get(10087) ->
	#cfg_relife_event{id=10087,evts="你已经财务自由，不再出卖身体。",attrs_change=[[3,2]],is_rand_evt=,prev_conds="EVT?[10084,20056]",out_conds="EVT?[10087]",first_branch="",branch=""};
get(10088) ->
	#cfg_relife_event{id=10088,evts="你嫁给了一个普通的程序员。",attrs_change=[[4,2]],is_rand_evt=,prev_conds="EVT?[10087]",out_conds="(EVT?[10088])|(TLT?[1027])",first_branch="",branch=""};
get(10089) ->
	#cfg_relife_event{id=10089,evts="国家扶贫，你家获得了帮助。",attrs_change=[[3,1],[4,1]],is_rand_evt=,prev_conds="(MNY<4)&(EVT?[10009])",out_conds="",first_branch="",branch=""};
get(10090) ->
	#cfg_relife_event{id=10090,evts="你的智力过高，被外星人抓走做实验。",attrs_change=[[1,-1],[2,-1],[4,-1]],is_rand_evt=,prev_conds="INT>9",out_conds="EVT?[10090]",first_branch="",branch="STR<5:10000"};
get(10091) ->
	#cfg_relife_event{id=10091,evts="你经常在家搞些小发明。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10009])",out_conds="EVT?[10091]",first_branch="(INT>9)&(CHR<3):20091",branch="MNY<3:20092"};
get(20091) ->
	#cfg_relife_event{id=20091,evts="你发明了颜值提升机，大幅提高了颜值。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20092) ->
	#cfg_relife_event{id=20092,evts="你发明了许多有用的小东西，卖了不少钱。",attrs_change=[[3,2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10092) ->
	#cfg_relife_event{id=10092,evts="你被一只蛇咬了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10092]",first_branch="",branch="(STR<3)&(TLT![1022]):10000"};
get(10093) ->
	#cfg_relife_event{id=10093,evts="你第一次被父母打。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="",out_conds="(EVT?[10093,10016,10017,10144,10024])|(TLT?[1015])",first_branch="",branch=""};
get(10094) ->
	#cfg_relife_event{id=10094,evts="你第一次坐在躺椅上，看灿烂的银河星空",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10094,10025]",first_branch="",branch=""};
get(10095) ->
	#cfg_relife_event{id=10095,evts="你在晚上和小伙伴一起捉萤火虫。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10095,10025]",first_branch="",branch=""};
get(10096) ->
	#cfg_relife_event{id=10096,evts="你听说国外发生了很多大事。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10096]",first_branch="",branch=""};
get(10097) ->
	#cfg_relife_event{id=10097,evts="隔壁村的一个孩子淹死了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10097,10015,10016,10017,10024]",first_branch="",branch=""};
get(10098) ->
	#cfg_relife_event{id=10098,evts="你听了轮回转世的神话故事。",attrs_change=[],is_rand_evt=,prev_conds="INT>4",out_conds="EVT?[10098]",first_branch="",branch=""};
get(10099) ->
	#cfg_relife_event{id=10099,evts="你徒手抓住了一只老鼠。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>6)&(STR>6)&(EVT?[10009])",out_conds="EVT?[10099]",first_branch="",branch=""};
get(10100) ->
	#cfg_relife_event{id=10100,evts="你常常坐在家门口发呆，十分无聊。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10100,10036,10037]",first_branch="",branch=""};
get(10101) ->
	#cfg_relife_event{id=10101,evts="你开始上小学了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10101]",first_branch="",branch=""};
get(10102) ->
	#cfg_relife_event{id=10102,evts="你在学校交到了新朋友。",attrs_change=[],is_rand_evt=,prev_conds="(INT>2)&(CHR>2)&(EVT?[10101])",out_conds="EVT?[10102]",first_branch="",branch=""};
get(10103) ->
	#cfg_relife_event{id=10103,evts="你第一次接触英语。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10103]",first_branch="",branch=""};
get(10104) ->
	#cfg_relife_event{id=10104,evts="你们的数学老师是一个支教老师。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10104,10025]",first_branch="",branch=""};
get(10105) ->
	#cfg_relife_event{id=10105,evts="学校老师太少，你们的体育老师还教你们语文课。",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10105,10025]",first_branch="",branch=""};
get(10106) ->
	#cfg_relife_event{id=10106,evts="你期末考试考了100分。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10101])",out_conds="EVT?[10106]",first_branch="",branch=""};
get(10107) ->
	#cfg_relife_event{id=10107,evts="你期末考试全都不及格。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(INT<3)&(EVT?[10101])",out_conds="EVT?[10107]",first_branch="",branch=""};
get(10108) ->
	#cfg_relife_event{id=10108,evts="你当上了体育课代表。",attrs_change=[],is_rand_evt=,prev_conds="(STR>7)&(EVT?[10101])",out_conds="EVT?[10108]",first_branch="",branch=""};
get(10109) ->
	#cfg_relife_event{id=10109,evts="你在同学中非常受欢迎。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(CHR>7)&(EVT?[10101])",out_conds="EVT?[10109,10113,10114]",first_branch="",branch=""};
get(10110) ->
	#cfg_relife_event{id=10110,evts="你出生了，是极为罕见的无性人。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="TLT?[1003,1004,1024,1113]",first_branch="",branch=""};
get(10111) ->
	#cfg_relife_event{id=10111,evts="你出生了，是极为罕见的双性人。",attrs_change=[],is_rand_evt=,prev_conds="",out_conds="TLT?[1003,1004,1025]",first_branch="",branch=""};
get(10112) ->
	#cfg_relife_event{id=10112,evts="同学总是欺负你。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="(CHR<3)&(EVT?[10101])",out_conds="(EVT?[10112])|(TLT?[1037])",first_branch="",branch=""};
get(10113) ->
	#cfg_relife_event{id=10113,evts="同学总是欺负你。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="(INT<3)&(EVT?[10101])",out_conds="(EVT?[10113,10109])|(TLT?[1037])",first_branch="",branch=""};
get(10114) ->
	#cfg_relife_event{id=10114,evts="同学总是欺负你。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="(EVT?[10101])&(EVT?[10110,10111])",out_conds="(EVT?[10114,10109])|(TLT?[1037])",first_branch="",branch=""};
get(10115) ->
	#cfg_relife_event{id=10115,evts="你和同桌偷偷谈起了恋爱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>2)&(CHR>4)&(EVT?[10101])",out_conds="(EVT?[10115,10116,10110,10111])|(TLT?[1026,1027])",first_branch="",branch=""};
get(10116) ->
	#cfg_relife_event{id=10116,evts="你和同桌悄悄谈起了恋爱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>1)&(CHR>3)&(EVT?[10101])&(TLT?[1028])",out_conds="(EVT?[10115,10116,10110,10111])|(TLT?[1026,1027])",first_branch="",branch=""};
get(10117) ->
	#cfg_relife_event{id=10117,evts="你当上了班长。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(CHR>3)&(INT>6)&(EVT?[10101])",out_conds="EVT?[10117]",first_branch="",branch=""};
get(10118) ->
	#cfg_relife_event{id=10118,evts="你当上了领操员。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>3)&(STR>6)&(EVT?[10101])",out_conds="EVT?[10118]",first_branch="",branch=""};
get(10119) ->
	#cfg_relife_event{id=10119,evts="你为班级出了一次黑板报。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10048])&(EVT?[10101])",out_conds="EVT?[10119]",first_branch="",branch=""};
get(10120) ->
	#cfg_relife_event{id=10120,evts="你们班收到了捐赠的书籍文具。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10120,10025,10120]",first_branch="",branch=""};
get(10121) ->
	#cfg_relife_event{id=10121,evts="你们班建立了读书角。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10121]",first_branch="",branch=""};
get(10122) ->
	#cfg_relife_event{id=10122,evts="学校里盖了一座新楼。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10122,10025]",first_branch="",branch=""};
get(10123) ->
	#cfg_relife_event{id=10123,evts="村中阿婆家新盖了小洋房。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10123,10025]",first_branch="",branch=""};
get(10124) ->
	#cfg_relife_event{id=10124,evts="夏日的一天村里鞭炮齐鸣。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10124,10025]",first_branch="",branch=""};
get(10125) ->
	#cfg_relife_event{id=10125,evts="你的父亲意外去世。",attrs_change=[[3,-2],[4,-2]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10017,10125])|(TLT?[1029])",first_branch="",branch=""};
get(10126) ->
	#cfg_relife_event{id=10126,evts="你的母亲意外去世。",attrs_change=[[3,-1],[4,-2]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10016,10126])|(TLT?[1029])",first_branch="",branch=""};
get(10127) ->
	#cfg_relife_event{id=10127,evts="你的爷爷因病去世。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10127]",first_branch="",branch=""};
get(10128) ->
	#cfg_relife_event{id=10128,evts="你的奶奶因病去世。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10128]",first_branch="",branch=""};
get(10129) ->
	#cfg_relife_event{id=10129,evts="你很努力学习，但成绩就是提不上去。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(INT<4)&(EVT?[10101])",out_conds="EVT?[10129]",first_branch="",branch=""};
get(10130) ->
	#cfg_relife_event{id=10130,evts="今年大丰收，而且你家种的菜也涨价了。",attrs_change=[[3,1],[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10130]",first_branch="",branch=""};
get(10131) ->
	#cfg_relife_event{id=10131,evts="你获得了第一份奖状。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>4)&(EVT?[10101])",out_conds="EVT?[10131,10132,10133]",first_branch="",branch=""};
get(10132) ->
	#cfg_relife_event{id=10132,evts="你获评三好学生。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(STR>5)&(INT>5)&(EVT?[10101])",out_conds="",first_branch="",branch=""};
get(10133) ->
	#cfg_relife_event{id=10133,evts="你获评三好标兵。",attrs_change=[[4,2]],is_rand_evt=,prev_conds="(STR>7)&(INT>7)&(EVT?[10101])",out_conds="",first_branch="",branch=""};
get(10134) ->
	#cfg_relife_event{id=10134,evts="有同学在班上炫耀新玩具，被老师没收了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10134]",first_branch="",branch=""};
get(10135) ->
	#cfg_relife_event{id=10135,evts="你前排的同学在课上偷偷玩手机。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10135]",first_branch="",branch=""};
get(10136) ->
	#cfg_relife_event{id=10136,evts="老师在班上进行了IQ测试。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10101])",out_conds="EVT?[10136]",first_branch="",branch=""};
get(10137) ->
	#cfg_relife_event{id=10137,evts="老师在班上进行了IQ测试。",attrs_change=[],is_rand_evt=,prev_conds="(INT>6)&(EVT?[10101])",out_conds="EVT?[10137]",first_branch="",branch=""};
get(10138) ->
	#cfg_relife_event{id=10138,evts="努力学习的一年，能感受到水平的提高。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="(INT>3)&(EVT?[10101])",out_conds="EVT?[10138]",first_branch="",branch=""};
get(10139) ->
	#cfg_relife_event{id=10139,evts="没有用功学习的一年，能感受到水平的下降。",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="(INT<8)&(EVT?[10101])",out_conds="EVT?[10139]",first_branch="",branch=""};
get(10140) ->
	#cfg_relife_event{id=10140,evts="你家养的狗被人毒死了。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10140,10141])|(TLT?[1030])",first_branch="",branch=""};
get(10141) ->
	#cfg_relife_event{id=10141,evts="你家养的猫被人毒死了。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10140,10141])|(TLT?[1030])",first_branch="",branch=""};
get(10142) ->
	#cfg_relife_event{id=10142,evts="家里老鼠蟑螂泛滥成灾。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<5)&(EVT?[10009])",out_conds="",first_branch="",branch=""};
get(10143) ->
	#cfg_relife_event{id=10143,evts="隔壁的村花和邻居叔叔结婚了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10143,10031,10025]",first_branch="",branch=""};
get(10144) ->
	#cfg_relife_event{id=10144,evts="你天天被父母殴打。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10093,10016,10019,10017,10144,10125,10126,10024])|(TLT?[1015])",first_branch="",branch=""};
get(10145) ->
	#cfg_relife_event{id=10145,evts="成为了弹弓高手，一弹一鸟。",attrs_change=[],is_rand_evt=,prev_conds="(INT>3)&(STR>5)&(EVT?[10009])",out_conds="EVT?[10145,10002,10025]",first_branch="",branch=""};
get(10146) ->
	#cfg_relife_event{id=10146,evts="在田里插秧时，总是被水蛭叮咬。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10146,10002,10025]",first_branch="",branch=""};
get(10147) ->
	#cfg_relife_event{id=10147,evts="村子里基本没几个年轻人了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10147,10025]",first_branch="",branch=""};
get(10148) ->
	#cfg_relife_event{id=10148,evts="你家装上了全村唯一的wifi，总有人来问密码。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>6)&(EVT?[10009])",out_conds="EVT?[10148,10024]",first_branch="",branch=""};
get(10149) ->
	#cfg_relife_event{id=10149,evts="教室里唯一较好的窗户也破了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10149,10025]",first_branch="",branch=""};
get(10150) ->
	#cfg_relife_event{id=10150,evts="你家的屋檐上多了个燕子窝。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10150]",first_branch="",branch=""};
get(10151) ->
	#cfg_relife_event{id=10151,evts="教室窗外多了个马蜂窝。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10151]",first_branch="",branch=""};
get(10152) ->
	#cfg_relife_event{id=10152,evts="你的床板塌了，只能睡桌椅上了。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10152]",first_branch="",branch=""};
get(10153) ->
	#cfg_relife_event{id=10153,evts="你突然生了场大病。",attrs_change=[[2,-2],[3,-1],[4,-1]],is_rand_evt=,prev_conds="(STR<5)&(EVT?[10009])",out_conds="EVT?[10153]",first_branch="",branch="STR<1:10000"};
get(10154) ->
	#cfg_relife_event{id=10154,evts="你总是遭遇校园暴力。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="(STR<6)&(EVT?[10009])",out_conds="(EVT?[10109,10154])|(TLT?[1037])",first_branch="",branch="SPR<2:10062"};
get(10155) ->
	#cfg_relife_event{id=10155,evts="你家人让你能辍学打工，为弟弟攒彩礼钱。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10014])&(EVT?[10101])",out_conds="(EVT?[10155,10156])|(TLT?[1015])",first_branch="",branch=""};
get(10156) ->
	#cfg_relife_event{id=10156,evts="你家人让你能辍学打工，补贴家用。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<5)&(EVT?[10101])",out_conds="(EVT?[10155,10156])|(TLT?[1015])",first_branch="",branch=""};
get(10157) ->
	#cfg_relife_event{id=10157,evts="你在城里找到了一份工作。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10155,10156,10025]",out_conds="EVT?[10157]",first_branch="",branch=""};
get(10158) ->
	#cfg_relife_event{id=10158,evts="你买彩票中了个小奖。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10157]",out_conds="EVT?[10158]",first_branch="",branch=""};
get(10159) ->
	#cfg_relife_event{id=10159,evts="你买彩票中了个大奖。",attrs_change=[[3,2],[4,2]],is_rand_evt=,prev_conds="EVT?[10157]",out_conds="EVT?[10159]",first_branch="",branch=""};
get(10160) ->
	#cfg_relife_event{id=10160,evts="你留了一级。",attrs_change=[],is_rand_evt=,prev_conds="(INT<4)&(EVT?[10101])",out_conds="EVT?[10160,10025,10156,10155]",first_branch="",branch=""};
get(10161) ->
	#cfg_relife_event{id=10161,evts="你遭到了同事的性骚扰。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(CHR>6)&(EVT?[10157])",out_conds="",first_branch="",branch=""};
get(10162) ->
	#cfg_relife_event{id=10162,evts="你遭到了同事的性侵。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="(STR<5)&(CHR>8)&(EVT?[10157])",out_conds="",first_branch="",branch=""};
get(10163) ->
	#cfg_relife_event{id=10163,evts="过年时拜访了几十家亲戚。",attrs_change=[],is_rand_evt=,prev_conds="(STR>1)&(EVT?[10009])",out_conds="EVT?[10163,10025,10156,10155]",first_branch="",branch=""};
get(10164) ->
	#cfg_relife_event{id=10164,evts="家里茅坑废弃了，换成了马桶。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>4)&(EVT?[10009])",out_conds="EVT?[10164,10025,10156,10155]",first_branch="",branch=""};
get(10165) ->
	#cfg_relife_event{id=10165,evts="通了自来水，家里的井不再使用。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>3)&(EVT?[10009])",out_conds="EVT?[10164,10165,10025,10156,10155]",first_branch="",branch=""};
get(10166) ->
	#cfg_relife_event{id=10166,evts="半夜发烧，爸妈路边等公交车送你去县城医院.",attrs_change=[],is_rand_evt=,prev_conds="(STR<5)&(MNY<5)&(EVT?[10009])",out_conds="EVT?[10166,10015,10016,10017,10125,10126]",first_branch="",branch=""};
get(10167) ->
	#cfg_relife_event{id=10167,evts="用牙齿咬欺凌自己的人，反而被告老师。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10154,10112,10113,10114]",out_conds="EVT?[10167]",first_branch="",branch=""};
get(10168) ->
	#cfg_relife_event{id=10168,evts="被老人讲的鬼故事吓到。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10168,10127,10128]",first_branch="",branch=""};
get(10169) ->
	#cfg_relife_event{id=10169,evts="买小卖部的零食吃，第二天拉肚子发烧。",attrs_change=[],is_rand_evt=,prev_conds="(STR<5)&(MNY>2)&(EVT?[10009])",out_conds="EVT?[10169]",first_branch="",branch=""};
get(10170) ->
	#cfg_relife_event{id=10170,evts="被同学取难听的外号。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(STR<9)&(MNY<9)&(EVT?[10101])",out_conds="(EVT?[10170,10109])|(TLT?[1037])",first_branch="",branch=""};
get(10171) ->
	#cfg_relife_event{id=10171,evts="过年玩鞭炮被炸伤。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10171,10002]",first_branch="",branch=""};
get(10172) ->
	#cfg_relife_event{id=10172,evts="在外面玩到晚上，被爸妈抓了回来。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10172,10015,10016,10017,10125,10126]",first_branch="",branch=""};
get(10173) ->
	#cfg_relife_event{id=10173,evts="学自行车摔得膝盖流血。",attrs_change=[],is_rand_evt=,prev_conds="(STR<4)&(EVT?[10009])",out_conds="TLT?[1038]",first_branch="",branch=""};
get(10174) ->
	#cfg_relife_event{id=10174,evts="尝试自学自行车。",attrs_change=[],is_rand_evt=,prev_conds="(INT<5)&(STR<5)&(EVT?[10009])",out_conds="TLT?[1038]",first_branch="",branch=""};
get(10175) ->
	#cfg_relife_event{id=10175,evts="尝试自学自行车。",attrs_change=[],is_rand_evt=,prev_conds="(INT>1)&(STR>1)&(EVT?[10009])",out_conds="EVT?[10175]",first_branch="",branch=""};
get(10176) ->
	#cfg_relife_event{id=10176,evts="想买和同学同款的玩具，但买不起。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<4)&(EVT?[10101])",out_conds="EVT?[10176]",first_branch="",branch=""};
get(10177) ->
	#cfg_relife_event{id=10177,evts="被爸爸带去打麻将到半夜，睡着了还没回家。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10177,10015,10017,10125]",first_branch="",branch=""};
get(10178) ->
	#cfg_relife_event{id=10178,evts="学着帮家里喂牲畜。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10178]",first_branch="",branch=""};
get(10179) ->
	#cfg_relife_event{id=10179,evts="下完雨退潮去河边捡田螺。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10179]",first_branch="",branch=""};
get(10180) ->
	#cfg_relife_event{id=10180,evts="去池塘电鱼吃。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10180,10025,10156,10155]",first_branch="",branch=""};
get(10181) ->
	#cfg_relife_event{id=10181,evts="上山剪橘子差点掉下山。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10181,10025,10156,10155]",first_branch="",branch=""};
get(10182) ->
	#cfg_relife_event{id=10182,evts="被路上的狗堵路追着跑。",attrs_change=[],is_rand_evt=,prev_conds="(STR>2)&(CHR<9)&(EVT?[10009])",out_conds="EVT?[10182,10183]",first_branch="",branch=""};
get(10183) ->
	#cfg_relife_event{id=10183,evts="被野狗咬了，去县城打狂犬疫苗。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(MNY>2)&(CHR<9)&(EVT?[10009])",out_conds="EVT?[10183]",first_branch="",branch=""};
get(10184) ->
	#cfg_relife_event{id=10184,evts="考上县城初中，每天要走很远去上学。",attrs_change=[],is_rand_evt=,prev_conds="(INT>4)&(MNY>2)&(EVT?[10101])",out_conds="EVT?[10184,10025,10156,10155]",first_branch="",branch=""};
get(10185) ->
	#cfg_relife_event{id=10185,evts="考上县城初中，但是上不起。",attrs_change=[],is_rand_evt=,prev_conds="(INT>4)&(MNY<3)&(EVT?[10101])",out_conds="EVT?[10185,10025,10156,10155]",first_branch="",branch=""};
get(10186) ->
	#cfg_relife_event{id=10186,evts="班上大多数都是混混的，课都上不成。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10184,10025,10156,10155]",first_branch="TLT?[1108]:20186",branch=""};
get(20186) ->
	#cfg_relife_event{id=20186,evts="你的性格也很叛逆，和他们一见如故。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10187) ->
	#cfg_relife_event{id=10187,evts="被坏同学影响，开始抽烟喝酒去游戏厅。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10184,10187,10025,10156,10155]",first_branch="",branch=""};
get(10188) ->
	#cfg_relife_event{id=10188,evts="开始去网吧，沉迷游戏。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10188,10194,10002]",first_branch="",branch=""};
get(10189) ->
	#cfg_relife_event{id=10189,evts="沉迷二次元，天天追新番。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10007,10008]",out_conds="EVT?[10189]",first_branch="",branch=""};
get(10190) ->
	#cfg_relife_event{id=10190,evts="游戏水平很高，远近网吧闻名。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(STR>2)&(INT>7)&(EVT?[10188,10194])",out_conds="EVT?[10190]",first_branch="",branch=""};
get(10191) ->
	#cfg_relife_event{id=10191,evts="被公司发掘，进入电竞培训队。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10190,10942]",out_conds="EVT?[10191]",first_branch="",branch=""};
get(10192) ->
	#cfg_relife_event{id=10192,evts="开始为战队打比赛。",attrs_change=[[2,-1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10191]",out_conds="EVT?[10192]",first_branch="TLT?[1039]:10193",branch="SPR>6:10193"};
get(10193) ->
	#cfg_relife_event{id=10193,evts="连续夺得大奖。",attrs_change=[[2,-2],[3,2],[4,2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10194) ->
	#cfg_relife_event{id=10194,evts="开始去网吧，沉迷游戏。",attrs_change=[],is_rand_evt=,prev_conds="(TLT?[1039])&(EVT?[10009])",out_conds="EVT?[10194,10188]",first_branch="",branch=""};
get(10195) ->
	#cfg_relife_event{id=10195,evts="巅峰时期退役。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10193]",out_conds="EVT?[10195,10196,10197]",first_branch="",branch=""};
get(10196) ->
	#cfg_relife_event{id=10196,evts="继续打比赛。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="(STR>3)&(EVT?[10192])",out_conds="EVT?[10195,10196,10197]",first_branch="",branch=""};
get(10197) ->
	#cfg_relife_event{id=10197,evts="退役。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10192]",out_conds="EVT?[10195,10196,10197]",first_branch="",branch=""};
get(10198) ->
	#cfg_relife_event{id=10198,evts="中考考的很差，没考上高中。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10009])&(INT<4)&(EVT?[10188,10187,10186,10189])",out_conds="EVT?[10198,10199,10200,10025,10156,10155]",first_branch="",branch=""};
get(10199) ->
	#cfg_relife_event{id=10199,evts="中考考的一般，上了县里的高中。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="(INT<3)|(EVT?[10198,10200,10199,10025,10156,10155])",first_branch="",branch=""};
get(10200) ->
	#cfg_relife_event{id=10200,evts="中考考的很好，上了城里的好高中。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>2)&(INT>5)&(EVT?[10101])",out_conds="(INT<6)|(EVT?[10198,10200,10199,10025,10156,10155])",first_branch="",branch=""};
get(10201) ->
	#cfg_relife_event{id=10201,evts="打篮球、踢足球受伤。",attrs_change=[],is_rand_evt=,prev_conds="(STR>4)&(MNY>2)&(EVT?[10101])",out_conds="(STR>9)|(EVT?[10201,10002])",first_branch="",branch=""};
get(10202) ->
	#cfg_relife_event{id=10202,evts="被视察的体校教练发掘。去体校训练。",attrs_change=[],is_rand_evt=,prev_conds="(STR>6)&(EVT?[10184])",out_conds="EVT?[10202]",first_branch="",branch=""};
get(10203) ->
	#cfg_relife_event{id=10203,evts="进入省队。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10202,10939]",out_conds="EVT?[10203,10204]",first_branch="",branch="SPR>8:10204"};
get(10204) ->
	#cfg_relife_event{id=10204,evts="表现突出，进入国家队。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10205) ->
	#cfg_relife_event{id=10205,evts="刻苦训练。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="EVT?[10203]",out_conds="EVT?[10205,10204]",first_branch="",branch="SPR>8:10204"};
get(10206) ->
	#cfg_relife_event{id=10206,evts="刻苦训练。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10203]",out_conds="EVT?[10206]",first_branch="",branch=""};
get(10207) ->
	#cfg_relife_event{id=10207,evts="参加奥运会。",attrs_change=[[3,1],[4,1]],is_rand_evt=,prev_conds="EVT?[10204]",out_conds="",first_branch="",branch="SPR>9:10208"};
get(10208) ->
	#cfg_relife_event{id=10208,evts="夺得金牌。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch="SPR>10:10209"};
get(10209) ->
	#cfg_relife_event{id=10209,evts="并打破世界纪录。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10210) ->
	#cfg_relife_event{id=10210,evts="退役。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10203]",out_conds="EVT?[10210]",first_branch="",branch=""};
get(10211) ->
	#cfg_relife_event{id=10211,evts="和男同学谈恋爱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10009])&((EVT?[10002,10110,10111])|(TLT?[1026]))",out_conds="(EVT?[10211,10198,10025,10156,10155])|(TLT?[1027])",first_branch="",branch=""};
get(10212) ->
	#cfg_relife_event{id=10212,evts="和女同学谈恋爱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10009])&((EVT?[10001,10110,10111])|(TLT?[1026]))",out_conds="(EVT?[10212,10198,10025,10156,10155])|(TLT?[1027])",first_branch="",branch=""};
get(10213) ->
	#cfg_relife_event{id=10213,evts="有同学翻学校围墙逃课，意外身亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10213]",first_branch="TLT?[1108]:20213",branch=""};
get(20213) ->
	#cfg_relife_event{id=20213,evts="由于你喜欢没事找事，你也试着翻围墙，结果也死了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="EVT?[10101]:10000",branch=""};
get(10214) ->
	#cfg_relife_event{id=10214,evts="性启蒙。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10214]",first_branch="",branch=""};
get(10215) ->
	#cfg_relife_event{id=10215,evts="遇上街上的黑社会对拼，很震撼。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10215,10185]",first_branch="TLT?[1108]:20215",branch=""};
get(20215) ->
	#cfg_relife_event{id=20215,evts="你想离近点看，结果被流弹击中。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="EVT?[10009]:10000",branch=""};
get(10216) ->
	#cfg_relife_event{id=10216,evts="坐公交车被劫车收保护费。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10216,10185]",first_branch="",branch=""};
get(10217) ->
	#cfg_relife_event{id=10217,evts="被同学骗沾染毒品。",attrs_change=[[2,-2],[3,-1],[4,1]],is_rand_evt=,prev_conds="EVT?[10009,10185,10186,10187,10188]",out_conds="(EVT?[10217])|(TLT?[1040])",first_branch="",branch="STR<1:10000"};
get(10218) ->
	#cfg_relife_event{id=10218,evts="学会赌博。",attrs_change=[[3,-2],[4,-1]],is_rand_evt=,prev_conds="EVT?[10009,10185,10186,10187,10188]",out_conds="(EVT?[10218])|(TLT?[1040])",first_branch="",branch=""};
get(10219) ->
	#cfg_relife_event{id=10219,evts="被同学带去嫖娼。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10009,10185,10186,10187,10188])&(EVT?[10001])",out_conds="",first_branch="",branch=""};
get(10220) ->
	#cfg_relife_event{id=10220,evts="你吸毒被捕。",attrs_change=[[2,-1],[3,-1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10217]",out_conds="EVT?[10220]",first_branch="SPR<2:10062",branch="STR<1:10000"};
get(10221) ->
	#cfg_relife_event{id=10221,evts="你日渐消瘦。",attrs_change=[[2,-1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10217]",out_conds="",first_branch="SPR<2:10062",branch="STR<1:10000"};
get(10222) ->
	#cfg_relife_event{id=10222,evts="你戒掉了毒品。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10217]",out_conds="EVT?[10222]",first_branch="",branch="SPR<2:10062"};
get(10223) ->
	#cfg_relife_event{id=10223,evts="你四处借贷，倾家荡产。",attrs_change=[[3,-2],[4,-2]],is_rand_evt=,prev_conds="EVT?[10218]",out_conds="EVT?[10223]",first_branch="SPR<2:10062",branch="MNY<2:10013"};
get(10224) ->
	#cfg_relife_event{id=10224,evts="去城里看亲戚。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<5)&(EVT?[10009])",out_conds="EVT?[10224]",first_branch="",branch=""};
get(10225) ->
	#cfg_relife_event{id=10225,evts="到同学家借书看。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>3)&(MNY<5)&(EVT?[10199,10200,10184])",out_conds="EVT?[10225]",first_branch="",branch=""};
get(10226) ->
	#cfg_relife_event{id=10226,evts="混不下去了，回老家种田。",attrs_change=[],is_rand_evt=,prev_conds="(INT<8)&(EVT?[10025,10156,10155])",out_conds="EVT?[10226]",first_branch="",branch=""};
get(10227) ->
	#cfg_relife_event{id=10227,evts="有同学退学结婚了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10101]",out_conds="EVT?[10227]",first_branch="",branch=""};
get(10228) ->
	#cfg_relife_event{id=10228,evts="你开始相亲。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10222]",out_conds="(EVT?[10228,10229])|(TLT?[1027])",first_branch="",branch=""};
get(10229) ->
	#cfg_relife_event{id=10229,evts="你结婚了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10228]",out_conds="EVT?[10229,11171,11093,10610,10611,10612]",first_branch="",branch=""};
get(10230) ->
	#cfg_relife_event{id=10230,evts="你被家人逼着去和一个不喜欢的村民结婚。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="EVT?[10198,10155,10156,10226]",out_conds="(EVT?[10230,10016,10017])|(TLT?[1015])",first_branch="TLT?[1027]:10232",branch="SPR<2:10062"};
get(10231) ->
	#cfg_relife_event{id=10231,evts="你和村中一个你喜欢的姑娘在一起了。",attrs_change=[[4,2]],is_rand_evt=,prev_conds="(EVT?[10198,10155,10156])&((EVT?[10001,10110,10111])|(TLT?[1026]))",out_conds="(EVT?[10230,10231])|(TLT?[1027])",first_branch="",branch=""};
get(10232) ->
	#cfg_relife_event{id=10232,evts="你誓死不从，自杀了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="TLT?[1027]:10000",branch=""};
get(10233) ->
	#cfg_relife_event{id=10233,evts="你和隔壁村一个你喜欢的小伙在一起了。",attrs_change=[[4,2]],is_rand_evt=,prev_conds="(EVT?[10198,10155,10156])&((EVT?[10002,10110,10111])|(TLT?[1026]))",out_conds="(EVT?[10230,10231])|(TLT?[1027])",first_branch="",branch=""};
get(10234) ->
	#cfg_relife_event{id=10234,evts="你和另一个游戏主播结婚了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10195,10197]",out_conds="(EVT?[10234])|(TLT?[1027])",first_branch="",branch=""};
get(10235) ->
	#cfg_relife_event{id=10235,evts="你找到了一个适合的人，结婚了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10210])&(EVT?[10009])",out_conds="(EVT?[10235])|(TLT?[1027])",first_branch="",branch=""};
get(10236) ->
	#cfg_relife_event{id=10236,evts="你年龄大了，随便找了一个将就着结婚了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10235,10236,10234,10233,10231,10230,10229,10610,10611,10612,10088])|(TLT?[1027])",first_branch="",branch=""};
get(10237) ->
	#cfg_relife_event{id=10237,evts="高考，你考上了专科。",attrs_change=[],is_rand_evt=,prev_conds="(INT<6)&(EVT?[10199])",out_conds="EVT?[10237,10238,10239,10468]",first_branch="",branch=""};
get(10238) ->
	#cfg_relife_event{id=10238,evts="高考，你考上了当地的普通本科。",attrs_change=[],is_rand_evt=,prev_conds="(INT>5)&(EVT?[10199,10200])",out_conds="(INT>7)|(EVT?[10238,10237,10239,10468])",first_branch="",branch=""};
get(10239) ->
	#cfg_relife_event{id=10239,evts="高考，你考上了大城市的重点本科。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10199,10200])",out_conds="EVT?[10239,10238,10237,10468]",first_branch="",branch=""};
get(10240) ->
	#cfg_relife_event{id=10240,evts="你参加了社会实践。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10240]",first_branch="",branch=""};
get(10241) ->
	#cfg_relife_event{id=10241,evts="你参加了志愿者活动。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10241]",first_branch="",branch=""};
get(10242) ->
	#cfg_relife_event{id=10242,evts="发现班上至少一半同学天天翘课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10242]",first_branch="",branch=""};
get(10243) ->
	#cfg_relife_event{id=10243,evts="你漏了一节思修课没上，打开了开关。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10243]",first_branch="",branch=""};
get(10244) ->
	#cfg_relife_event{id=10244,evts="加入了学生会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10244]",first_branch="",branch=""};
get(10245) ->
	#cfg_relife_event{id=10245,evts="和同院的一个女生谈恋爱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10237,10238,10239])&((EVT?[10001,10110,10111])|(TLT?[1026]))",out_conds="(EVT?[10245])|(TLT?[1027])",first_branch="",branch=""};
get(10246) ->
	#cfg_relife_event{id=10246,evts="和同院的一个男生谈恋爱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10237,10238,10239])&((EVT?[10002,10110,10111])|(TLT?[1026]))",out_conds="(EVT?[10246])|(TLT?[1027])",first_branch="",branch=""};
get(10247) ->
	#cfg_relife_event{id=10247,evts="遭到了附近的恶霸殴打，报警不管，举报无门。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="(STR<7)&(EVT?[10009])",out_conds="EVT?[10247]",first_branch="SPR<3:10248",branch=""};
get(10248) ->
	#cfg_relife_event{id=10248,evts="你怀恨在心，买了水果刀将恶霸捅死了。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10249) ->
	#cfg_relife_event{id=10249,evts="恶霸家手眼通天，你被判处死刑。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="EVT?[10248]",out_conds="EVT?[10249]",first_branch="EVT?[10248]:10000",branch=""};
get(10250) ->
	#cfg_relife_event{id=10250,evts="你和大学对象步入了婚姻的殿堂。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10245,10246]",out_conds="(EVT?[10250,10251])|(TLT?[1027])",first_branch="",branch=""};
get(10251) ->
	#cfg_relife_event{id=10251,evts="你开始相亲。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="(EVT?[10251,10236,10229,10250,10245,10246])|(TLT?[1027])",first_branch="",branch=""};
get(10252) ->
	#cfg_relife_event{id=10252,evts="你始终找不到合适的对象。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10251]",out_conds="",first_branch="",branch=""};
get(10253) ->
	#cfg_relife_event{id=10253,evts="你的父亲因病去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10253,10016,10017,10125,10126,10254,10255,10256,10257]",first_branch="",branch=""};
get(10254) ->
	#cfg_relife_event{id=10254,evts="你的母亲发生车祸去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10253,10016,10126,10254,10257])|(TLT?[1043])",first_branch="",branch=""};
get(10255) ->
	#cfg_relife_event{id=10255,evts="你的父亲意外去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10253,10017,10125,10255,10256]",first_branch="",branch=""};
get(10256) ->
	#cfg_relife_event{id=10256,evts="你的父亲突发心血管疾病去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="(EVT?[10253,10017,10125,10255,10256])|(TLT?[1044])",first_branch="",branch=""};
get(10257) ->
	#cfg_relife_event{id=10257,evts="你的母亲重病去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10253,10016,10126,10254,10257]",first_branch="",branch=""};
get(10258) ->
	#cfg_relife_event{id=10258,evts="你想要参军。",attrs_change=[],is_rand_evt=,prev_conds="(STR>5)&(EVT?[10009,10940])",out_conds="EVT?[10198,10199,10200,10025,10156,10155,10258]",first_branch="",branch=""};
get(10259) ->
	#cfg_relife_event{id=10259,evts="你正式入伍。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10258]",out_conds="EVT?[10259,10468]",first_branch="",branch=""};
get(10260) ->
	#cfg_relife_event{id=10260,evts="平淡但不平凡的军旅生涯。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10259]",out_conds="",first_branch="",branch=""};
get(10261) ->
	#cfg_relife_event{id=10261,evts="你比其他战士更能吃苦耐劳。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(STR>7)&(EVT?[10259])",out_conds="EVT?[10261]",first_branch="",branch=""};
get(10262) ->
	#cfg_relife_event{id=10262,evts="你的智慧让其他人刮目相看。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10259])",out_conds="EVT?[10262]",first_branch="",branch=""};
get(10263) ->
	#cfg_relife_event{id=10263,evts="你的颜值让同性都忍不住多看几眼。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>7)&(EVT?[10259])",out_conds="EVT?[10263]",first_branch="",branch=""};
get(10264) ->
	#cfg_relife_event{id=10264,evts="你退伍了。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10259]",out_conds="EVT?[10264]",first_branch="TLT?[1045]:10265",branch=""};
get(10265) ->
	#cfg_relife_event{id=10265,evts="当上了村委书记。",attrs_change=[[3,2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10266) ->
	#cfg_relife_event{id=10266,evts="你和隔壁村老村委书记家的孩子结婚了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10265]",out_conds="(EVT?[10266])|(TLT?[1027])",first_branch="",branch=""};
get(10267) ->
	#cfg_relife_event{id=10267,evts="你在一次演习中发生了意外。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10259]",out_conds="EVT?[10267]",first_branch="INT<6:10000",branch=""};
get(10268) ->
	#cfg_relife_event{id=10268,evts="你们生了一个女儿。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="(TLT?[1041,1046,1026])|(EVT?[10269,10110,10279])",first_branch="",branch=""};
get(10269) ->
	#cfg_relife_event{id=10269,evts="你们生了一个儿子。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="(TLT?[1041,1046,1026])|(EVT?[10269,10110,10279])",first_branch="",branch=""};
get(10270) ->
	#cfg_relife_event{id=10270,evts="因为你不想生孩子，你们离婚了。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236])&(TLT?[1041])",out_conds="(EVT?[10270,10270,10271,11294,11295,10281,10282,20076,10110,10279])|(TLT?[1123])",first_branch="",branch=""};
get(10271) ->
	#cfg_relife_event{id=10271,evts="生不出孩子，医院检查发现你功能有问题。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236])&(TLT?[1046])",out_conds="(EVT?[10271,10279,10270,10271,11294,20076,11295,10281])|(TLT?[1123])",first_branch="",branch=""};
get(10272) ->
	#cfg_relife_event{id=10272,evts="你们领养了一个孩子。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236])&(TLT?[1026])",out_conds="EVT?[10272,11295,10281,10282,10279]",first_branch="",branch=""};
get(10273) ->
	#cfg_relife_event{id=10273,evts="普通的家庭生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="EVT?[10279]",first_branch="",branch=""};
get(10274) ->
	#cfg_relife_event{id=10274,evts="你感觉生活越来越无趣，你很怀念小时候。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="",first_branch="",branch=""};
get(10275) ->
	#cfg_relife_event{id=10275,evts="家庭琐事很多，你们经常吵架。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="EVT?[10279,11295,10281,20076,10270,10282,10271,11294,20076]",first_branch="(TLT![1123])&(SPR<3):20076",branch=""};
get(10276) ->
	#cfg_relife_event{id=10276,evts="结婚周年纪念日，你们分床而睡。",attrs_change=[],is_rand_evt=,prev_conds="(SPR<4)&(EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236])",out_conds="EVT?[10276,11295,10281,10282,10279,20076,10270,10271,11294,20076]",first_branch="(TLT![1123])&(SPR<3):20076",branch=""};
get(20076) ->
	#cfg_relife_event{id=20076,evts="你们离婚了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10277) ->
	#cfg_relife_event{id=10277,evts="小时候一件小事你都能记很久。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="(INT<7)&(EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236])",out_conds="EVT?[10277]",first_branch="",branch=""};
get(10278) ->
	#cfg_relife_event{id=10278,evts="你感觉自己老得越来越快，颜值不再。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>4)&(EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236])",out_conds="",first_branch="",branch=""};
get(10279) ->
	#cfg_relife_event{id=10279,evts="你的爱人病重。",attrs_change=[[3,-1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="(EVT?[10279,20076])|(TLT?[1047])",first_branch="",branch=""};
get(10280) ->
	#cfg_relife_event{id=10280,evts="你的爱人病重。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="TLT?[1047]",out_conds="EVT?[10280,20076]",first_branch="",branch=""};
get(10281) ->
	#cfg_relife_event{id=10281,evts="你的爱人去世了。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10279,10280]",out_conds="EVT?[10281,20076]",first_branch="",branch=""};
get(10282) ->
	#cfg_relife_event{id=10282,evts="你的爱人发生车祸去世。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="(EVT?[10282,10279,20076])|(TLT?[1043,1047])",first_branch="",branch=""};
get(10283) ->
	#cfg_relife_event{id=10283,evts="孩子经常和你吵架。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10268,10269,10272]",out_conds="",first_branch="",branch=""};
get(10284) ->
	#cfg_relife_event{id=10284,evts="孩子长得越来越可爱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(CHR>5)&(EVT?[10268,10269,10272])",out_conds="",first_branch="",branch=""};
get(10285) ->
	#cfg_relife_event{id=10285,evts="孩子很聪明。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>6)&(EVT?[10268,10269,10272])",out_conds="EVT?[10285]",first_branch="",branch=""};
get(10286) ->
	#cfg_relife_event{id=10286,evts="你有孙子了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10268,10269,10272]",out_conds="EVT?[10286,20076]",first_branch="",branch=""};
get(10287) ->
	#cfg_relife_event{id=10287,evts="你有孙女了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10268,10269,10272]",out_conds="EVT?[10287,20076]",first_branch="",branch=""};
get(10288) ->
	#cfg_relife_event{id=10288,evts="你为自己而活，过得很快乐。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="",first_branch="",branch=""};
get(10289) ->
	#cfg_relife_event{id=10289,evts="你遭遇了严重的车祸。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="TLT?[1043]",first_branch="EVT?[10009]:10000",branch=""};
get(10290) ->
	#cfg_relife_event{id=10290,evts="你查出了晚期癌症。",attrs_change=[],is_rand_evt=,prev_conds="(STR<6)&(EVT?[10009])",out_conds="EVT?[10290]",first_branch="EVT?[10009]:10000",branch=""};
get(10291) ->
	#cfg_relife_event{id=10291,evts="你突发心血管疾病去世。",attrs_change=[],is_rand_evt=,prev_conds="(STR<6)&(EVT?[10009])",out_conds="TLT?[1044]",first_branch="EVT?[10009]:10000",branch=""};
get(10292) ->
	#cfg_relife_event{id=10292,evts="你的身体越来越差了。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="(STR<6)&(EVT?[10009])",out_conds="EVT?[10292]",first_branch="",branch=""};
get(10293) ->
	#cfg_relife_event{id=10293,evts="你经常锻炼，身体还不错。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(STR>5)&(EVT?[10009])",out_conds="EVT?[10293]",first_branch="",branch=""};
get(10294) ->
	#cfg_relife_event{id=10294,evts="你在睡梦中安然离世。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(STR>5)&(EVT?[10009])",out_conds="(TLT?[1048])|(EVT?[10294])",first_branch="EVT?[10009]:10000",branch=""};
get(10295) ->
	#cfg_relife_event{id=10295,evts="你后悔年轻时没有做更多的事。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="EVT?[10295]",first_branch="(STR<5)&(MNY>5):20296",branch=""};
get(20296) ->
	#cfg_relife_event{id=20296,evts="你花钱在周边转了转，但没余力走更远了。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="",out_conds="",first_branch="",branch=""};
get(10296) ->
	#cfg_relife_event{id=10296,evts="你攒了不少钱。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10296]",first_branch="",branch=""};
get(10297) ->
	#cfg_relife_event{id=10297,evts="你去南方旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10297]",first_branch="",branch=""};
get(10298) ->
	#cfg_relife_event{id=10298,evts="你去北方旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10298]",first_branch="",branch=""};
get(10299) ->
	#cfg_relife_event{id=10299,evts="你去西藏旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10299]",first_branch="",branch=""};
get(10300) ->
	#cfg_relife_event{id=10300,evts="你去新疆旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10300]",first_branch="",branch=""};
get(10301) ->
	#cfg_relife_event{id=10301,evts="你去爬黄山。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10301]",first_branch="",branch=""};
get(10302) ->
	#cfg_relife_event{id=10302,evts="你去爬泰山。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10302]",first_branch="",branch=""};
get(10303) ->
	#cfg_relife_event{id=10303,evts="你去杭州看西湖。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10303]",first_branch="",branch=""};
get(10304) ->
	#cfg_relife_event{id=10304,evts="你去蒙古看草原。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10304]",first_branch="",branch=""};
get(10305) ->
	#cfg_relife_event{id=10305,evts="你去北京旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10305]",first_branch="",branch=""};
get(10306) ->
	#cfg_relife_event{id=10306,evts="你去上海旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(TLT?[1041,1027])&(EVT?[10009])",out_conds="EVT?[10306]",first_branch="",branch=""};
get(10307) ->
	#cfg_relife_event{id=10307,evts="你突然发现，从你结婚那天起，你的人生就结束了。",attrs_change=[],is_rand_evt=,prev_conds="(SPR<4)&(EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236])",out_conds="EVT?[10307]",first_branch="",branch=""};
get(10308) ->
	#cfg_relife_event{id=10308,evts="你小病不断。",attrs_change=[],is_rand_evt=,prev_conds="(STR<5)&(EVT?[10009])",out_conds="EVT?[10308]",first_branch="",branch=""};
get(10309) ->
	#cfg_relife_event{id=10309,evts="你近视了。",attrs_change=[],is_rand_evt=,prev_conds="(STR<9)&(EVT?[10009])",out_conds="EVT?[10309]",first_branch="",branch=""};
get(10310) ->
	#cfg_relife_event{id=10310,evts="你老花眼了。",attrs_change=[],is_rand_evt=,prev_conds="(STR<5)&(EVT?[10009])",out_conds="EVT?[10310]",first_branch="",branch=""};
get(10311) ->
	#cfg_relife_event{id=10311,evts="你换了好几颗牙。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10311]",first_branch="",branch=""};
get(10312) ->
	#cfg_relife_event{id=10312,evts="你掉了好几颗牙。",attrs_change=[],is_rand_evt=,prev_conds="(STR<9)&(EVT?[10009,10010])",out_conds="EVT?[10312]",first_branch="",branch=""};
get(10313) ->
	#cfg_relife_event{id=10313,evts="你耳朵听不清了。",attrs_change=[],is_rand_evt=,prev_conds="(STR<9)&(EVT?[10009,10010])",out_conds="EVT?[10313]",first_branch="",branch=""};
get(10314) ->
	#cfg_relife_event{id=10314,evts="你有点失忆，忘掉了不少东西。",attrs_change=[[1,-3],[4,1]],is_rand_evt=,prev_conds="(INT>2)&(EVT?[10009,10010])",out_conds="(INT>7)|(EVT?[10314])",first_branch="",branch=""};
get(10315) ->
	#cfg_relife_event{id=10315,evts="你瘫痪了。",attrs_change=[],is_rand_evt=,prev_conds="(STR<3)&(EVT?[10009])",out_conds="EVT?[10315]",first_branch="",branch=""};
get(10316) ->
	#cfg_relife_event{id=10316,evts="和你同一代的熟人开始纷纷离世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10316]",first_branch="",branch=""};
get(10317) ->
	#cfg_relife_event{id=10317,evts="你发现自己成了一个无趣的中年人。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10235,10236,10234,10233,10231,10230,10229,10088,10236]",out_conds="EVT?[10317]",first_branch="INT>5:20317",branch=""};
get(20317) ->
	#cfg_relife_event{id=20317,evts="为了能和年轻人有共同语言，你开始了解潮流。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10318) ->
	#cfg_relife_event{id=10318,evts="时代在进步，你完全搞不懂新的电子产品。",attrs_change=[],is_rand_evt=,prev_conds="(INT<7)&(EVT?[10009])",out_conds="EVT?[10318]",first_branch="",branch=""};
get(10319) ->
	#cfg_relife_event{id=10319,evts="你听不懂年轻人在说什么。",attrs_change=[],is_rand_evt=,prev_conds="(INT<9)&(EVT?[10009])",out_conds="EVT?[10319]",first_branch="",branch=""};
get(10320) ->
	#cfg_relife_event{id=10320,evts="你的颜值仍然过人。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>6)&(EVT?[10009,10010])",out_conds="EVT?[10320]",first_branch="",branch=""};
get(10321) ->
	#cfg_relife_event{id=10321,evts="时代在进步,新一代VR设备你仍然了如指掌。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>4)&(INT>7)&(EVT?[10009])",out_conds="EVT?[10321]",first_branch="",branch=""};
get(10322) ->
	#cfg_relife_event{id=10322,evts="你发现孩子不是亲生的。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="EVT?[10268,10269]",out_conds="EVT?[10322,10002]",first_branch="SPR<2:10062",branch=""};
get(10323) ->
	#cfg_relife_event{id=10323,evts="你从盒子中获得了练气法门，突破到凝气一层。",attrs_change=[[1,3],[2,3],[4,2]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10323]",first_branch="",branch=""};
get(10324) ->
	#cfg_relife_event{id=10324,evts="练气。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10333]",first_branch="",branch=""};
get(10325) ->
	#cfg_relife_event{id=10325,evts="你突破到凝气二层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10323])&(STR>10)&(TLT?[1048])",out_conds="EVT?[10325]",first_branch="",branch=""};
get(10326) ->
	#cfg_relife_event{id=10326,evts="你突破到凝气三层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10325])&(STR>12)&(TLT?[1048])",out_conds="EVT?[10326]",first_branch="",branch=""};
get(10327) ->
	#cfg_relife_event{id=10327,evts="你突破到凝气四层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10326])&(STR>15)&(TLT?[1048])",out_conds="EVT?[10327]",first_branch="",branch=""};
get(10328) ->
	#cfg_relife_event{id=10328,evts="你突破到凝气五层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10327])&(STR>20)&(TLT?[1048])",out_conds="EVT?[10328]",first_branch="",branch=""};
get(10329) ->
	#cfg_relife_event{id=10329,evts="你突破到凝气六层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10328])&(STR>25)&(TLT?[1048])",out_conds="EVT?[10329]",first_branch="",branch=""};
get(10330) ->
	#cfg_relife_event{id=10330,evts="你突破到凝气七层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10329])&(STR>30)&(TLT?[1048])",out_conds="EVT?[10330]",first_branch="",branch=""};
get(10331) ->
	#cfg_relife_event{id=10331,evts="你突破到凝气八层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10330])&(STR>38)&(TLT?[1048])",out_conds="EVT?[10331]",first_branch="",branch=""};
get(10332) ->
	#cfg_relife_event{id=10332,evts="你突破到凝气九层。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(EVT?[10331])&(STR>50)&(TLT?[1048])",out_conds="EVT?[10332]",first_branch="",branch=""};
get(10333) ->
	#cfg_relife_event{id=10333,evts="你突破到筑基一层。",attrs_change=[[1,1],[2,10]],is_rand_evt=,prev_conds="(EVT?[10332])&(STR>100)&(TLT?[1048])",out_conds="EVT?[10333]",first_branch="",branch=""};
get(10334) ->
	#cfg_relife_event{id=10334,evts="你捡到异果，体质大幅提升。",attrs_change=[[2,10]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="",first_branch="",branch=""};
get(10335) ->
	#cfg_relife_event{id=10335,evts="你发现灵气浓郁之处，体质大幅提升。",attrs_change=[[2,20]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="",first_branch="",branch=""};
get(10336) ->
	#cfg_relife_event{id=10336,evts="锻体。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10333])&(STR>100)&(TLT?[1048])",out_conds="EVT?[10345,10361]",first_branch="",branch=""};
get(10337) ->
	#cfg_relife_event{id=10337,evts="你突破到筑基二层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10333])&(STR>120)&(TLT?[1048])",out_conds="EVT?[10337]",first_branch="",branch=""};
get(10338) ->
	#cfg_relife_event{id=10338,evts="你突破到筑基三层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10337])&(STR>140)&(TLT?[1048])",out_conds="EVT?[10338]",first_branch="",branch=""};
get(10339) ->
	#cfg_relife_event{id=10339,evts="你突破到筑基四层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10338])&(STR>160)&(TLT?[1048])",out_conds="EVT?[10339]",first_branch="",branch=""};
get(10340) ->
	#cfg_relife_event{id=10340,evts="你突破到筑基五层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10339])&(STR>190)&(TLT?[1048])",out_conds="EVT?[10340]",first_branch="",branch=""};
get(10341) ->
	#cfg_relife_event{id=10341,evts="你突破到筑基六层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10340])&(STR>220)&(TLT?[1048])",out_conds="EVT?[10341]",first_branch="",branch=""};
get(10342) ->
	#cfg_relife_event{id=10342,evts="你突破到筑基七层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10341])&(STR>250)&(TLT?[1048])",out_conds="EVT?[10342]",first_branch="",branch=""};
get(10343) ->
	#cfg_relife_event{id=10343,evts="你突破到筑基八层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10342])&(STR>280)&(TLT?[1048])",out_conds="EVT?[10343]",first_branch="",branch=""};
get(10344) ->
	#cfg_relife_event{id=10344,evts="你突破到筑基九层。",attrs_change=[[2,2]],is_rand_evt=,prev_conds="(EVT?[10343])&(STR>320)&(TLT?[1048])",out_conds="EVT?[10344]",first_branch="",branch=""};
get(10345) ->
	#cfg_relife_event{id=10345,evts="你突破到金丹一层。",attrs_change=[[1,2],[2,20]],is_rand_evt=,prev_conds="(EVT?[10344])&(STR>400)&(TLT?[1048])",out_conds="EVT?[10345,10361]",first_branch="",branch=""};
get(10346) ->
	#cfg_relife_event{id=10346,evts="寿元终。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10333]",first_branch="TLT?[1048]:10000",branch=""};
get(10347) ->
	#cfg_relife_event{id=10347,evts="寿元终。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10345,10361]",first_branch="TLT?[1048]:10000",branch=""};
get(10348) ->
	#cfg_relife_event{id=10348,evts="你突破到金丹二层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10345,10361])&(STR>450)&(INT>10)&(TLT?[1048])",out_conds="EVT?[10348]",first_branch="",branch=""};
get(10349) ->
	#cfg_relife_event{id=10349,evts="图你美色，一个境界极高的人强行和你双修。",attrs_change=[[2,100]],is_rand_evt=,prev_conds="(EVT?[10333])&(CHR>10)&(TLT?[1048])",out_conds="EVT?[10349]",first_branch="",branch=""};
get(10350) ->
	#cfg_relife_event{id=10350,evts="你发现一种加快修行速度的方法。",attrs_change=[[2,50]],is_rand_evt=,prev_conds="(EVT?[10333])&(INT>10)&(TLT?[1048])",out_conds="",first_branch="",branch=""};
get(10351) ->
	#cfg_relife_event{id=10351,evts="周天经脉通畅，体质再次提升。",attrs_change=[[2,5]],is_rand_evt=,prev_conds="(EVT?[10333])&(STR>100)&(TLT?[1048])",out_conds="",first_branch="",branch=""};
get(10352) ->
	#cfg_relife_event{id=10352,evts="你突破到金丹三层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10348])&(STR>500)&(INT>15)&(TLT?[1048])",out_conds="EVT?[10352]",first_branch="",branch=""};
get(10353) ->
	#cfg_relife_event{id=10353,evts="你突破到金丹四层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10352])&(STR>550)&(INT>20)&(TLT?[1048])",out_conds="EVT?[10353]",first_branch="",branch=""};
get(10354) ->
	#cfg_relife_event{id=10354,evts="你突破到金丹五层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10353])&(STR>600)&(INT>30)&(TLT?[1048])",out_conds="EVT?[10354]",first_branch="",branch=""};
get(10355) ->
	#cfg_relife_event{id=10355,evts="你突破到金丹六层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10354])&(STR>650)&(INT>40)&(TLT?[1048])",out_conds="EVT?[10355]",first_branch="",branch=""};
get(10356) ->
	#cfg_relife_event{id=10356,evts="你突破到金丹七层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10355])&(STR>700)&(INT>50)&(TLT?[1048])",out_conds="EVT?[10356]",first_branch="",branch=""};
get(10357) ->
	#cfg_relife_event{id=10357,evts="你突破到金丹八层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10356])&(STR>750)&(INT>65)&(TLT?[1048])",out_conds="EVT?[10357]",first_branch="",branch=""};
get(10358) ->
	#cfg_relife_event{id=10358,evts="你突破到金丹九层。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10357])&(STR>850)&(INT>80)&(TLT?[1048])",out_conds="EVT?[10358]",first_branch="",branch=""};
get(10359) ->
	#cfg_relife_event{id=10359,evts="你遭到元婴大能截杀。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10359,10365]",first_branch="STR>1000:10360",branch="STR<1000:10000"};
get(10360) ->
	#cfg_relife_event{id=10360,evts="你将其越级反杀。",attrs_change=[[1,50],[2,500],[4,2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10361) ->
	#cfg_relife_event{id=10361,evts="你服用了祖传药丸，突破到了金丹一层。",attrs_change=[[1,50],[2,500],[4,1]],is_rand_evt=,prev_conds="(EVT?[10344])&(TLT?[1048])&(TLT?[1065])",out_conds="EVT?[10361,10345]",first_branch="",branch=""};
get(10362) ->
	#cfg_relife_event{id=10362,evts="蕴丹。",attrs_change=[[1,1],[2,3]],is_rand_evt=,prev_conds="(EVT?[10345,10361])&(STR>400)&(TLT?[1048])",out_conds="EVT?[10365]",first_branch="",branch=""};
get(10363) ->
	#cfg_relife_event{id=10363,evts="你加入了一个隐世宗派成为长老。",attrs_change=[[1,10],[2,100]],is_rand_evt=,prev_conds="(EVT?[10345,10361])&(STR>450)&(INT>10)&(TLT?[1048])",out_conds="EVT?[10363]",first_branch="",branch=""};
get(10364) ->
	#cfg_relife_event{id=10364,evts="你斩杀了一个筑基修士，获得少量资源。",attrs_change=[[2,10]],is_rand_evt=,prev_conds="(EVT?[10345,10361])&(STR>450)&(INT>10)&(TLT?[1048])",out_conds="",first_branch="",branch=""};
get(10365) ->
	#cfg_relife_event{id=10365,evts="你突破到元婴一层。",attrs_change=[[1,30]],is_rand_evt=,prev_conds="(EVT?[10358])&(STR>1000)&(INT>100)&(TLT?[1048])",out_conds="EVT?[10365]",first_branch="",branch=""};
get(10366) ->
	#cfg_relife_event{id=10366,evts="你斩杀了大量筑基修士，获得不少资源。",attrs_change=[[1,10],[2,100]],is_rand_evt=,prev_conds="(EVT?[10345,10361])&(STR>450)&(INT>10)&(TLT?[1048])",out_conds="",first_branch="",branch=""};
get(10367) ->
	#cfg_relife_event{id=10367,evts="悟道。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>100)&(TLT?[1048])",out_conds="",first_branch="",branch=""};
get(10368) ->
	#cfg_relife_event{id=10368,evts="寿元终。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10365,10361]",first_branch="TLT?[1048]:10000",branch=""};
get(10369) ->
	#cfg_relife_event{id=10369,evts="你突破到元婴二层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>150)&(TLT?[1048])",out_conds="EVT?[10369]",first_branch="",branch=""};
get(10370) ->
	#cfg_relife_event{id=10370,evts="你突破到元婴三层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10369])&(INT>180)&(TLT?[1048])",out_conds="EVT?[10370]",first_branch="",branch=""};
get(10371) ->
	#cfg_relife_event{id=10371,evts="你突破到元婴四层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10370])&(INT>210)&(TLT?[1048])",out_conds="EVT?[10371]",first_branch="",branch=""};
get(10372) ->
	#cfg_relife_event{id=10372,evts="你突破到元婴五层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10371])&(INT>240)&(TLT?[1048])",out_conds="EVT?[10372]",first_branch="",branch=""};
get(10373) ->
	#cfg_relife_event{id=10373,evts="你突破到元婴六层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10372])&(INT>280)&(TLT?[1048])",out_conds="EVT?[10373]",first_branch="",branch=""};
get(10374) ->
	#cfg_relife_event{id=10374,evts="你突破到元婴七层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10373])&(INT>320)&(TLT?[1048])",out_conds="EVT?[10374]",first_branch="",branch=""};
get(10375) ->
	#cfg_relife_event{id=10375,evts="你突破到元婴八层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10374])&(INT>360)&(TLT?[1048])",out_conds="EVT?[10375]",first_branch="",branch=""};
get(10376) ->
	#cfg_relife_event{id=10376,evts="你突破到元婴九层。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[10375])&(INT>400)&(TLT?[1048])",out_conds="EVT?[10376]",first_branch="",branch=""};
get(10377) ->
	#cfg_relife_event{id=10377,evts="你突破到渡劫期。",attrs_change=[[1,10],[2,10]],is_rand_evt=,prev_conds="(EVT?[10375])&(INT>500)&(TLT?[1048])",out_conds="EVT?[10377]",first_branch="",branch=""};
get(10378) ->
	#cfg_relife_event{id=10378,evts="准备渡劫。",attrs_change=[[1,1],[2,10]],is_rand_evt=,prev_conds="(EVT?[10377])&(INT>500)&(TLT?[1048])",out_conds="EVT?[10378]",first_branch="",branch=""};
get(10379) ->
	#cfg_relife_event{id=10379,evts="寿元终。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10377]",first_branch="TLT?[1048]:10000",branch=""};
get(10380) ->
	#cfg_relife_event{id=10380,evts="你悟出水之大道。",attrs_change=[[1,20],[2,20]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>100)&(TLT?[1048])",out_conds="EVT?[10380]",first_branch="",branch=""};
get(10381) ->
	#cfg_relife_event{id=10381,evts="你悟出火之大道。",attrs_change=[[1,20],[2,20]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>100)&(TLT?[1048])",out_conds="EVT?[10381]",first_branch="",branch=""};
get(10382) ->
	#cfg_relife_event{id=10382,evts="你悟出金之大道。",attrs_change=[[1,20],[2,20]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>100)&(TLT?[1048])",out_conds="EVT?[10382]",first_branch="",branch=""};
get(10383) ->
	#cfg_relife_event{id=10383,evts="你悟出木之大道。",attrs_change=[[1,20],[2,20]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>100)&(TLT?[1048])",out_conds="EVT?[10383]",first_branch="",branch=""};
get(10384) ->
	#cfg_relife_event{id=10384,evts="你悟出土之大道。",attrs_change=[[1,20],[2,20]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>100)&(TLT?[1048])",out_conds="EVT?[10384]",first_branch="",branch=""};
get(10385) ->
	#cfg_relife_event{id=10385,evts="你进入顿悟状态。",attrs_change=[[1,20]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>100)&(TLT?[1048])",out_conds="",first_branch="",branch=""};
get(10386) ->
	#cfg_relife_event{id=10386,evts="你悟出了空间大道。",attrs_change=[[1,50],[2,50]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>300)&(TLT?[1048])",out_conds="EVT?[10386]",first_branch="",branch=""};
get(10387) ->
	#cfg_relife_event{id=10387,evts="你悟出了时间大道。",attrs_change=[[1,50],[2,50]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>300)&(TLT?[1048])",out_conds="EVT?[10387]",first_branch="",branch=""};
get(10388) ->
	#cfg_relife_event{id=10388,evts="你悟出了混沌大道。",attrs_change=[[1,50],[2,50]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>300)&(TLT?[1048])",out_conds="EVT?[10388]",first_branch="",branch=""};
get(10389) ->
	#cfg_relife_event{id=10389,evts="你悟出了生命大道。",attrs_change=[[1,50],[2,50]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>300)&(TLT?[1048])",out_conds="EVT?[10389]",first_branch="",branch=""};
get(10390) ->
	#cfg_relife_event{id=10390,evts="你悟出了毁灭大道。",attrs_change=[[1,50],[2,50]],is_rand_evt=,prev_conds="(EVT?[10365])&(INT>300)&(TLT?[1048])",out_conds="EVT?[10390]",first_branch="",branch=""};
get(10391) ->
	#cfg_relife_event{id=10391,evts="开始渡劫。九重雷劫开始。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10377]",out_conds="EVT?[10391]",first_branch="EVT?[10377]:10392",branch=""};
get(10392) ->
	#cfg_relife_event{id=10392,evts="第一重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10392]",first_branch="STR>1100:10393",branch="STR<1101:10000"};
get(10393) ->
	#cfg_relife_event{id=10393,evts="第二重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10393]",first_branch="STR>1200:10394",branch="STR<1201:10000"};
get(10394) ->
	#cfg_relife_event{id=10394,evts="第三重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10394]",first_branch="STR>1300:10395",branch="STR<1301:10000"};
get(10395) ->
	#cfg_relife_event{id=10395,evts="第四重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10395]",first_branch="STR>1400:10396",branch="STR<1401:10000"};
get(10396) ->
	#cfg_relife_event{id=10396,evts="第五重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10396]",first_branch="STR>1500:10397",branch="STR<1501:10000"};
get(10397) ->
	#cfg_relife_event{id=10397,evts="第六重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10397]",first_branch="STR>1600:10398",branch="STR<1601:10000"};
get(10398) ->
	#cfg_relife_event{id=10398,evts="第七重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10398]",first_branch="STR>1700:10399",branch="STR<1701:10000"};
get(10399) ->
	#cfg_relife_event{id=10399,evts="第八重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10399]",first_branch="STR>1800:10400",branch="STR<1801:10000"};
get(10400) ->
	#cfg_relife_event{id=10400,evts="第九重雷劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10400]",first_branch="STR>2000:10401",branch="STR<2001:10000"};
get(10401) ->
	#cfg_relife_event{id=10401,evts="雷劫度过，元神劫开始。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10401]",first_branch="EVT?[10377]:10402",branch=""};
get(10402) ->
	#cfg_relife_event{id=10402,evts="金之元神劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10402]",first_branch="EVT?[10382]:10403",branch="EVT?[10377]:10000"};
get(10403) ->
	#cfg_relife_event{id=10403,evts="木之元神劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10403]",first_branch="EVT?[10383]:10404",branch="EVT?[10377]:10000"};
get(10404) ->
	#cfg_relife_event{id=10404,evts="水之元神劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10404]",first_branch="EVT?[10380]:10405",branch="EVT?[10377]:10000"};
get(10405) ->
	#cfg_relife_event{id=10405,evts="火之元神劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10405]",first_branch="EVT?[10381]:10406",branch="EVT?[10377]:10000"};
get(10406) ->
	#cfg_relife_event{id=10406,evts="土之元神劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10406]",first_branch="EVT?[10384]:10407",branch="EVT?[10377]:10000"};
get(10407) ->
	#cfg_relife_event{id=10407,evts="本源元神劫落下。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10407]",first_branch="EVT?[10386,10387,10388,10389,10390]:10408",branch="EVT?[10377]:10000"};
get(10408) ->
	#cfg_relife_event{id=10408,evts="心魔劫降临。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10408]",first_branch="SPR>10:10409",branch="EVT?[10377]:10000"};
get(10409) ->
	#cfg_relife_event{id=10409,evts="渡劫成功！你飞升到仙界了。",attrs_change=[[5,-1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10409]",first_branch="",branch=""};
get(10410) ->
	#cfg_relife_event{id=10410,evts="你成为了动漫高手，经常在网上骂战。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10189]",out_conds="(EVT?[10410,10002])|(TLT?[1014])",first_branch="STR>5:20410",branch="INT<6:20411"};
get(20410) ->
	#cfg_relife_event{id=20410,evts="你还喜欢在萌战吧、S1和bangumi茶话会发钓鱼帖。",attrs_change=[[4,2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20411) ->
	#cfg_relife_event{id=20411,evts="你还喜欢在B站评论区和人撕逼然后截图挂QQ群。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10411) ->
	#cfg_relife_event{id=10411,evts="你开始追星。",attrs_change=[],is_rand_evt=,prev_conds="MNY<8",out_conds="EVT?[10411,10413]",first_branch="STR>6:20412",branch="INT<4:20413"};
get(20412) ->
	#cfg_relife_event{id=20412,evts="你经常抽时间帮爱豆刷数据。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20413) ->
	#cfg_relife_event{id=20413,evts="你追的爱豆塌房了，被全网封禁。",attrs_change=[[4,-1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10412) ->
	#cfg_relife_event{id=10412,evts="你有了第一部自己的手机。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>3)&(EVT?[10009])",out_conds="(MNY>7)|(EVT?[10412])",first_branch="",branch=""};
get(10413) ->
	#cfg_relife_event{id=10413,evts="某外籍知名明星因强奸罪被抓。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10413,20413]",first_branch="INT<4:20414",branch=""};
get(20414) ->
	#cfg_relife_event{id=20414,evts="该明星恰好是你家爱豆。你崩溃了。",attrs_change=[[4,-1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10414) ->
	#cfg_relife_event{id=10414,evts="附近开始流行肺炎，你在家中不敢出门。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10414]",first_branch="",branch=""};
get(10415) ->
	#cfg_relife_event{id=10415,evts="高考改革，英语被取消了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10415]",first_branch="(EVT?[10237,10238,10239])&(INT<8):20415",branch=""};
get(20415) ->
	#cfg_relife_event{id=20415,evts="你无语，你当年怎么没这么好的事儿。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10416) ->
	#cfg_relife_event{id=10416,evts="高考改革，新增了中特社作为必考科目。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10416]",first_branch="",branch=""};
get(10417) ->
	#cfg_relife_event{id=10417,evts="体育总局新规定，体测成绩必须100米跑进10秒才及格。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10417]",first_branch="STR>9:20417",branch=""};
get(20417) ->
	#cfg_relife_event{id=20417,evts="你寻思这也不是很难啊。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10418) ->
	#cfg_relife_event{id=10418,evts="塔利班组织占领华盛顿。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10418]",first_branch="INT<2:20418",branch=""};
get(20418) ->
	#cfg_relife_event{id=20418,evts="你压根儿不知道塔利班和华盛顿是啥东西。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10419) ->
	#cfg_relife_event{id=10419,evts="本·拉登复出，发视频称当年是假死。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10419]",first_branch="INT<2:20419",branch=""};
get(20419) ->
	#cfg_relife_event{id=20419,evts="你压根儿不知道本·拉登是啥东西。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10420) ->
	#cfg_relife_event{id=10420,evts="希特勒的遗骨被发现。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10420]",first_branch="",branch=""};
get(10421) ->
	#cfg_relife_event{id=10421,evts="爱因斯坦失窃的部分大脑标本被追回。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10421]",first_branch="(INT<4)&(MNY>8):20421",branch=""};
get(20421) ->
	#cfg_relife_event{id=20421,evts="然后被你斥巨资购买了。",attrs_change=[[3,-2]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10422) ->
	#cfg_relife_event{id=10422,evts="据说有人在深山里发现了古装的居民。官方通报是在拍电视剧。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10422]",first_branch="INT>8:20422",branch=""};
get(20422) ->
	#cfg_relife_event{id=20422,evts="直觉告诉你事情没这么简单。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10423) ->
	#cfg_relife_event{id=10423,evts="隔壁城市发生特大交通事故，数十人伤亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10423]",first_branch="(CHR>8)|(MNY>8):20423",branch=""};
get(20423) ->
	#cfg_relife_event{id=20423,evts="有知情人告诉你不是交通事故，好像是一个在天上飞的人……",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10424) ->
	#cfg_relife_event{id=10424,evts="日本发生8.0级地震。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10424,10425]",first_branch="SPR>9:20425",branch=""};
get(10425) ->
	#cfg_relife_event{id=10425,evts="日本发生9.0级地震。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10425,10424]",first_branch="SPR>7:20425",branch=""};
get(20425) ->
	#cfg_relife_event{id=20425,evts="你意识到这场地震并不寻常……",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10426) ->
	#cfg_relife_event{id=10426,evts="中国大陆收复台湾。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10426]",first_branch="(CHR>8)&(MNY>8):20426",branch=""};
get(20426) ->
	#cfg_relife_event{id=20426,evts="但据你所知，并没有出动军队和武器，好像只派了少量的“人”？",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10427) ->
	#cfg_relife_event{id=10427,evts="清华北大合并为清北大学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10427]",first_branch="",branch=""};
get(10428) ->
	#cfg_relife_event{id=10428,evts="南京大学和同济大学合并为南同大学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10428,10429]",first_branch="",branch=""};
get(10429) ->
	#cfg_relife_event{id=10429,evts="南京大学和东南大学合并为京东大学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10429,10428]",first_branch="",branch=""};
get(10430) ->
	#cfg_relife_event{id=10430,evts="VR技术突破，用户可以意识进入虚拟空间。目前该技术还未进入民用。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10430]",first_branch="INT>9:20431",branch=""};
get(20431) ->
	#cfg_relife_event{id=20431,evts="你认为这是虚假消息。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10431) ->
	#cfg_relife_event{id=10431,evts="游哈米发布次时代手游大作《神原》。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10431]",first_branch="MNY>6:20432",branch=""};
get(20432) ->
	#cfg_relife_event{id=20432,evts="你试着玩了玩并且充了点钱，啥好角色都抽不到。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10432) ->
	#cfg_relife_event{id=10432,evts="腾讯收购网易。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10432]",first_branch="SPR>7:20433",branch=""};
get(20433) ->
	#cfg_relife_event{id=20433,evts="还好你不玩网易游戏。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10433) ->
	#cfg_relife_event{id=10433,evts="拼多多收购阿里巴巴。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10433]",first_branch="",branch=""};
get(10434) ->
	#cfg_relife_event{id=10434,evts="字节跳动市值超过微软。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10434]",first_branch="",branch=""};
get(10435) ->
	#cfg_relife_event{id=10435,evts="你和网民争论兰博基尼和法拉利哪个档次高。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10435,10002]",first_branch="",branch=""};
get(10436) ->
	#cfg_relife_event{id=10436,evts="中国开放十八胎生育。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10436]",first_branch="EVT![10268,10269,10272]:20436",branch=""};
get(20436) ->
	#cfg_relife_event{id=20436,evts="笑死，一个都不生。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10437) ->
	#cfg_relife_event{id=10437,evts="全球新冠确诊病例首次清零。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10437]",first_branch="STR>2:20437",branch=""};
get(20437) ->
	#cfg_relife_event{id=20437,evts="你终于可以呼吸到新鲜空气了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10438) ->
	#cfg_relife_event{id=10438,evts="曹县成功申办2066年奥运会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10438]",first_branch="",branch=""};
get(10439) ->
	#cfg_relife_event{id=10439,evts="日本武力攻占珍珠港。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10439]",first_branch="",branch=""};
get(20439) ->
	#cfg_relife_event{id=20439,evts="据说他们没有使用飞机、舰船和炮弹。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="(CHR>8)&(STR>8):20439",branch=""};
get(10440) ->
	#cfg_relife_event{id=10440,evts="朝鲜计划向美国和韩国投下两颗原子弹。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10440]",first_branch="",branch=""};
get(10441) ->
	#cfg_relife_event{id=10441,evts="芜湖机场世界排名升至第一。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10441]",first_branch="",branch=""};
get(10442) ->
	#cfg_relife_event{id=10442,evts="蚌埠房价一年内翻倍，国家出手调控。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10442]",first_branch="",branch=""};
get(10443) ->
	#cfg_relife_event{id=10443,evts="我国两极分化迅速减小，人民幸福指数进一步提高。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10443]",first_branch="(MNY<4)&(SPR<4):20443",branch=""};
get(20443) ->
	#cfg_relife_event{id=20443,evts="但你家还是很穷，而且也不算幸福。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(20444) ->
	#cfg_relife_event{id=20444,evts="但你家还是很穷。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10444) ->
	#cfg_relife_event{id=10444,evts="中国GDP超过美国。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10444]",first_branch="MNY<3:20444",branch=""};
get(10445) ->
	#cfg_relife_event{id=10445,evts="江苏省省会改为苏州。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10445]",first_branch="",branch=""};
get(10446) ->
	#cfg_relife_event{id=10446,evts="英国和法国断交。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10446]",first_branch="",branch=""};
get(10447) ->
	#cfg_relife_event{id=10447,evts="中国当前首富被爆是美国间谍，在机场被抓获。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10447]",first_branch="",branch=""};
get(10448) ->
	#cfg_relife_event{id=10448,evts="国家公布中产阶级标准：家庭年收入100万。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10448]",first_branch="MNY<4:20448",branch=""};
get(20448) ->
	#cfg_relife_event{id=20448,evts="你感觉太离谱了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10449) ->
	#cfg_relife_event{id=10449,evts="海底火山爆发，马里亚纳海沟被填平。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10449]",first_branch="",branch=""};
get(10450) ->
	#cfg_relife_event{id=10450,evts="上海数十名小学生春游，成功登顶珠穆朗玛峰。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10450]",first_branch="",branch=""};
get(10451) ->
	#cfg_relife_event{id=10451,evts="北京一本录取率首次超过99%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10451]",first_branch="(MNY<4)&(TLT![1010]):20452",branch=""};
get(20452) ->
	#cfg_relife_event{id=20452,evts="可恶的天龙人。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10452) ->
	#cfg_relife_event{id=10452,evts="特朗普再度当选美国总统。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10452]",first_branch="(SPR>6)&(INT>2):20453",branch=""};
get(20453) ->
	#cfg_relife_event{id=20453,evts="你感觉又有乐子了。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10453) ->
	#cfg_relife_event{id=10453,evts="拜登遭到暗杀。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10453]",first_branch="",branch=""};
get(10454) ->
	#cfg_relife_event{id=10454,evts="云南发现一种红白斑点蘑菇，吃了可以变大。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10454]",first_branch="EVT?[10188,10194]:20454",branch=""};
get(20454) ->
	#cfg_relife_event{id=20454,evts="你预测那里还存在一种花，吃了可以发射火球。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10455) ->
	#cfg_relife_event{id=10455,evts="医学奇迹，全球首例断头重生手术成功。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10455]",first_branch="",branch=""};
get(10456) ->
	#cfg_relife_event{id=10456,evts="女女生育技术取得重大突破。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10456]",first_branch="(EVT?[10007,10008])&(TLT![1026]):20456",branch=""};
get(20456) ->
	#cfg_relife_event{id=20456,evts="你感到很高兴。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10457) ->
	#cfg_relife_event{id=10457,evts="科学家宣布，人类Y染色体再过500年就会灭亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10457]",first_branch="",branch=""};
get(10458) ->
	#cfg_relife_event{id=10458,evts="有个乞丐向你推销“仙法”秘籍，你没有搭理他。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10458]",first_branch="",branch=""};
get(10459) ->
	#cfg_relife_event{id=10459,evts="最新研究显示，人类的寿命极限是500岁。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009,10010]",out_conds="EVT?[10459]",first_branch="INT<4:20459",branch=""};
get(20459) ->
	#cfg_relife_event{id=20459,evts="你觉得太荒谬了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10460) ->
	#cfg_relife_event{id=10460,evts="美国宣布进入社会主义社会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10460]",first_branch="SPR>6:20460",branch=""};
get(20460) ->
	#cfg_relife_event{id=20460,evts="你突然感觉人生无憾了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="",branch=""};
get(10461) ->
	#cfg_relife_event{id=10461,evts="奥运会在安徽省会南京成功举办。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10461]",first_branch="",branch=""};
get(10462) ->
	#cfg_relife_event{id=10462,evts="你被门夹伤了手。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10462]",first_branch="",branch=""};
get(10463) ->
	#cfg_relife_event{id=10463,evts="你不小心摔了一跤，磕掉了一颗牙。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="",first_branch="",branch=""};
get(10464) ->
	#cfg_relife_event{id=10464,evts="你在购物时中了个四等奖：一包纸巾。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10464,10465,10466,10467]",first_branch="",branch=""};
get(10465) ->
	#cfg_relife_event{id=10465,evts="你在购物时中了个三等奖：一个电饭锅。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10464,10465,10466,10467]",first_branch="",branch=""};
get(10466) ->
	#cfg_relife_event{id=10466,evts="你在购物时中了个二等奖：一个电冰箱。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10464,10465,10466,10467]",first_branch="",branch=""};
get(10467) ->
	#cfg_relife_event{id=10467,evts="你在购物时中了个一等奖：三亚七日游。",attrs_change=[[4,2]],is_rand_evt=,prev_conds="EVT?[10009]",out_conds="EVT?[10464,10465,10466,10467]",first_branch="",branch=""};
get(10468) ->
	#cfg_relife_event{id=10468,evts="你进入流水线工厂工作。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10025,10156,10155,10198]",out_conds="EVT?[10475,10476,10477,10226,10468]",first_branch="",branch=""};
get(10469) ->
	#cfg_relife_event{id=10469,evts="每天重复的加工十分无聊。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10468]",out_conds="EVT?[10469,10473,10226]",first_branch="",branch=""};
get(10470) ->
	#cfg_relife_event{id=10470,evts="员工宿舍十几个人挤在一间。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10468]",out_conds="EVT?[10470,10473,10226]",first_branch="",branch=""};
get(10471) ->
	#cfg_relife_event{id=10471,evts="你工作攒下了一点钱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10468]",out_conds="EVT?[10471,10473,10226]",first_branch="",branch=""};
get(10472) ->
	#cfg_relife_event{id=10472,evts="你加工零件非常熟练了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10468]",out_conds="EVT?[10472,10473,10226]",first_branch="",branch=""};
get(10473) ->
	#cfg_relife_event{id=10473,evts="工厂倒闭了，厂长带着小姨子跑了。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10468]",out_conds="EVT?[10473,10226]",first_branch="",branch=""};
get(10474) ->
	#cfg_relife_event{id=10474,evts="你四处求职，但因为太丑而找不到工作。",attrs_change=[],is_rand_evt=,prev_conds="(CHR<3)&(EVT?[10237,10238,10239,10198,10199,10200])",out_conds="EVT?[10226,10468,10202,10259,10191,10475,10476,10477]",first_branch="",branch=""};
get(10475) ->
	#cfg_relife_event{id=10475,evts="你大学毕业后回村当了老师。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10475,10476,10477,10468]",first_branch="",branch=""};
get(10476) ->
	#cfg_relife_event{id=10476,evts="你大学毕业后回村当了护士。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10476,10001,10475,10477,10468]",first_branch="",branch=""};
get(10477) ->
	#cfg_relife_event{id=10477,evts="你大学毕业后回村当了医生。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10237,10238,10239]",out_conds="EVT?[10477,10475,10476,10468]",first_branch="",branch=""};
get(10478) ->
	#cfg_relife_event{id=10478,evts="在乡下工作的一个好处是，没有城市里那么繁忙。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="EVT?[10478]",first_branch="",branch=""};
get(10479) ->
	#cfg_relife_event{id=10479,evts="你的工资虽然不高，但这份工作你挺喜欢的。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="EVT?[10479,10490]",first_branch="",branch=""};
get(10480) ->
	#cfg_relife_event{id=10480,evts="孩子们很难教，基础太差了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475]",out_conds="EVT?[10480]",first_branch="",branch=""};
get(10481) ->
	#cfg_relife_event{id=10481,evts="你现在很受村民们尊重。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>6)&(EVT?[10475,10477])",out_conds="EVT?[10481,10484]",first_branch="",branch=""};
get(10482) ->
	#cfg_relife_event{id=10482,evts="有的病人很迷信，不听你的话。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10476,10477]",out_conds="EVT?[10482]",first_branch="",branch=""};
get(10483) ->
	#cfg_relife_event{id=10483,evts="有个村民被车撞了，你连夜为他做手术。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10477]",out_conds="EVT?[10483]",first_branch="",branch=""};
get(10484) ->
	#cfg_relife_event{id=10484,evts="你遭到了村民的调戏。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10476]",out_conds="EVT?[10484,10481]",first_branch="",branch=""};
get(10485) ->
	#cfg_relife_event{id=10485,evts="开家长会，但来的基本都是学生的祖辈，很少有父母来。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475]",out_conds="EVT?[10485]",first_branch="",branch=""};
get(10486) ->
	#cfg_relife_event{id=10486,evts="你出了套试卷，全班学生没有一个及格。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475]",out_conds="EVT?[10486]",first_branch="",branch=""};
get(10487) ->
	#cfg_relife_event{id=10487,evts="工作顺利的一年，没发生什么大事。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="",first_branch="",branch=""};
get(10488) ->
	#cfg_relife_event{id=10488,evts="像你一样返乡工作的大学生越来越少了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="EVT?[10488]",first_branch="",branch=""};
get(10489) ->
	#cfg_relife_event{id=10489,evts="村里基本只有老人和孩子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="EVT?[10489]",first_branch="",branch=""};
get(10490) ->
	#cfg_relife_event{id=10490,evts="你对人生有些迷茫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="EVT?[10490]",first_branch="",branch=""};
get(10491) ->
	#cfg_relife_event{id=10491,evts="工作的闲暇时，你会看看动漫。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10475,10476,10477])&(EVT?[10007,10008])",out_conds="",first_branch="",branch=""};
get(10492) ->
	#cfg_relife_event{id=10492,evts="你退休了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="EVT?[10492,10001]",first_branch="",branch=""};
get(10493) ->
	#cfg_relife_event{id=10493,evts="你退休了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10475,10476,10477]",out_conds="EVT?[10492,10002]",first_branch="",branch=""};
get(10494) ->
	#cfg_relife_event{id=10494,evts="体质过低，胎死腹中。",attrs_change=[],is_rand_evt=,prev_conds="STR<0",out_conds="TLT?[1071]",first_branch="STR<0:10000",branch=""};
get(10495) ->
	#cfg_relife_event{id=10495,evts="意外发现古代宗派遗宝。",attrs_change=[[1,1],[2,10],[4,1]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10495]",first_branch="",branch=""};
get(10496) ->
	#cfg_relife_event{id=10496,evts="偶遇筑基期散修。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10496]",first_branch="CHR<5:10497",branch=""};
get(10497) ->
	#cfg_relife_event{id=10497,evts="他嫌你长得丑，把你杀了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="",first_branch="CHR<5:10000",branch=""};
get(10498) ->
	#cfg_relife_event{id=10498,evts="父母经常带你去附近的公园和大学校园玩。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>3)&(EVT?[10011])",out_conds="EVT?[10498]",first_branch="",branch=""};
get(10499) ->
	#cfg_relife_event{id=10499,evts="你喜欢在图书馆的儿童区和别的小朋友一起玩。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>3)&(EVT?[10011])",out_conds="EVT?[10499]",first_branch="",branch=""};
get(10500) ->
	#cfg_relife_event{id=10500,evts="父母同时教你英语和汉语。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10500]",first_branch="",branch=""};
get(10501) ->
	#cfg_relife_event{id=10501,evts="父母开始用照片和日记记录下你的点点滴滴。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10501]",first_branch="",branch=""};
get(10502) ->
	#cfg_relife_event{id=10502,evts="家里很有钱，父母所有东西都为你准备最好的。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10011])",out_conds="EVT?[10502]",first_branch="",branch=""};
get(10503) ->
	#cfg_relife_event{id=10503,evts="家里很穷，但父母尽力为你准备更好的生活。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<4)&(EVT?[10011])",out_conds="EVT?[10503]",first_branch="",branch=""};
get(10504) ->
	#cfg_relife_event{id=10504,evts="你开始上幼儿园。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>3)&(EVT?[10011])",out_conds="EVT?[10504]",first_branch="",branch=""};
get(10505) ->
	#cfg_relife_event{id=10505,evts="你上不起幼儿园，父母开始教你学习。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<4)&(EVT?[10011])",out_conds="EVT?[10505]",first_branch="",branch=""};
get(10506) ->
	#cfg_relife_event{id=10506,evts="你每天和小朋友、老师们玩游戏、做手工、唱歌跳舞。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10506]",first_branch="",branch=""};
get(10507) ->
	#cfg_relife_event{id=10507,evts="父母给你买了一书架的启蒙童书。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10508) ->
	#cfg_relife_event{id=10508,evts="每周一次的看动画片时间是你的最爱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10509) ->
	#cfg_relife_event{id=10509,evts="你的父母请了家教来教你游泳。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10510) ->
	#cfg_relife_event{id=10510,evts="你的父母请了家教来教你弹钢琴。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10511) ->
	#cfg_relife_event{id=10511,evts="你的父母请了家教来教你法语。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10512) ->
	#cfg_relife_event{id=10512,evts="你的父母请了家教来教你西班牙语。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10513) ->
	#cfg_relife_event{id=10513,evts="你平时很少出门，因为父母说外面很危险。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10514) ->
	#cfg_relife_event{id=10514,evts="附近发生了一起枪击案。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10515) ->
	#cfg_relife_event{id=10515,evts="父母说要好好学习，考上好大学离开这里。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10516) ->
	#cfg_relife_event{id=10516,evts="你比同龄人学了更多的知识。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10517) ->
	#cfg_relife_event{id=10517,evts="你的父亲在地铁上被暴徒攻击，受了伤。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10518) ->
	#cfg_relife_event{id=10518,evts="你开始上小学了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10519) ->
	#cfg_relife_event{id=10519,evts="你比其他同学更聪明，学得更快懂得更多。",attrs_change=[],is_rand_evt=,prev_conds="(INT>5)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10520) ->
	#cfg_relife_event{id=10520,evts="虽然你是亚裔，但你没有感觉有什么不同。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10521) ->
	#cfg_relife_event{id=10521,evts="有好几个小朋友向你表白。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(CHR>6)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10522) ->
	#cfg_relife_event{id=10522,evts="班上的几个非裔同学经常欺负你。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(STR<7)&(CHR<7)&(EVT?[10505])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10523) ->
	#cfg_relife_event{id=10523,evts="你在家中主要用中文交流，在学校都用英文。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10524) ->
	#cfg_relife_event{id=10524,evts="你的运动很棒，同学们都很崇拜你。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(STR>7)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10525) ->
	#cfg_relife_event{id=10525,evts="因为你的成绩最好，老师允许你躺在班上的秋千椅上听课。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>6)&(EVT?[10504])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10526) ->
	#cfg_relife_event{id=10526,evts="课堂上经常做小实验。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10527) ->
	#cfg_relife_event{id=10527,evts="有次整整一天，老师带你们出去观察昆虫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10528) ->
	#cfg_relife_event{id=10528,evts="老师夸你的数学和科学知识已经不比中学生差了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(INT>6)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10529) ->
	#cfg_relife_event{id=10529,evts="学校举办唱歌比赛。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20529) ->
	#cfg_relife_event{id=20529,evts="你拿了第一名。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10530) ->
	#cfg_relife_event{id=10530,evts="在学校经常运动，身体越来越棒。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10531) ->
	#cfg_relife_event{id=10531,evts="在学校经常运动，身体越来越棒。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10532) ->
	#cfg_relife_event{id=10532,evts="班上没有几个白人同学，而会说汉语的有好几个。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10533) ->
	#cfg_relife_event{id=10533,evts="班上有个男孩欺负一个女孩，你勇敢站出来制止了他。",attrs_change=[],is_rand_evt=,prev_conds="(STR>4)&(EVT?[10504])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10534) ->
	#cfg_relife_event{id=10534,evts="有两个学生在班上抽烟，但老师不敢管。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20534) ->
	#cfg_relife_event{id=20534,evts="你跳出来管他们，被其中一个学生掏枪打死了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10535) ->
	#cfg_relife_event{id=10535,evts="你们班里又转来一个中国学生。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10536) ->
	#cfg_relife_event{id=10536,evts="父母的事业非常成功，家境变得更好了。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10537) ->
	#cfg_relife_event{id=10537,evts="父母的事业取得了一定成功，家境有所好转。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10538) ->
	#cfg_relife_event{id=10538,evts="老师教你们操作电脑，但你早就会了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10504]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10539) ->
	#cfg_relife_event{id=10539,evts="老师有时会带来一大堆零食，分给所有同学。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10540) ->
	#cfg_relife_event{id=10540,evts="你们把座位布置成了法庭，举行了一场模拟辩论。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10541) ->
	#cfg_relife_event{id=10541,evts="你上了一个著名的贵族中学。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10542) ->
	#cfg_relife_event{id=10542,evts="你上了一个普通的中学。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<8)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10543) ->
	#cfg_relife_event{id=10543,evts="你的课业很重，学校里的活动也很多，生活非常充实。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10544) ->
	#cfg_relife_event{id=10544,evts="课业很轻松，几乎没有作业，每天下午放学就有各种活动。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10545) ->
	#cfg_relife_event{id=10545,evts="你很喜欢放学或周末在学校玩滑雪和曲棍球。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(STR>2)&(EVT?[10541])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10546) ->
	#cfg_relife_event{id=10546,evts="你在学校学会了骑马和高尔夫。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="(INT>2)&(STR>2)&(EVT?[10541])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10547) ->
	#cfg_relife_event{id=10547,evts="你中午经常在图书馆和另外两个华裔同学一起学习。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10548) ->
	#cfg_relife_event{id=10548,evts="你的同班同学中有著名明星的女儿、著名银行家的小儿子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10549) ->
	#cfg_relife_event{id=10549,evts="你的同班同学中有著名球星的儿子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10550) ->
	#cfg_relife_event{id=10550,evts="你的同班同学中有著名政客的女儿和某小国皇室的王子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10551) ->
	#cfg_relife_event{id=10551,evts="虽然课余活动很丰富，不过同学们学习都很认真。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10552) ->
	#cfg_relife_event{id=10552,evts="学校组织了一场去欧洲的旅行。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10553) ->
	#cfg_relife_event{id=10553,evts="你参演了一场戏剧演出。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10554) ->
	#cfg_relife_event{id=10554,evts="同学们大多自信幽默大方，平易近人。你和他们相处融洽。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10555) ->
	#cfg_relife_event{id=10555,evts="回到家父母会给你额外的学习任务。",attrs_change=[[1,1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10556) ->
	#cfg_relife_event{id=10556,evts="你家的扫地机器人坏了，你自己制作了一个。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>2)&(INT>7)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10557) ->
	#cfg_relife_event{id=10557,evts="你经常晚上去学校天文台用望远镜看星星。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20557) ->
	#cfg_relife_event{id=20557,evts="你父母在家给你买了一台天文望远镜。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10558) ->
	#cfg_relife_event{id=10558,evts="你参加了学校的舞会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20558) ->
	#cfg_relife_event{id=20558,evts="你过人的颜值和舞技让你成为万众瞩目。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10559) ->
	#cfg_relife_event{id=10559,evts="很多同学找你求交往。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[20558]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10560) ->
	#cfg_relife_event{id=10560,evts="不少同学找你求交往。",attrs_change=[],is_rand_evt=,prev_conds="(TLT?[1028])&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10561) ->
	#cfg_relife_event{id=10561,evts="你谈了一个女朋友。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10011])&((EVT?[10001,10110,10111])|(TLT?[1026]))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10562) ->
	#cfg_relife_event{id=10562,evts="你谈了一个男朋友。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10011])&((EVT?[10002,10110,10111])|(TLT?[1026]))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10563) ->
	#cfg_relife_event{id=10563,evts="学校生活很快乐，每天大多数时间都在玩。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10564) ->
	#cfg_relife_event{id=10564,evts="一个从中国转学来的同学说，这里的考试比中国简单多了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10565) ->
	#cfg_relife_event{id=10565,evts="学校举办为期一学期的模拟创业活动。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20565) ->
	#cfg_relife_event{id=20565,evts="你的创业最成功。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10566) ->
	#cfg_relife_event{id=10566,evts="美国总统来你们学校演讲。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10567) ->
	#cfg_relife_event{id=10567,evts="你们学校新开设了保龄球选修课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10568) ->
	#cfg_relife_event{id=10568,evts="这次期末考试很难。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10541]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20568) ->
	#cfg_relife_event{id=20568,evts="你考得很差。",attrs_change=[[4,-1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20569) ->
	#cfg_relife_event{id=20569,evts="但你还是考了第一。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10569) ->
	#cfg_relife_event{id=10569,evts="你在学校选修了日语。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10011])&(EVT?[10007,10008])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10570) ->
	#cfg_relife_event{id=10570,evts="教室里有个浴缸，经常有同学躺在浴缸里听课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10571) ->
	#cfg_relife_event{id=10571,evts="美术和音乐教室里的地毯非常好看。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10572) ->
	#cfg_relife_event{id=10572,evts="学校要求每个同学自带平板电脑。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20572) ->
	#cfg_relife_event{id=20572,evts="你父母忍痛给你买了一个。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10573) ->
	#cfg_relife_event{id=10573,evts="教室里有很多金鱼，每人都认养了一只。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10574) ->
	#cfg_relife_event{id=10574,evts="你父母拿了份中国中考数学卷给你做。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20574) ->
	#cfg_relife_event{id=20574,evts="你感觉非常难。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20575) ->
	#cfg_relife_event{id=20575,evts="虽然比平时做的难，但还是都做出来了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10575) ->
	#cfg_relife_event{id=10575,evts="据说附近发生了一起枪击案。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10542]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20575) ->
	#cfg_relife_event{id=20575,evts="好奇心使你试探着寻找凶手，但一无所获。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10576) ->
	#cfg_relife_event{id=10576,evts="你在上学路上遭遇了枪击。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20576) ->
	#cfg_relife_event{id=20576,evts="你身手敏捷，侥幸逃得一命。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10577) ->
	#cfg_relife_event{id=10577,evts="你在上学路上看到很多流浪汉和瘾君子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10505]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20577) ->
	#cfg_relife_event{id=20577,evts="你上去挑衅他们，被一群人持械围殴。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10578) ->
	#cfg_relife_event{id=10578,evts="你跟随父母回中国了。",attrs_change=[],is_rand_evt=,prev_conds="(INT<7)&(EVT?[10542])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10579) ->
	#cfg_relife_event{id=10579,evts="你考上了世界名校。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10580) ->
	#cfg_relife_event{id=10580,evts="你考上了哈佛大学。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20580) ->
	#cfg_relife_event{id=20580,evts="你考上了哈佛大学。",attrs_change=[],is_rand_evt=,prev_conds="(TLT?[1073])&(INT>5)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10581) ->
	#cfg_relife_event{id=10581,evts="你考上了耶鲁大学。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10582) ->
	#cfg_relife_event{id=10582,evts="你考上了麻省理工大学。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10583) ->
	#cfg_relife_event{id=10583,evts="你考上了加州伯克利。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10584) ->
	#cfg_relife_event{id=10584,evts="你考上了斯坦福大学。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10585) ->
	#cfg_relife_event{id=10585,evts="你的一个熟悉的同学因为压力太大退学了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10586) ->
	#cfg_relife_event{id=10586,evts="你以留学生身份被清华大学录取。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10578]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10587) ->
	#cfg_relife_event{id=10587,evts="你以留学生身份被北京大学录取。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10578]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10588) ->
	#cfg_relife_event{id=10588,evts="无事发生。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1103]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10589) ->
	#cfg_relife_event{id=10589,evts="无事发生。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1105]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10590) ->
	#cfg_relife_event{id=10590,evts="时间跳跃。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1104]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10591) ->
	#cfg_relife_event{id=10591,evts="你第一次吃肯德基。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<6)&(EVT?[10009])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10592) ->
	#cfg_relife_event{id=10592,evts="你家比较穷，经常只能吃麦当劳等垃圾食品。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="(MNY<6)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10593) ->
	#cfg_relife_event{id=10593,evts="你几乎每天都在图书馆学习到半夜。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10594) ->
	#cfg_relife_event{id=10594,evts="圣诞节，有学生制造出了无人机雪橇派送礼物。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10595) ->
	#cfg_relife_event{id=10595,evts="你在舞会上结识了一个漂亮的女生。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10579,10580,10581,10582,10583,10584,10586,10587])&((EVT?[10001,10110,10111])|(TLT?[1026]))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10596) ->
	#cfg_relife_event{id=10596,evts="你在舞会上结识了一个帅气的男生。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10579,10580,10581,10582,10583,10584,10586,10587])&((EVT?[10002,10110,10111])|(TLT?[1026]))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20596) ->
	#cfg_relife_event{id=20596,evts="很快你们便确定了关系。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10597) ->
	#cfg_relife_event{id=10597,evts="你去友校做了一年交换生。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10598) ->
	#cfg_relife_event{id=10598,evts="学习压力很大，你向学校心理咨询处咨询。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10599) ->
	#cfg_relife_event{id=10599,evts="实验项目繁多，论文你总是卡着时间才写完。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10600) ->
	#cfg_relife_event{id=10600,evts="你总会抽时间去健身房，保证身体健康。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10601) ->
	#cfg_relife_event{id=10601,evts="一个从中国来的同学比你还忙，因为他还要抽时间打工。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10602) ->
	#cfg_relife_event{id=10602,evts="你拿到了奖学金。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10603) ->
	#cfg_relife_event{id=10603,evts="你的生日派对有很多朋友来参加。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>3)&(EVT?[10579,10580,10581,10582,10583,10584])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10604) ->
	#cfg_relife_event{id=10604,evts="你在一个角落的墙上看到非常艺术感的涂鸦。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10605) ->
	#cfg_relife_event{id=10605,evts="你阅读了很多中外的文学作品。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10606) ->
	#cfg_relife_event{id=10606,evts="你对金融和计算机都十分擅长。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10607) ->
	#cfg_relife_event{id=10607,evts="你前往华尔街工作，年收入约几十万刀。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10606]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10608) ->
	#cfg_relife_event{id=10608,evts="你前往硅谷创业。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>8)&(EVT?[10606,10565])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10609) ->
	#cfg_relife_event{id=10609,evts="你在导师的实验室搞科研。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10610) ->
	#cfg_relife_event{id=10610,evts="你和大学对象步入了婚姻的殿堂。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[20596]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10611) ->
	#cfg_relife_event{id=10611,evts="你和一个同事结婚了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10606]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10612) ->
	#cfg_relife_event{id=10612,evts="你和一个你很满意的对象结婚了。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10579,10580,10581,10582,10583,10584]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10613) ->
	#cfg_relife_event{id=10613,evts="有家里的资金和人脉支持，你的创业非常成功。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10614) ->
	#cfg_relife_event{id=10614,evts="你结识了许多同学和父母介绍的商业伙伴。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608,10607]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10615) ->
	#cfg_relife_event{id=10615,evts="你非常努力，在社交之中成长很快。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608,10607]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10616) ->
	#cfg_relife_event{id=10616,evts="你的公司越做越大，完成了多轮融资，用户数也突破了千万。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10617) ->
	#cfg_relife_event{id=10617,evts="你的公司产品用户数破百万。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10618) ->
	#cfg_relife_event{id=10618,evts="你请了几位中学大学时的朋友加入你的公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10619) ->
	#cfg_relife_event{id=10619,evts="你的公司产品用户数破亿。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10620) ->
	#cfg_relife_event{id=10620,evts="你的公司上市了。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10621) ->
	#cfg_relife_event{id=10621,evts="你的孩子出生了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10610,10611,10612]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10622) ->
	#cfg_relife_event{id=10622,evts="你的爱人也来你的公司工作。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10623) ->
	#cfg_relife_event{id=10623,evts="你买了几辆数百万、上千万的豪车。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10624) ->
	#cfg_relife_event{id=10624,evts="你在几座大城市都购入了豪宅，还买了海边别墅。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20625) ->
	#cfg_relife_event{id=20625,evts="性格使然，你在网上秀优越，还发布一些挑衅言论。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10625) ->
	#cfg_relife_event{id=10625,evts="你被福布斯评为美国最年轻的百亿富豪排名第一。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10626) ->
	#cfg_relife_event{id=10626,evts="你创立了好几家公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10627) ->
	#cfg_relife_event{id=10627,evts="你不再直接参与公司决策，退居幕后。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10628) ->
	#cfg_relife_event{id=10628,evts="你收购了好几家创业公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10629) ->
	#cfg_relife_event{id=10629,evts="你开始投资房地产。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10630) ->
	#cfg_relife_event{id=10630,evts="你开始投资AI、VR和游戏。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10631) ->
	#cfg_relife_event{id=10631,evts="你开始投资动漫产业。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10608])&(EVT?[10007,10008])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10632) ->
	#cfg_relife_event{id=10632,evts="你开始投资体育、影视产业。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10633) ->
	#cfg_relife_event{id=10633,evts="你像你父母一样给了孩子最丰厚的条件。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10621]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10634) ->
	#cfg_relife_event{id=10634,evts="你希望孩子未来和你一样努力成为精英。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10621]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10635) ->
	#cfg_relife_event{id=10635,evts="你被评为本世代十大科技人物。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10636) ->
	#cfg_relife_event{id=10636,evts="你的工作现在很轻松，大多数时间都在家带娃。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10608])&(EVT?[10621])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10637) ->
	#cfg_relife_event{id=10637,evts="你们一家搬家到了瑞士。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10638) ->
	#cfg_relife_event{id=10638,evts="虚拟现实技术已经非常成熟，你玩的兴趣不大。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10639) ->
	#cfg_relife_event{id=10639,evts="你们家每年光保险开销就比普通美国人一辈子的收入还多。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10640) ->
	#cfg_relife_event{id=10640,evts="你们一家去了欧洲各国旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10641) ->
	#cfg_relife_event{id=10641,evts="你们一家去了澳大利亚和新西兰旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10642) ->
	#cfg_relife_event{id=10642,evts="你们一家去了东南亚旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10643) ->
	#cfg_relife_event{id=10643,evts="你们一家去了埃及和阿联酋旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10644) ->
	#cfg_relife_event{id=10644,evts="你们一家去了夏威夷旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10645) ->
	#cfg_relife_event{id=10645,evts="你们一家去了中国旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608,10607]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10646) ->
	#cfg_relife_event{id=10646,evts="你成为了世界首富。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10647) ->
	#cfg_relife_event{id=10647,evts="你的孩子也上了世界名校。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10621]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20647) ->
	#cfg_relife_event{id=20647,evts="你有次在网上骂战，不小心暴露孩子考上名校是通过你的关系。",attrs_change=[[4,-1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10648) ->
	#cfg_relife_event{id=10648,evts="你到东京大学、清华大学、香港大学等学府演讲《我的努力》。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10649) ->
	#cfg_relife_event{id=10649,evts="你的父亲去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10650) ->
	#cfg_relife_event{id=10650,evts="你的母亲去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10651) ->
	#cfg_relife_event{id=10651,evts="你的父亲因心脏病去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10652) ->
	#cfg_relife_event{id=10652,evts="你的母亲因心血管疾病去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10653) ->
	#cfg_relife_event{id=10653,evts="你的爱人因病去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10610,10611,10612]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10654) ->
	#cfg_relife_event{id=10654,evts="你的孙儿出生了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10621]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10655) ->
	#cfg_relife_event{id=10655,evts="你住在庄园里，围绕着最新科技，过着养老生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10656) ->
	#cfg_relife_event{id=10656,evts="你因病医治无效去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10657) ->
	#cfg_relife_event{id=10657,evts="你在睡梦中安然离世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10658) ->
	#cfg_relife_event{id=10658,evts="你财务自由，购买了名车和豪宅。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10607]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10659) ->
	#cfg_relife_event{id=10659,evts="你申请了死后冷冻尸体的服务，希望有朝一日能复活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608,10607]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20659) ->
	#cfg_relife_event{id=20659,evts="但你生前得罪了不少人，你的申请被一再延迟。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10660) ->
	#cfg_relife_event{id=10660,evts="你的实验不太顺利。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10661) ->
	#cfg_relife_event{id=10661,evts="老板对你很严格，但是也很关心你。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10662) ->
	#cfg_relife_event{id=10662,evts="你的学术和实验水平进一步提高。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10663) ->
	#cfg_relife_event{id=10663,evts="你废寝忘食，几乎住在实验室里。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10664) ->
	#cfg_relife_event{id=10664,evts="你的实验取得了突破。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10665) ->
	#cfg_relife_event{id=10665,evts="你一年内发表了多篇SCI。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10666) ->
	#cfg_relife_event{id=10666,evts="你和老板发表了一篇Nature。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10667) ->
	#cfg_relife_event{id=10667,evts="你留校担任助教。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10668) ->
	#cfg_relife_event{id=10668,evts="你处于做实验和发paper的无尽循环中。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10669) ->
	#cfg_relife_event{id=10669,evts="你担任副教授。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10670) ->
	#cfg_relife_event{id=10670,evts="你发表一篇一作Nature。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10671) ->
	#cfg_relife_event{id=10671,evts="你被母校聘为正教授。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10669]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10672) ->
	#cfg_relife_event{id=10672,evts="你被中国多所名校聘为客座教授。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10673) ->
	#cfg_relife_event{id=10673,evts="你获得多项大奖。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10674) ->
	#cfg_relife_event{id=10674,evts="你在微观粒子领域取得重要突破。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10675) ->
	#cfg_relife_event{id=10675,evts="你在遗传领域取得重要突破。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10676) ->
	#cfg_relife_event{id=10676,evts="你在材料领域取得重要突破。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10677) ->
	#cfg_relife_event{id=10677,evts="你成为美国科学院院士。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10678) ->
	#cfg_relife_event{id=10678,evts="你成为中国科学院外籍院士。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10679) ->
	#cfg_relife_event{id=10679,evts="你获得了诺贝尔物理学奖。",attrs_change=[[3,1],[4,2]],is_rand_evt=,prev_conds="EVT?[10674]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10680) ->
	#cfg_relife_event{id=10680,evts="你获得了诺贝尔生理学或医学奖。",attrs_change=[[3,1],[4,2]],is_rand_evt=,prev_conds="EVT?[10675]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10681) ->
	#cfg_relife_event{id=10681,evts="你获得了诺贝尔化学奖。",attrs_change=[[3,1],[4,2]],is_rand_evt=,prev_conds="EVT?[10676]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10682) ->
	#cfg_relife_event{id=10682,evts="你放弃美国国籍，毅然加入中国国籍前往中国的大学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10683) ->
	#cfg_relife_event{id=10683,evts="你创建了一个以你名字命名的慈善基金会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10684) ->
	#cfg_relife_event{id=10684,evts="你决定将你的遗产都捐赠给母校。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10685) ->
	#cfg_relife_event{id=10685,evts="你决定将你的遗产都捐赠给中国大学用于建设。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10682]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10686) ->
	#cfg_relife_event{id=10686,evts="你的论文他引超过十万。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10687) ->
	#cfg_relife_event{id=10687,evts="你在世界巡回讲座。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10688) ->
	#cfg_relife_event{id=10688,evts="你出版了一本教材。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10689) ->
	#cfg_relife_event{id=10689,evts="你出版了一本自传，介绍你的成功之路。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10690) ->
	#cfg_relife_event{id=10690,evts="你经常作为嘉宾出现在电视节目。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10607,10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10691) ->
	#cfg_relife_event{id=10691,evts="有人以你的人生为原本拍摄了电影。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10692) ->
	#cfg_relife_event{id=10692,evts="你的自传一直超级畅销。人们被你的努力和精神所打动。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10689]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10693) ->
	#cfg_relife_event{id=10693,evts="你不想死，坚持锻炼、经常体检试图延长寿命。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10607,10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10694) ->
	#cfg_relife_event{id=10694,evts="你的孙子被人绑架，好在成功被警察救出。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10654]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10695) ->
	#cfg_relife_event{id=10695,evts="英国剑桥大学吞并牛津大学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10696) ->
	#cfg_relife_event{id=10696,evts="塔利班组织闪击波兰。法国宣布投降。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10697) ->
	#cfg_relife_event{id=10697,evts="俄罗斯宣布进入社会主义社会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10698) ->
	#cfg_relife_event{id=10698,evts="日本动漫产业彻底灭亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10699) ->
	#cfg_relife_event{id=10699,evts="日本制造出最新作战兵器：高达。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10700) ->
	#cfg_relife_event{id=10700,evts="美国总统承认与外星人一直有联系。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10701) ->
	#cfg_relife_event{id=10701,evts="经济危机爆发。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10702) ->
	#cfg_relife_event{id=10702,evts="美国精英制定影视音乐作品通用评分标准，引发广泛争议。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10703) ->
	#cfg_relife_event{id=10703,evts="百慕大三角海底发现中国古代风格建筑。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10704) ->
	#cfg_relife_event{id=10704,evts="马斯克登陆火星。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10705) ->
	#cfg_relife_event{id=10705,evts="中国宣布同性恋为犯罪，将至少判处3年以下的有期徒刑。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10706) ->
	#cfg_relife_event{id=10706,evts="金正恩在朝鲜称帝，改为帝制。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10707) ->
	#cfg_relife_event{id=10707,evts="你学会了打麻将。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10607,10608,10609]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10708) ->
	#cfg_relife_event{id=10708,evts="你以前常去的高尔夫球场被陨石击中。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10607,10608]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10709) ->
	#cfg_relife_event{id=10709,evts="你最好的朋友去世。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10710) ->
	#cfg_relife_event{id=10710,evts="城市里到处都是全息投影。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10711) ->
	#cfg_relife_event{id=10711,evts="全息投影彻底取代手机。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10712) ->
	#cfg_relife_event{id=10712,evts="现在可以通过植入芯片来获得一小段记忆或知识。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10713) ->
	#cfg_relife_event{id=10713,evts="近视已经可以轻松治愈。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10714) ->
	#cfg_relife_event{id=10714,evts="计算机科学家宣称，我们生活在游戏世界中的概率为100%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10715) ->
	#cfg_relife_event{id=10715,evts="你发现了大统一模型。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10679]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10716) ->
	#cfg_relife_event{id=10716,evts="你再次获得诺贝尔物理学奖。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10715]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10717) ->
	#cfg_relife_event{id=10717,evts="你感觉学校的环境各方面都不如美国好。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10718) ->
	#cfg_relife_event{id=10718,evts="你对学校不太满意，但凑合着学，渐渐更多的时间用在了玩乐上。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10719) ->
	#cfg_relife_event{id=10719,evts="你平时都和留学生来往，很少和普通学生交流。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10720) ->
	#cfg_relife_event{id=10720,evts="据说你们的课业要求比普通学生的简单。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10721) ->
	#cfg_relife_event{id=10721,evts="据说老师让很多普通学生故意挂科，保证你们留学生不至于被退学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10722) ->
	#cfg_relife_event{id=10722,evts="中国的食物你吃不习惯。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10723) ->
	#cfg_relife_event{id=10723,evts="北京的空气和气候你很不习惯。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10724) ->
	#cfg_relife_event{id=10724,evts="你有时翘课去北京的各景区游玩。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10725) ->
	#cfg_relife_event{id=10725,evts="你的中文说的很流利。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10726) ->
	#cfg_relife_event{id=10726,evts="你没有参加社团，但经常和其他留学生开party。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10727) ->
	#cfg_relife_event{id=10727,evts="你有些想家。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10728) ->
	#cfg_relife_event{id=10728,evts="你父母来北京看望你。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10729) ->
	#cfg_relife_event{id=10729,evts="你经常去看电影、音乐会、演唱会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10730) ->
	#cfg_relife_event{id=10730,evts="你爬了长城，感觉不怎么样，又挤又乱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10731) ->
	#cfg_relife_event{id=10731,evts="你假期去了上海和香港玩。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10732) ->
	#cfg_relife_event{id=10732,evts="你假期去西藏旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10733) ->
	#cfg_relife_event{id=10733,evts="有短视频主播采访你英文水平如何，你假装是普通学生作答。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10734) ->
	#cfg_relife_event{id=10734,evts="你感觉中国的高铁很方便。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10735) ->
	#cfg_relife_event{id=10735,evts="你感觉中国的电子支付很方便。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10736) ->
	#cfg_relife_event{id=10736,evts="你博士毕业了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10737) ->
	#cfg_relife_event{id=10737,evts="你进入名企工作。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10738) ->
	#cfg_relife_event{id=10738,evts="你的工作并不像其他人盛传的那种996，下午下班后你还去健身。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10739) ->
	#cfg_relife_event{id=10739,evts="公司组织去马尔代夫旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10740) ->
	#cfg_relife_event{id=10740,evts="公司的休息厅提供西式茶点，令你很满意。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10741) ->
	#cfg_relife_event{id=10741,evts="普普通通的社畜生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10742) ->
	#cfg_relife_event{id=10742,evts="你养了一只猫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10743) ->
	#cfg_relife_event{id=10743,evts="你养了一只狗。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10744) ->
	#cfg_relife_event{id=10744,evts="你养的猫意外死亡。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10742]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10745) ->
	#cfg_relife_event{id=10745,evts="你养的狗意外死亡。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10743]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10746) ->
	#cfg_relife_event{id=10746,evts="你升职了。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10747) ->
	#cfg_relife_event{id=10747,evts="你又升职了。",attrs_change=[[3,1],[4,1]],is_rand_evt=,prev_conds="EVT?[10746]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10748) ->
	#cfg_relife_event{id=10748,evts="你有次在地铁上被偷了手机，报警后警方高度重视，立即出动，当天就追回了你的手机。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10749) ->
	#cfg_relife_event{id=10749,evts="你经常阅读一些财经杂志和哲学书籍。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10750) ->
	#cfg_relife_event{id=10750,evts="你在视频APP上分享你的人生，收获大量粉丝。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>6)&(EVT?[10586,10587])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10751) ->
	#cfg_relife_event{id=10751,evts="你经常逛知乎并回答国外和商业相关问题，迅速成为大V。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10752) ->
	#cfg_relife_event{id=10752,evts="你逐渐意识到你和普通中国人思维方式的不同。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10753) ->
	#cfg_relife_event{id=10753,evts="你经常感到生活中严重的男女不平等。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10754) ->
	#cfg_relife_event{id=10754,evts="你组织一些线下活动，和很多遭遇性别歧视的人一起讨论方案和分享经历。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10753]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10755) ->
	#cfg_relife_event{id=10755,evts="你出了一本描绘和分析性别歧视现象的书。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10754]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10756) ->
	#cfg_relife_event{id=10756,evts="你的理财收益不错。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="(MNY>6)&(EVT?[10586,10587])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10757) ->
	#cfg_relife_event{id=10757,evts="你去黄山旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10758) ->
	#cfg_relife_event{id=10758,evts="你请了年假一口气游玩了五岳。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20759) ->
	#cfg_relife_event{id=20759,evts="被天价海鲜坑了不少钱。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10759) ->
	#cfg_relife_event{id=10759,evts="你去三亚旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10760) ->
	#cfg_relife_event{id=10760,evts="你的一位同事代孕了第三胎。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10761) ->
	#cfg_relife_event{id=10761,evts="你参加了一档老外夸中国的综艺节目。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10762) ->
	#cfg_relife_event{id=10762,evts="你网上的粉丝很多，你的网红收入甚至超过你的工资。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10750,10751]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10763) ->
	#cfg_relife_event{id=10763,evts="你的项目大获成功。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10764) ->
	#cfg_relife_event{id=10764,evts="在一次重要的饭局中，你作为翻译出场。",attrs_change=[],is_rand_evt=,prev_conds="(INT>2)&(EVT?[10586,10587])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10765) ->
	#cfg_relife_event{id=10765,evts="你购买了名车名表。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10586,10587])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10766) ->
	#cfg_relife_event{id=10766,evts="你参加了公司里的斯诺克比赛。",attrs_change=[],is_rand_evt=,prev_conds="(STR>3)&(EVT?[10586,10587])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10767) ->
	#cfg_relife_event{id=10767,evts="你仅凭每月的理财收入就超过99%的人了。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10586,10587])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10768) ->
	#cfg_relife_event{id=10768,evts="你在一次旅游中遭遇车祸。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10769) ->
	#cfg_relife_event{id=10769,evts="你退休了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10586,10587]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10770) ->
	#cfg_relife_event{id=10770,evts="【绝密消息】科学家认为大多数人的天赋都是来人间凑数的。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10771) ->
	#cfg_relife_event{id=10771,evts="【绝密消息】你捡到一张纸条，上面写着一位策划的联系方式：846945492",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10772) ->
	#cfg_relife_event{id=10772,evts="【绝密消息】你捡到一张纸条，上面写着一位程序的联系方式：1281616438。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10773) ->
	#cfg_relife_event{id=10773,evts="【绝密消息】据说，修仙者是真实存在的……",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10774) ->
	#cfg_relife_event{id=10774,evts="【绝密消息】据说，正常人无论如何都活不到100岁，除非……有个小盒子？",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10775) ->
	#cfg_relife_event{id=10775,evts="【绝密消息】考古学家发现一粒古代的药丸，看上去金灿灿的，不像凡物。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10776) ->
	#cfg_relife_event{id=10776,evts="【绝密消息】有人说世界上只有中国和美国是真实存在的。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10777) ->
	#cfg_relife_event{id=10777,evts="【绝密消息】有人说“如果你很有钱，就出生不到农村；很穷，就出生不到城市。一个猜测，不知道对不对。”",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10778) ->
	#cfg_relife_event{id=10778,evts="【绝绝子消息】今日份甜甜碎片已加载完毕??，不是8??，宝！我今天重开人生了??，我真的哭死，呢呢呢，这家的人生好重开到跺jiojio～～～这杯小布丁也有被惊艳到??????无语子，路上还看见一个Java男，大无语事件，哒哒哒，岁月漫长 那就一起拯救地球与乐趣吧??",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10770,10771,10772,10773,10774,10775,10776,10777,10779,10780]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10779) ->
	#cfg_relife_event{id=10779,evts="【绝密消息】遗传学家说，最好的天赋只有0.1%的几率出现，其次的天赋是1%，比较好的天赋是10%。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10780) ->
	#cfg_relife_event{id=10780,evts="【绝密消息】专家认为，一些中老年人生活乏味，只能看新闻度日，是因为某人编不出事件了。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10781) ->
	#cfg_relife_event{id=10781,evts="【绝密消息】据说某游戏由两人制作完成，程序员只花了几个小时就写完了程序，而无业在家的策划花了一周多才写完文案。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10782) ->
	#cfg_relife_event{id=10782,evts="【绝密消息】你看了一本玄幻小说，小说里想度过天劫需要悟透全部五行大道和任意一种本源大道。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10783) ->
	#cfg_relife_event{id=10783,evts="【绝密消息】一名不到25岁的作者强行描写完全不懂的中年和婚后生活，遭致大量批评。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10784) ->
	#cfg_relife_event{id=10784,evts="【绝密消息】某辣鸡游戏十连抽竟然没有保底，就像地球online一样。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1112]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10785) ->
	#cfg_relife_event{id=10785,evts="你患上了严重的急性肠胃炎。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(STR<5)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10786) ->
	#cfg_relife_event{id=10786,evts="你突发过敏性哮喘。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(STR<2)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10787) ->
	#cfg_relife_event{id=10787,evts="你进入了一个渡劫期大能的传承洞府。",attrs_change=[[1,1],[2,1],[3,1],[4,1]],is_rand_evt=,prev_conds="(INT>5)&(TLT?[1048])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10788) ->
	#cfg_relife_event{id=10788,evts="获得了传承。所有属性大幅提升。",attrs_change=[[1,20],[2,200],[3,2],[4,2]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10789) ->
	#cfg_relife_event{id=10789,evts="你捡到一个破碎的仙器，里面有个知识渊博的器魂。",attrs_change=[[1,100]],is_rand_evt=,prev_conds="(MNY>13)&(TLT?[1048])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10790) ->
	#cfg_relife_event{id=10790,evts="你感觉到衰老，很容易疲惫。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10791) ->
	#cfg_relife_event{id=10791,evts="你的胃口越来越小，感觉时间过得越来越快。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10792) ->
	#cfg_relife_event{id=10792,evts="你们家装了全自动洗浴间，人进去可以自动完成沐浴和洗漱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10793) ->
	#cfg_relife_event{id=10793,evts="你们家买了飞车，全球拥有飞车的人很少很少。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10794) ->
	#cfg_relife_event{id=10794,evts="你有一些慢性病，需要持续吃药。",attrs_change=[[2,-2]],is_rand_evt=,prev_conds="(STR<9)&(EVT?[10011,10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10795) ->
	#cfg_relife_event{id=10795,evts="你开始觉得钱财无用，身体健康才是最重要的。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10796) ->
	#cfg_relife_event{id=10796,evts="你意外吃到一份儿时味道的菜，流下了眼泪。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10797) ->
	#cfg_relife_event{id=10797,evts="大太空航行时代到来。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10798) ->
	#cfg_relife_event{id=10798,evts="经常有年轻时的熟人来拜访你。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10799) ->
	#cfg_relife_event{id=10799,evts="基础学科发展缓慢。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10800) ->
	#cfg_relife_event{id=10800,evts="你家设置了模拟外景，可以实时显示世界各地的风光。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10801) ->
	#cfg_relife_event{id=10801,evts="你家换上了自动地板，可以自动清洁、移动、变温等。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10802) ->
	#cfg_relife_event{id=10802,evts="你家换上了意识控制家具。脑中思考就可以控制家具家电。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10803) ->
	#cfg_relife_event{id=10803,evts="你感叹医学发展缓慢，至今仍未攻克癌症和心血管疾病。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10804) ->
	#cfg_relife_event{id=10804,evts="人工合成肉已经普及，几乎取代了真肉，但你家仍然食用真肉。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10805) ->
	#cfg_relife_event{id=10805,evts="中国可控核聚变技术完全成熟，进入无限能源的时代。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10806) ->
	#cfg_relife_event{id=10806,evts="人类几乎可以完全控制天气。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10807) ->
	#cfg_relife_event{id=10807,evts="你越来越喜欢哲学书籍，经常看《道德经》和后现代哲学。",attrs_change=[],is_rand_evt=,prev_conds="(INT>5)&(EVT?[10011])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10808) ->
	#cfg_relife_event{id=10808,evts="你仍然习惯使用笨重的实体电脑，而不是全息计算机。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10809) ->
	#cfg_relife_event{id=10809,evts="越来越多的人沉迷在虚拟世界，包括你的家人们。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10810) ->
	#cfg_relife_event{id=10810,evts="书籍这种媒介竟然没有退出历史舞台，你也很意外。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011,10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10811) ->
	#cfg_relife_event{id=10811,evts="美国迎来了一位跨性别穆斯林黑人总统。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10812) ->
	#cfg_relife_event{id=10812,evts="全球变暖严重，专家称100年内日本就会彻底沉没。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10813) ->
	#cfg_relife_event{id=10813,evts="有哲学家称世界是由信息构成的，物质的运动就是信息的传递。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10814) ->
	#cfg_relife_event{id=10814,evts="墨西哥毒贩夺取政权，宣布新政府成立。美国从墨西哥撤兵。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10815) ->
	#cfg_relife_event{id=10815,evts="你开始关注美国底层人民的生活，计划进行一些慈善。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10011]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10816) ->
	#cfg_relife_event{id=10816,evts="你因为容貌被破例进入一座洞府。体质大幅提升。",attrs_change=[[2,20]],is_rand_evt=,prev_conds="(CHR>13)&(TLT?[1048])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10817) ->
	#cfg_relife_event{id=10817,evts="你捡到天阶灵器，实力大幅提升。",attrs_change=[[2,50]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10818) ->
	#cfg_relife_event{id=10818,evts="你和一位相同境界的人结为道侣。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10819) ->
	#cfg_relife_event{id=10819,evts="你的道侣被人斩杀。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(TLT?[1048])&(EVT?[10818])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10820) ->
	#cfg_relife_event{id=10820,evts="你走火入魔，体质大幅降低。",attrs_change=[[2,-100]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10821) ->
	#cfg_relife_event{id=10821,evts="你走火入魔，体质大幅降低。",attrs_change=[[2,-10]],is_rand_evt=,prev_conds="TLT?[1048]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10822) ->
	#cfg_relife_event{id=10822,evts="你上了一个昂贵的双语幼儿园。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10823) ->
	#cfg_relife_event{id=10823,evts="你上了一个昂贵的双语幼儿园。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10824) ->
	#cfg_relife_event{id=10824,evts="你上了一个普通的幼儿园。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10825) ->
	#cfg_relife_event{id=10825,evts="你的家人给你买了很多玩具。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10826) ->
	#cfg_relife_event{id=10826,evts="你的家人给你买了很多书。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10827) ->
	#cfg_relife_event{id=10827,evts="你进入了托儿所。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10828) ->
	#cfg_relife_event{id=10828,evts="你的家人开始教你学英语。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10829) ->
	#cfg_relife_event{id=10829,evts="你的家人为你制定了长长的人生计划。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10830) ->
	#cfg_relife_event{id=10830,evts="你生了二胎。",attrs_change=[[2,-1],[3,-1]],is_rand_evt=,prev_conds="(TLT?[1113])&(EVT?[10268,10269,10621])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10831) ->
	#cfg_relife_event{id=10831,evts="你生了三胎。",attrs_change=[[2,-1],[3,-1]],is_rand_evt=,prev_conds="EVT?[10830]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10832) ->
	#cfg_relife_event{id=10832,evts="你患上了严重的妇科疾病。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[10830]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10833) ->
	#cfg_relife_event{id=10833,evts="生育时留下的后遗症，你经常漏尿。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10830]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10834) ->
	#cfg_relife_event{id=10834,evts="三个孩子给你们的生活带来了很多不便。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10831]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10835) ->
	#cfg_relife_event{id=10835,evts="你后悔生了三胎。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10831]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10836) ->
	#cfg_relife_event{id=10836,evts="你得了子宫肌瘤。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10830]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10837) ->
	#cfg_relife_event{id=10837,evts="你的体态愈发臃肿。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10830]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10838) ->
	#cfg_relife_event{id=10838,evts="孩子填满了你的生活，你感觉自己仿佛不是自己，而是机器。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10830]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10839) ->
	#cfg_relife_event{id=10839,evts="你的家人将一套房产转移到你名下。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>8)&(TLT?[1010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10840) ->
	#cfg_relife_event{id=10840,evts="你意外一跤摔到了后脑。",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10841) ->
	#cfg_relife_event{id=10841,evts="时间跳跃。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1114]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10842) ->
	#cfg_relife_event{id=10842,evts="时空错乱，你中途被抛出。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1114]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10843) ->
	#cfg_relife_event{id=10843,evts="你的体质极度虚弱。",attrs_change=[],is_rand_evt=,prev_conds="(STR<2)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10844) ->
	#cfg_relife_event{id=10844,evts="你患重病身亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10843]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10845) ->
	#cfg_relife_event{id=10845,evts="你开始学习舞蹈。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10846) ->
	#cfg_relife_event{id=10846,evts="你开始学习书法。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10847) ->
	#cfg_relife_event{id=10847,evts="你开始学习钢琴。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10848) ->
	#cfg_relife_event{id=10848,evts="你的博士妈妈开始教你物理化学生物。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10849) ->
	#cfg_relife_event{id=10849,evts="你的识字量达到了2000。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10850) ->
	#cfg_relife_event{id=10850,evts="你的识字量达到了1500。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10851) ->
	#cfg_relife_event{id=10851,evts="你做了智商测试，智商高达150。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(((MNY>7)&(EVT?[10010]))|(TLT?[1010]))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10852) ->
	#cfg_relife_event{id=10852,evts="你开始学习游泳。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10853) ->
	#cfg_relife_event{id=10853,evts="你的高级工程师爸爸开始教你编程。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10854) ->
	#cfg_relife_event{id=10854,evts="爸妈带你去日本旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10855) ->
	#cfg_relife_event{id=10855,evts="爸妈带你去美国旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10856) ->
	#cfg_relife_event{id=10856,evts="你的识字量达到了300。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10857) ->
	#cfg_relife_event{id=10857,evts="你的识字量达到了500。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10858) ->
	#cfg_relife_event{id=10858,evts="幼儿园老师每天都和你们玩游戏。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10859) ->
	#cfg_relife_event{id=10859,evts="幼儿园的饭菜不好吃。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10860) ->
	#cfg_relife_event{id=10860,evts="幼儿园要求每天午睡，但你经常睡不着。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10861) ->
	#cfg_relife_event{id=10861,evts="上课时，你很乖，坐姿端正。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10862) ->
	#cfg_relife_event{id=10862,evts="上课时，你经常偷偷溜出教室。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10863) ->
	#cfg_relife_event{id=10863,evts="你很可爱，很讨老师和小朋友喜欢。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="((CHR>7)|(TLT?[1037]))&(EVT?[10824])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10864) ->
	#cfg_relife_event{id=10864,evts="你学会了骑自行车。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(TLT?[1038])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10865) ->
	#cfg_relife_event{id=10865,evts="你喜欢玩迷宫和脑筋急转弯。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(INT>5)&(EVT?[10824])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10866) ->
	#cfg_relife_event{id=10866,evts="你家长为你请了家庭教师。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(MNY>5)&(EVT?[10824])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10867) ->
	#cfg_relife_event{id=10867,evts="你的玩电脑和看电视时间都要通过积分兑换。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10868) ->
	#cfg_relife_event{id=10868,evts="你的父亲意外去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10869) ->
	#cfg_relife_event{id=10869,evts="你的母亲意外去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10870) ->
	#cfg_relife_event{id=10870,evts="你上了个普通小学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10824]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10871) ->
	#cfg_relife_event{id=10871,evts="你上了个名牌小学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10822,10823]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10872) ->
	#cfg_relife_event{id=10872,evts="你获得了机器人大赛金奖。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10853])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10873) ->
	#cfg_relife_event{id=10873,evts="你获得了三好学生。",attrs_change=[],is_rand_evt=,prev_conds="(INT>5)&(EVT?[10824])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10874) ->
	#cfg_relife_event{id=10874,evts="你获得了三好标兵。",attrs_change=[],is_rand_evt=,prev_conds="(INT>6)&(EVT?[10824])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10875) ->
	#cfg_relife_event{id=10875,evts="你获得了市三好学生。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10822,10823])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10876) ->
	#cfg_relife_event{id=10876,evts="你获得了区三好标生。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10822,10823])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10877) ->
	#cfg_relife_event{id=10877,evts="你当上了班长。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10878) ->
	#cfg_relife_event{id=10878,evts="你帮班里出了一期黑板报。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(EVT?[10048])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10879) ->
	#cfg_relife_event{id=10879,evts="你阅读了大量英文小说和杂志。",attrs_change=[],is_rand_evt=,prev_conds="(INT>5)&(EVT?[10871])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10880) ->
	#cfg_relife_event{id=10880,evts="你在运动会上取得了好成绩。",attrs_change=[],is_rand_evt=,prev_conds="(STR>6)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10881) ->
	#cfg_relife_event{id=10881,evts="你需要上大量课外班，压力很大。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10882) ->
	#cfg_relife_event{id=10882,evts="你电话举报了课外班，课外班被查封了。你开心了。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10883) ->
	#cfg_relife_event{id=10883,evts="你参与了辩论会。",attrs_change=[],is_rand_evt=,prev_conds="(INT>3)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10884) ->
	#cfg_relife_event{id=10884,evts="你参与了学校的文艺演出。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>3)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10885) ->
	#cfg_relife_event{id=10885,evts="你喜欢班上的一个小朋友。不过是很纯洁的喜欢。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10886) ->
	#cfg_relife_event{id=10886,evts="你常常能指出老师的错误。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10887) ->
	#cfg_relife_event{id=10887,evts="你第一次因为犯错被罚写检查。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10888) ->
	#cfg_relife_event{id=10888,evts="你第一次因为犯错被罚站。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10889) ->
	#cfg_relife_event{id=10889,evts="你第一次因为犯错被罚抄课文。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10890) ->
	#cfg_relife_event{id=10890,evts="你的父母带你四处旅游、参加活动刷履历。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10891) ->
	#cfg_relife_event{id=10891,evts="你开始学习日语。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10892) ->
	#cfg_relife_event{id=10892,evts="你开始学习法语。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10893) ->
	#cfg_relife_event{id=10893,evts="你达到了钢琴10级。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10847]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10894) ->
	#cfg_relife_event{id=10894,evts="你雅思拿到7.5分。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10871])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10895) ->
	#cfg_relife_event{id=10895,evts="你的英语词汇量达到10000。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10871])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10896) ->
	#cfg_relife_event{id=10896,evts="你参加美国数学竞赛获得一等奖。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[10871])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10897) ->
	#cfg_relife_event{id=10897,evts="你们学校组织前往南极修学旅行。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10898) ->
	#cfg_relife_event{id=10898,evts="你的美貌十分惊艳。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>7)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10899) ->
	#cfg_relife_event{id=10899,evts="你遭到了一位老师的猥亵。",attrs_change=[[4,-2]],is_rand_evt=,prev_conds="EVT?[10898]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10900) ->
	#cfg_relife_event{id=10900,evts="你报了警，老师被刑拘。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10901) ->
	#cfg_relife_event{id=10901,evts="你对自然科学和社会科学的常识都了解不少。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10902) ->
	#cfg_relife_event{id=10902,evts="学校的课程非常重，和普通高中的高三差不多。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10903) ->
	#cfg_relife_event{id=10903,evts="家人给了你一笔资金让你理财。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10904) ->
	#cfg_relife_event{id=10904,evts="你近视了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10905) ->
	#cfg_relife_event{id=10905,evts="家人送你去国外读了一年。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10906) ->
	#cfg_relife_event{id=10906,evts="你家开始养猫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10907) ->
	#cfg_relife_event{id=10907,evts="你家开始养狗。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10908) ->
	#cfg_relife_event{id=10908,evts="你家的猫意外死亡。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10906]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10909) ->
	#cfg_relife_event{id=10909,evts="你家的狗意外死亡。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10907]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10910) ->
	#cfg_relife_event{id=10910,evts="你的家人极力阻止你看动漫。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(EVT?[10871])&(EVT?[10007,10008])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10911) ->
	#cfg_relife_event{id=10911,evts="你的家人开始禁止你玩电子游戏。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10912) ->
	#cfg_relife_event{id=10912,evts="你第一次当上课代表。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10913) ->
	#cfg_relife_event{id=10913,evts="有个同学每天在车站等你一起上学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10914) ->
	#cfg_relife_event{id=10914,evts="你以班上同学为角色画漫画。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10915) ->
	#cfg_relife_event{id=10915,evts="你们的体育课总是变成自习课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10916) ->
	#cfg_relife_event{id=10916,evts="你们的班主任为了生三胎辞职了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10917) ->
	#cfg_relife_event{id=10917,evts="信息课上，你和同学玩可以联机的游戏。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(20917) ->
	#cfg_relife_event{id=20917,evts="你总是赢。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10918) ->
	#cfg_relife_event{id=10918,evts="音乐课老师经常放电影。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10919) ->
	#cfg_relife_event{id=10919,evts="你经常和几个同学打架。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10920) ->
	#cfg_relife_event{id=10920,evts="你的作文被老师作为范文朗读，但你却很尴尬。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10921) ->
	#cfg_relife_event{id=10921,evts="你家人经常给你买核桃等坚果补脑。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10922) ->
	#cfg_relife_event{id=10922,evts="你每天都喝牛奶。",attrs_change=[[2,1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10923) ->
	#cfg_relife_event{id=10923,evts="你又要买大一号的新校服了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10924) ->
	#cfg_relife_event{id=10924,evts="你每天做作业都要做到凌晨。",attrs_change=[[2,-1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10925) ->
	#cfg_relife_event{id=10925,evts="你每天做作业都要做到深夜。",attrs_change=[[2,-1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10926) ->
	#cfg_relife_event{id=10926,evts="虽然你还小，但你几乎和20岁左右的青年差不多成熟了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10927) ->
	#cfg_relife_event{id=10927,evts="你开始很严肃地思考未来和制定计划。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10928) ->
	#cfg_relife_event{id=10928,evts="你写了封寄给10年后自己的信。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10929) ->
	#cfg_relife_event{id=10929,evts="学校被禁止搞排名，但你老师报成绩时还是默认按顺序来。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10930) ->
	#cfg_relife_event{id=10930,evts="你喜欢在学校的石质乒乓球台上打球。",attrs_change=[],is_rand_evt=,prev_conds="(STR>2)&(EVT?[10870])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10931) ->
	#cfg_relife_event{id=10931,evts="你加入了学校篮球队。",attrs_change=[],is_rand_evt=,prev_conds="(STR>6)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10932) ->
	#cfg_relife_event{id=10932,evts="你经常和其他同学一起去上厕所。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10933) ->
	#cfg_relife_event{id=10933,evts="升旗时你经常对口型假唱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10934) ->
	#cfg_relife_event{id=10934,evts="学校校长因贪污受贿被捕。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10935) ->
	#cfg_relife_event{id=10935,evts="你觉得广播体操《舞动青春》的音乐很好听。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10936) ->
	#cfg_relife_event{id=10936,evts="做操体转运动时，你经常趁机回头看别的同学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10937) ->
	#cfg_relife_event{id=10937,evts="你假装没有全学会，避免了压力更大的跳级。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10938) ->
	#cfg_relife_event{id=10938,evts="你颜值出众，准备走娱乐路线。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10898])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10939) ->
	#cfg_relife_event{id=10939,evts="你被体校教练挖走。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10880]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10940) ->
	#cfg_relife_event{id=10940,evts="你升入普通初中。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10870]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10941) ->
	#cfg_relife_event{id=10941,evts="你升入名牌初中。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10871]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10942) ->
	#cfg_relife_event{id=10942,evts="你的游戏技术过人，在学校小有名气。",attrs_change=[],is_rand_evt=,prev_conds="(TLT?[1039])&(EVT?[10940])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10943) ->
	#cfg_relife_event{id=10943,evts="你中考没有考好。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10940])&(EVT?[10258])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10944) ->
	#cfg_relife_event{id=10944,evts="你考到了一所重点高中。",attrs_change=[],is_rand_evt=,prev_conds="((INT>6)&(EVT?[10940]))|(EVT?[10941])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10945) ->
	#cfg_relife_event{id=10945,evts="你考到了一所普通高中。",attrs_change=[],is_rand_evt=,prev_conds="(INT<7)&(EVT?[10940])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10946) ->
	#cfg_relife_event{id=10946,evts="你考上了人大附中。",attrs_change=[],is_rand_evt=,prev_conds="(TLT?[1010])&(INT>6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10947) ->
	#cfg_relife_event{id=10947,evts="训练。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10939]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10948) ->
	#cfg_relife_event{id=10948,evts="培训，整容。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<8)&(EVT?[10938])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10949) ->
	#cfg_relife_event{id=10949,evts="参加选秀。没有能力砸钱，迅速被淘汰。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10948]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10950) ->
	#cfg_relife_event{id=10950,evts="加入年轻艺人团体出道。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10948]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10951) ->
	#cfg_relife_event{id=10951,evts="遇冷，彻底被资本家放弃。你退圈了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10948]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10952) ->
	#cfg_relife_event{id=10952,evts="你转行做颜值主播。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10951]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10953) ->
	#cfg_relife_event{id=10953,evts="你转行从事短视频生产行业。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10951]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10954) ->
	#cfg_relife_event{id=10954,evts="你转行做虚拟主播。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10951])&(EVT?[10008,10007])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10955) ->
	#cfg_relife_event{id=10955,evts="你转行从事动漫UP主行业。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10951])&(EVT?[10008,10007])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10956) ->
	#cfg_relife_event{id=10956,evts="你靠卖肉和开网店维持收入。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10952,10953]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10957) ->
	#cfg_relife_event{id=10957,evts="你靠人傻钱多二次元维持生计。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10954,10955]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10958) ->
	#cfg_relife_event{id=10958,evts="家人投钱帮你造势。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10938])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10959) ->
	#cfg_relife_event{id=10959,evts="你参与选秀节目，一举爆红。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10958]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10960) ->
	#cfg_relife_event{id=10960,evts="你成为最热门的少年天团C位。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10959]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10961) ->
	#cfg_relife_event{id=10961,evts="你成为最热门的少女天团C位。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10959]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10962) ->
	#cfg_relife_event{id=10962,evts="演出、参加综艺节目。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10960,10961]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10963) ->
	#cfg_relife_event{id=10963,evts="出演电影《我的县长父亲》，热度大涨。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10960,10961]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10964) ->
	#cfg_relife_event{id=10964,evts="出演电视剧《幸福农家乐》，广受好评。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10960,10961]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10965) ->
	#cfg_relife_event{id=10965,evts="你接取大量广告代言。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10960,10961]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10966) ->
	#cfg_relife_event{id=10966,evts="你被北京电影学院录取。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10960,10961]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10967) ->
	#cfg_relife_event{id=10967,evts="你休闲时间喜欢追新番。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10940])&(EVT?[10008,10007])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10968) ->
	#cfg_relife_event{id=10968,evts="你开始看网文，并且还偷偷自己拿小本子写。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10969) ->
	#cfg_relife_event{id=10969,evts="你入了cos圈。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10940])&(EVT?[10008,10007])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10970) ->
	#cfg_relife_event{id=10970,evts="你经常女装。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10969]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10971) ->
	#cfg_relife_event{id=10971,evts="你第一次看黄书。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10972) ->
	#cfg_relife_event{id=10972,evts="你第一次看A片。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10973) ->
	#cfg_relife_event{id=10973,evts="你第一次看里番。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(EVT?[10008,10007])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10974) ->
	#cfg_relife_event{id=10974,evts="你谈了一个女朋友。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10945])&((EVT?[10001,10110,10111])|(TLT?[1026]))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10975) ->
	#cfg_relife_event{id=10975,evts="你谈了一个男朋友。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10945])&((EVT?[10002,10110,10111])|(TLT?[1026]))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10976) ->
	#cfg_relife_event{id=10976,evts="你的数学老师因为课外补课而被逮捕。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10977) ->
	#cfg_relife_event{id=10977,evts="你们班的男生玩阿鲁巴，把学校的路灯锯断了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10978) ->
	#cfg_relife_event{id=10978,evts="有只狗狗跑进你们班一起听课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10979) ->
	#cfg_relife_event{id=10979,evts="有次值日，其他人都跑了，只有你一个人留在班上扫除到很晚。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10980) ->
	#cfg_relife_event{id=10980,evts="由于补课禁令，你们下午5点多就放学了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10981) ->
	#cfg_relife_event{id=10981,evts="眼保健操的功效被证实是虚假信息，学校取消了每天的眼保健操。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10982) ->
	#cfg_relife_event{id=10982,evts="你的朋友很少。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(EVT?[10940])&(CHR<3)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10983) ->
	#cfg_relife_event{id=10983,evts="你的朋友很多。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10940])&(CHR>6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10984) ->
	#cfg_relife_event{id=10984,evts="你能感受到学业难度的提升。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10985) ->
	#cfg_relife_event{id=10985,evts="有学生上课玩手机被老师抓到，老师将其手机扔出窗外。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10986) ->
	#cfg_relife_event{id=10986,evts="你同桌的男生很烦人，总是没事招惹你。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(EVT?[10940])&(EVT?[10002])&(CHR>5)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10987) ->
	#cfg_relife_event{id=10987,evts="有次写作业时灵光突现，你的智力提高了。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10988) ->
	#cfg_relife_event{id=10988,evts="你现在很叛逆，讨厌别人管教你。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10989) ->
	#cfg_relife_event{id=10989,evts="你买小卖部的饮料中了再来一瓶，中的打开又中了再来一瓶。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10990) ->
	#cfg_relife_event{id=10990,evts="你在学校小卖部买过很多次饮料，从来没中过奖。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10991) ->
	#cfg_relife_event{id=10991,evts="午休时，你喜欢趴在桌子上午睡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10992) ->
	#cfg_relife_event{id=10992,evts="越临近考试，你越不想学习。考完后你玩时却觉得没意思了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10993) ->
	#cfg_relife_event{id=10993,evts="你做了MBTI测试，发现自己是INFP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(SPR<4)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10994) ->
	#cfg_relife_event{id=10994,evts="你做了MBTI测试，发现自己是INTP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(INT>7)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10995) ->
	#cfg_relife_event{id=10995,evts="你做了MBTI测试，发现自己是INFJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(SPR<6)&(CHR>5)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10996) ->
	#cfg_relife_event{id=10996,evts="你做了MBTI测试，发现自己是ENTP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(STR>5)&(INT>5)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10997) ->
	#cfg_relife_event{id=10997,evts="你做了MBTI测试，发现自己是INTJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR>4)&(INT>6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10998) ->
	#cfg_relife_event{id=10998,evts="你做了MBTI测试，发现自己是ENFP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(STR>4)&(SPR>6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(10999) ->
	#cfg_relife_event{id=10999,evts="你做了MBTI测试，发现自己是ENFJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR>4)&(SPR>6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11000) ->
	#cfg_relife_event{id=11000,evts="你做了MBTI测试，发现自己是ENTJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR<5)&(SPR<5)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11001) ->
	#cfg_relife_event{id=11001,evts="你做了MBTI测试，发现自己是ISFP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR>5)&(SPR<5)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11002) ->
	#cfg_relife_event{id=11002,evts="你做了MBTI测试，发现自己是ISFJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(INT>5)&(SPR<5)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11003) ->
	#cfg_relife_event{id=11003,evts="你做了MBTI测试，发现自己是ISTP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(INT>5)&(STR<5)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11004) ->
	#cfg_relife_event{id=11004,evts="你做了MBTI测试，发现自己是ISTJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(INT>4)&(CHR<6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11005) ->
	#cfg_relife_event{id=11005,evts="你做了MBTI测试，发现自己是ESFP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR>5)&(STR>4)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11006) ->
	#cfg_relife_event{id=11006,evts="你做了MBTI测试，发现自己是ESTP。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR>5)&(STR<6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11007) ->
	#cfg_relife_event{id=11007,evts="你做了MBTI测试，发现自己是ESFJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR<6)&(INT<6)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11008) ->
	#cfg_relife_event{id=11008,evts="你做了MBTI测试，发现自己是ESTJ。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(CHR<6)&(STR>4)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11009) ->
	#cfg_relife_event{id=11009,evts="你梦见自己穿越回古代用现代知识乱杀。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11010) ->
	#cfg_relife_event{id=11010,evts="上课时打了个盹，被老师粉笔头砸醒。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11011) ->
	#cfg_relife_event{id=11011,evts="同学们偷偷评选班花。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21011) ->
	#cfg_relife_event{id=21011,evts="你被评为班花。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11012) ->
	#cfg_relife_event{id=11012,evts="同学们偷偷评选校草。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21012) ->
	#cfg_relife_event{id=21012,evts="你被评为校草。",attrs_change=[[4,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11013) ->
	#cfg_relife_event{id=11013,evts="有同学在纸上画游戏给其他同学玩，被老师没收了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11014) ->
	#cfg_relife_event{id=11014,evts="你后桌的同学抄你作业，不小心把你名字也抄上了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11015) ->
	#cfg_relife_event{id=11015,evts="学校食堂推出新菜：番茄炒西红柿。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11016) ->
	#cfg_relife_event{id=11016,evts="学校食堂推出新菜：去肉牛肉面。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11017) ->
	#cfg_relife_event{id=11017,evts="学校食堂推出新菜：青椒炒草莓。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11018) ->
	#cfg_relife_event{id=11018,evts="学校食堂推出新菜：酸梅汤豆腐脑。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11019) ->
	#cfg_relife_event{id=11019,evts="学校食堂推出新菜：可乐烧黄瓜。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11020) ->
	#cfg_relife_event{id=11020,evts="学校食堂推出新菜：面条馅包子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11021) ->
	#cfg_relife_event{id=11021,evts="最新桌游三国自走棋风靡学校，放学后很多同学一起玩。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11022) ->
	#cfg_relife_event{id=11022,evts="学校组织在操场上办跳蚤市场。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21022) ->
	#cfg_relife_event{id=21022,evts="你买到一副貌似普通的画，竟然是名家真迹。",attrs_change=[[3,1]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11023) ->
	#cfg_relife_event{id=11023,evts="你和一个老师闹了很大矛盾，心态爆炸。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11024) ->
	#cfg_relife_event{id=11024,evts="你脑力有限，跟不上课程。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10945])&(INT<2)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11025) ->
	#cfg_relife_event{id=11025,evts="你身体不好，经常请假去医院。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10940])&(STR<2)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21025) ->
	#cfg_relife_event{id=21025,evts="你在一次手术中不幸去世。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11026) ->
	#cfg_relife_event{id=11026,evts="学校添加了性少数厕所。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(EVT?[10110,10111,10002])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11027) ->
	#cfg_relife_event{id=11027,evts="校门口发生一起斗殴事件，多人受伤。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10940]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21027) ->
	#cfg_relife_event{id=21027,evts="其中一人是你。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11028) ->
	#cfg_relife_event{id=11028,evts="学习压力很大，你向学校心理老师倾诉。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11029) ->
	#cfg_relife_event{id=11029,evts="学校食堂推出新菜：挂面炒意面。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11030) ->
	#cfg_relife_event{id=11030,evts="学校食堂推出新菜：醋香烤翅。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11031) ->
	#cfg_relife_event{id=11031,evts="学校食堂推出新菜：大东南羊肉串。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11032) ->
	#cfg_relife_event{id=11032,evts="学校食堂推出新菜：肉包沙拉。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11033) ->
	#cfg_relife_event{id=11033,evts="学校食堂推出新菜：酱油捞饭。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11034) ->
	#cfg_relife_event{id=11034,evts="学校食堂推出新菜：榴莲馅小笼包。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11035) ->
	#cfg_relife_event{id=11035,evts="你很喜欢实验课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11036) ->
	#cfg_relife_event{id=11036,evts="下课铃一响，所有人都抱着书冲向食堂。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11037) ->
	#cfg_relife_event{id=11037,evts="几乎每节课间你们老师都拖堂到下一节课铃响。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11038) ->
	#cfg_relife_event{id=11038,evts="你开始提前学后面的内容。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10941])&(INT>7)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11039) ->
	#cfg_relife_event{id=11039,evts="你被淹没在题海中。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11040) ->
	#cfg_relife_event{id=11040,evts="同校有学生跳楼自杀。被学校压下来了。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11041) ->
	#cfg_relife_event{id=11041,evts="普通的内卷生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11042) ->
	#cfg_relife_event{id=11042,evts="班上有同学提前出国了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11043) ->
	#cfg_relife_event{id=11043,evts="你们的英语课有时会让外教上。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11044) ->
	#cfg_relife_event{id=11044,evts="虽然你住校，但你母亲在学校附近租了个房子住。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11045) ->
	#cfg_relife_event{id=11045,evts="你经常参加各类竞赛。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10941,10946])&(INT>7)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21045) ->
	#cfg_relife_event{id=21045,evts="你经常参加各类竞赛。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10941,10946])&(INT>5)&(TLT?[1115])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11046) ->
	#cfg_relife_event{id=11046,evts="你夺得了奥赛金牌。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[11045,21045])&(INT>9)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11047) ->
	#cfg_relife_event{id=11047,evts="你经常参加各种夏令营。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11048) ->
	#cfg_relife_event{id=11048,evts="学校采取按成绩排考场，班上采取按成绩排座位。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11049) ->
	#cfg_relife_event{id=11049,evts="很多同学跟不上老师讲课的速度。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11050) ->
	#cfg_relife_event{id=11050,evts="两天一小考，三天一大考。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11051) ->
	#cfg_relife_event{id=11051,evts="你刷过的练习册已经一人高了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11052) ->
	#cfg_relife_event{id=11052,evts="学校请来搞领导力培训的人到学校开动员大会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11053) ->
	#cfg_relife_event{id=11053,evts="班上的空调坏了，老师故意不找人修，说要锻炼你们。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11054) ->
	#cfg_relife_event{id=11054,evts="你有点怀疑人生的意义。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10944])&(SPR<4)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11055) ->
	#cfg_relife_event{id=11055,evts="班上挂上了励志条幅。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11056) ->
	#cfg_relife_event{id=11056,evts="老师用班费给大家买了他新出的辅导书。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11057) ->
	#cfg_relife_event{id=11057,evts="你的课桌上和抽屉里挤满了书，快要放不下了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10941]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11058) ->
	#cfg_relife_event{id=11058,evts="你报了很多超难的课程。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10946])&(INT>7)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11059) ->
	#cfg_relife_event{id=11059,evts="你们班所有老师都是特级教师。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11060) ->
	#cfg_relife_event{id=11060,evts="你经常参加各种学校社团、活动和节日。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11061) ->
	#cfg_relife_event{id=11061,evts="有很多同学早就准备好出国了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11062) ->
	#cfg_relife_event{id=11062,evts="你参加一个国际比赛获得一等奖，上了年度开学典礼的表彰。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="(EVT?[10946])&(INT>9)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11063) ->
	#cfg_relife_event{id=11063,evts="虽然你比同龄人强很多，但你周围总有各方面比你都强的大佬。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11064) ->
	#cfg_relife_event{id=11064,evts="有老外在校门口用英文采访你，你对答如流。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11065) ->
	#cfg_relife_event{id=11065,evts="学校提供了很多和国外名校交流的机会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11066) ->
	#cfg_relife_event{id=11066,evts="老师说：“少壮不努力，长大去隔壁。”",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11067) ->
	#cfg_relife_event{id=11067,evts="你考上了少年班，提前步入大学。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10010])&(INT>9)",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11068) ->
	#cfg_relife_event{id=11068,evts="努力学习。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11067]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11069) ->
	#cfg_relife_event{id=11069,evts="你出国留学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11067]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11070) ->
	#cfg_relife_event{id=11070,evts="你前往哈佛大学留学。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11067])&(TLT?[1073])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11071) ->
	#cfg_relife_event{id=11071,evts="你考上了清华大学。",attrs_change=[],is_rand_evt=,prev_conds="((EVT?[10944,10945])&(INT>9))|(EVT?[10946])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11072) ->
	#cfg_relife_event{id=11072,evts="你考上了北京大学。",attrs_change=[],is_rand_evt=,prev_conds="((EVT?[10944,10945])&(INT>9))|(EVT?[10946])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11073) ->
	#cfg_relife_event{id=11073,evts="你被保送清华大学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11046,11062]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11074) ->
	#cfg_relife_event{id=11074,evts="你被保送北京大学。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11046,11062]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11075) ->
	#cfg_relife_event{id=11075,evts="你考上一所985大学。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10944,10945])&((INT>7)|(MNY>8))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11076) ->
	#cfg_relife_event{id=11076,evts="你考上一所211大学。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[10944,10945])&((INT>6)|(MNY>7))",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11077) ->
	#cfg_relife_event{id=11077,evts="你考上一所双非本科。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944,10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11078) ->
	#cfg_relife_event{id=11078,evts="高考结束，你们班一本率100%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10946]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11079) ->
	#cfg_relife_event{id=11079,evts="高考结束，你们班一本率74%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11080) ->
	#cfg_relife_event{id=11080,evts="高考结束，你们班一本率67%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11081) ->
	#cfg_relife_event{id=11081,evts="高考结束，你们班一本率50%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944,10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11082) ->
	#cfg_relife_event{id=11082,evts="高考结束，你们班一本率92%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11083) ->
	#cfg_relife_event{id=11083,evts="高考结束，你们班一本率80%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10944]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11084) ->
	#cfg_relife_event{id=11084,evts="高考结束，你们班一本率35%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11085) ->
	#cfg_relife_event{id=11085,evts="高考结束，你们班一本率40%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11086) ->
	#cfg_relife_event{id=11086,evts="高考结束，你们班一本率25%。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10945]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11087) ->
	#cfg_relife_event{id=11087,evts="普通的自媒体生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10956,10957]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11088) ->
	#cfg_relife_event{id=11088,evts="你和一个粉丝开始谈恋爱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10956,10957]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11089) ->
	#cfg_relife_event{id=11089,evts="你和多个粉丝谈恋爱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11088]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11090) ->
	#cfg_relife_event{id=11090,evts="你的热度逐渐走低。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10956,10957]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11091) ->
	#cfg_relife_event{id=11091,evts="你的收入比较低。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10956,10957]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11092) ->
	#cfg_relife_event{id=11092,evts="时刻担忧净网新规会对你产生影响。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[10956,10957]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11093) ->
	#cfg_relife_event{id=11093,evts="你结婚了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10956,10957]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11094) ->
	#cfg_relife_event{id=11094,evts="普通的大学生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11095) ->
	#cfg_relife_event{id=11095,evts="你的生活和高中一样卷，抓紧各种时间看书。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11071,11072,11073,11074,11075,11076,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11096) ->
	#cfg_relife_event{id=11096,evts="班上总是有同学翘课，而且越来越多。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11097) ->
	#cfg_relife_event{id=11097,evts="你加入了学生会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11098) ->
	#cfg_relife_event{id=11098,evts="你加入了好几个社团，但参加社团活动的时间并不多。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11071,11072,11073,11074,11075,11076,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11099) ->
	#cfg_relife_event{id=11099,evts="你加入了不少社团，课余生活很丰富。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11100) ->
	#cfg_relife_event{id=11100,evts="你的绩点不错。",attrs_change=[],is_rand_evt=,prev_conds="(INT>4)&(EVT?[11077,11075,11076,11071,11072,11073,11074])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11101) ->
	#cfg_relife_event{id=11101,evts="你的绩点不好。",attrs_change=[],is_rand_evt=,prev_conds="((EVT?[11105,11106])|(INT<5))&(EVT?[11077,11075,11076,11071,11072,11073,11074])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11102) ->
	#cfg_relife_event{id=11102,evts="你的绩点很棒。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(EVT?[11077,11075,11076,11071,11072,11073,11074])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11103) ->
	#cfg_relife_event{id=11103,evts="你保研了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11102]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11104) ->
	#cfg_relife_event{id=11104,evts="你没抢到想选修的课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11105) ->
	#cfg_relife_event{id=11105,evts="你总是和室友去外面玩。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11106) ->
	#cfg_relife_event{id=11106,evts="你总是和室友在寝室打游戏。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[11077]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11107) ->
	#cfg_relife_event{id=11107,evts="你上课手机不离手。不过其他同学大多也是。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11108) ->
	#cfg_relife_event{id=11108,evts="你参加了志愿活动和社会实践。虽然是学分要求的。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11109) ->
	#cfg_relife_event{id=11109,evts="你挂了好几科。",attrs_change=[],is_rand_evt=,prev_conds="((EVT?[11105,11106])|(INT<4))&(EVT?[11077,11075,11076,11071,11072,11073,11074])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11110) ->
	#cfg_relife_event{id=11110,evts="你通过了英语和计算机等级考试。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11111) ->
	#cfg_relife_event{id=11111,evts="你一年内谈了三次恋爱。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11077,11075,11076,11071,11072,11073,11074,11069.11070])&(TLT?[1028])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11112) ->
	#cfg_relife_event{id=11112,evts="你和一个同班同学谈恋爱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11113) ->
	#cfg_relife_event{id=11113,evts="你一直没谈恋爱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11114) ->
	#cfg_relife_event{id=11114,evts="你的寝室总是有蟑螂蚊子。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11115) ->
	#cfg_relife_event{id=11115,evts="比起现实生活中的人，你更愿意和网友交流。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10993,10994,10995,10997,11001,11002,11003,11004]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11116) ->
	#cfg_relife_event{id=11116,evts="学校里总是有各种大佬的讲座可以听。",attrs_change=[[1,1]],is_rand_evt=,prev_conds="EVT?[11071,11072,11073,11074,11075,11076,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11117) ->
	#cfg_relife_event{id=11117,evts="学校里总是有各种名企来招人。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11071,11072,11073,11074,11075,11076,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11118) ->
	#cfg_relife_event{id=11118,evts="你的同学少有出生寒门，多是富二代、官二代、学二代。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11119) ->
	#cfg_relife_event{id=11119,evts="大佬云集，你感到自己仿佛不再那么出众。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11120) ->
	#cfg_relife_event{id=11120,evts="你的视野开阔了许多，很多想法都和在国内时不同。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11121) ->
	#cfg_relife_event{id=11121,evts="你很早就开始寻找和联系导师。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11122) ->
	#cfg_relife_event{id=11122,evts="你开始读研。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11103,11071,11072,11073,11074,11069,11070]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11123) ->
	#cfg_relife_event{id=11123,evts="你成为了打工人。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11124) ->
	#cfg_relife_event{id=11124,evts="你开始创业。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[11077,11075,11076,11071,11072,11073,11074])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11125) ->
	#cfg_relife_event{id=11125,evts="你开始考公务员。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11077,11075,11076,11071,11072,11073,11074]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11126) ->
	#cfg_relife_event{id=11126,evts="你没有考上公务员。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11025]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11127) ->
	#cfg_relife_event{id=11127,evts="你考上了公务员。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11025]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11128) ->
	#cfg_relife_event{id=11128,evts="你开始相亲。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11129) ->
	#cfg_relife_event{id=11129,evts="你看上了对方，但对方看不上你。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11130) ->
	#cfg_relife_event{id=11130,evts="对方看上了你，但你看不上对方。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11131) ->
	#cfg_relife_event{id=11131,evts="你开始处对象。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11132) ->
	#cfg_relife_event{id=11132,evts="你找不到对象，至今单身。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11129,11130]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11133) ->
	#cfg_relife_event{id=11133,evts="你996上班。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11134) ->
	#cfg_relife_event{id=11134,evts="国家宣布禁止强制996。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[11133]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11135) ->
	#cfg_relife_event{id=11135,evts="你的私人生活越来越少，工作成为了你生活的大部分。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11136) ->
	#cfg_relife_event{id=11136,evts="比起重复的每个工作日，你宁愿回到中学时光。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11137) ->
	#cfg_relife_event{id=11137,evts="即使下班，也总是有人问你工作上的问题。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11138) ->
	#cfg_relife_event{id=11138,evts="即使下班，晚上也经常有饭局，你的私人时间被进一步剥夺。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11139) ->
	#cfg_relife_event{id=11139,evts="你突然有些厌烦，你更怀念一个人的时候。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11123,11126])&(EVT?[11131])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11140) ->
	#cfg_relife_event{id=11140,evts="你们分了，又处了新对象。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11131]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11141) ->
	#cfg_relife_event{id=11141,evts="你天天摸鱼的工友升职加薪了，你有点怀疑人生。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11142) ->
	#cfg_relife_event{id=11142,evts="工位厕所里加了计时器和信号屏蔽器。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11143) ->
	#cfg_relife_event{id=11143,evts="年会上，你抽奖抽到一台iphoneZ。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11144) ->
	#cfg_relife_event{id=11144,evts="年会上，你抽到一张玛莎拉蒂5元代金券。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11145) ->
	#cfg_relife_event{id=11145,evts="年会上，你抽到少量现金。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11146) ->
	#cfg_relife_event{id=11146,evts="团建，公司找来PUA专家展开动员大会。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11147) ->
	#cfg_relife_event{id=11147,evts="普通的打工人生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11148) ->
	#cfg_relife_event{id=11148,evts="公司的一位领导因为涉嫌性侵被捕了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11149) ->
	#cfg_relife_event{id=11149,evts="公司的一位领导因为涉嫌经济犯罪被捕了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11150) ->
	#cfg_relife_event{id=11150,evts="规定出台要求强制双休。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11151) ->
	#cfg_relife_event{id=11151,evts="聊天时发现新来的员工工资普遍比你高。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11123,11126]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11152) ->
	#cfg_relife_event{id=11152,evts="paper日常。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11122]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11153) ->
	#cfg_relife_event{id=11153,evts="给导师打杂日常。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11122]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11154) ->
	#cfg_relife_event{id=11154,evts="你一天到晚泡在实验室里。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11122]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11155) ->
	#cfg_relife_event{id=11155,evts="你正式步入科研。",attrs_change=[],is_rand_evt=,prev_conds="(INT>7)&(MNY>2)&(EVT?[11122])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11156) ->
	#cfg_relife_event{id=11156,evts="paper日常。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11155]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11157) ->
	#cfg_relife_event{id=11157,evts="给导师打杂日常。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11155]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11158) ->
	#cfg_relife_event{id=11158,evts="当助教。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11155]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11159) ->
	#cfg_relife_event{id=11159,evts="辅导导师家小孩功课。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11155]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11160) ->
	#cfg_relife_event{id=11160,evts="实验日常。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11155]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11161) ->
	#cfg_relife_event{id=11161,evts="你的压力很大，你感觉自己可能不能如期毕业。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11155]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11162) ->
	#cfg_relife_event{id=11162,evts="你留校担任讲师。",attrs_change=[],is_rand_evt=,prev_conds="(INT>8)&(EVT?[11155])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11163) ->
	#cfg_relife_event{id=11163,evts="你前往一所普通高校当老师。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11155]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11164) ->
	#cfg_relife_event{id=11164,evts="安逸的铁饭碗生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11165) ->
	#cfg_relife_event{id=11165,evts="你下班回家经常做一些自己喜欢的事。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11166) ->
	#cfg_relife_event{id=11166,evts="你有很多空闲时间，经常看短视频和玩游戏消遣。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11167) ->
	#cfg_relife_event{id=11167,evts="你有很多空闲时间，经常看动画消遣。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11127])&(EVT?[10007,10008])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11168) ->
	#cfg_relife_event{id=11168,evts="你经常和密友小聚。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11169) ->
	#cfg_relife_event{id=11169,evts="清闲的小日子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11170) ->
	#cfg_relife_event{id=11170,evts="领导要给你介绍对象，你又不好拒绝，很尴尬。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11171) ->
	#cfg_relife_event{id=11171,evts="你结婚了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11172) ->
	#cfg_relife_event{id=11172,evts="你创业失败。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11173) ->
	#cfg_relife_event{id=11173,evts="你得到了亲友的很多人脉支持。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11174) ->
	#cfg_relife_event{id=11174,evts="你开了一家互联网公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11175) ->
	#cfg_relife_event{id=11175,evts="你开了一家金融公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11176) ->
	#cfg_relife_event{id=11176,evts="你开了一家二次元公司。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11124])&(EVT?[10007,10008])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11177) ->
	#cfg_relife_event{id=11177,evts="你开了一家实业公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11178) ->
	#cfg_relife_event{id=11178,evts="你开了一家新技术产业公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11179) ->
	#cfg_relife_event{id=11179,evts="你创业过程中结识了许多大佬。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11180) ->
	#cfg_relife_event{id=11180,evts="你了解了很多行业潜规则。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11181) ->
	#cfg_relife_event{id=11181,evts="你的公司福利待遇很好。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11182) ->
	#cfg_relife_event{id=11182,evts="你很努力和员工一起奋斗在一线，拿和普通员工一样的钱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11183) ->
	#cfg_relife_event{id=11183,evts="人民企业家艰苦创业的日子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11184) ->
	#cfg_relife_event{id=11184,evts="虚拟现实技术得到突破，开始爆发式增长。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11185) ->
	#cfg_relife_event{id=11185,evts="我国可控核聚变技术有所突破，离成功不远了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11186) ->
	#cfg_relife_event{id=11186,evts="人造肉在西方迅速流行。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11187) ->
	#cfg_relife_event{id=11187,evts="电视机逐渐淡出历史舞台。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11188) ->
	#cfg_relife_event{id=11188,evts="全球生育率再创新低。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11189) ->
	#cfg_relife_event{id=11189,evts="你养了一条鱼。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11190) ->
	#cfg_relife_event{id=11190,evts="你养了一只鸟。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11191) ->
	#cfg_relife_event{id=11191,evts="你养了一只乌龟。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11192) ->
	#cfg_relife_event{id=11192,evts="你养了一只仓鼠。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11193) ->
	#cfg_relife_event{id=11193,evts="你养了一只猫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11194) ->
	#cfg_relife_event{id=11194,evts="你养了一只狗。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11195) ->
	#cfg_relife_event{id=11195,evts="你养了一只守宫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11196) ->
	#cfg_relife_event{id=11196,evts="中国成功登月。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11197) ->
	#cfg_relife_event{id=11197,evts="我国首次夺得奥运奖牌榜奖牌总数第一。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11198) ->
	#cfg_relife_event{id=11198,evts="为减轻生育负担，国家出台多项政策。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11199) ->
	#cfg_relife_event{id=11199,evts="我国宣布建成社会主义现代化强国。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11200) ->
	#cfg_relife_event{id=11200,evts="我国人均GDP超过韩国。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127,11123,11126,11122,11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11201) ->
	#cfg_relife_event{id=11201,evts="你的专辑《暗线》登顶。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11202) ->
	#cfg_relife_event{id=11202,evts="你没有时间上课，时间表安排得很满。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11203) ->
	#cfg_relife_event{id=11203,evts="你的团队开始帮助你艹粉。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11204) ->
	#cfg_relife_event{id=11204,evts="你在一次拍戏过程中意外身故。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11205) ->
	#cfg_relife_event{id=11205,evts="你在一次拍戏过程中划破了手指，上了微博热搜。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11206) ->
	#cfg_relife_event{id=11206,evts="有网民造你的谣，你发了律师函。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11207) ->
	#cfg_relife_event{id=11207,evts="努力的演艺生涯。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11208) ->
	#cfg_relife_event{id=11208,evts="你经常在贴吧上吹水。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<7)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11209) ->
	#cfg_relife_event{id=11209,evts="你经常玩soul和小红书。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11210) ->
	#cfg_relife_event{id=11210,evts="你经常用微博。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11211) ->
	#cfg_relife_event{id=11211,evts="你经常用知乎。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11212) ->
	#cfg_relife_event{id=11212,evts="你经常用豆瓣。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11213) ->
	#cfg_relife_event{id=11213,evts="你的爷爷去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11214) ->
	#cfg_relife_event{id=11214,evts="你的奶奶去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11215) ->
	#cfg_relife_event{id=11215,evts="你的外公去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11216) ->
	#cfg_relife_event{id=11216,evts="你的外婆去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11217) ->
	#cfg_relife_event{id=11217,evts="父亲因车祸去世。",attrs_change=[[3,-2],[4,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11218) ->
	#cfg_relife_event{id=11218,evts="母亲突发心脏病去世。",attrs_change=[[3,-1],[4,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11219) ->
	#cfg_relife_event{id=11219,evts="你遭遇车祸去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11220) ->
	#cfg_relife_event{id=11220,evts="你突发心脏病去世。",attrs_change=[],is_rand_evt=,prev_conds="(STR<2)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11221) ->
	#cfg_relife_event{id=11221,evts="你位列年度艺人排行第3。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11222) ->
	#cfg_relife_event{id=11222,evts="你名列年度福布斯十大中国名人。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11223) ->
	#cfg_relife_event{id=11223,evts="有讨厌的私生饭影响你的生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11224) ->
	#cfg_relife_event{id=11224,evts="很多名牌都来找你拍广告。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11225) ->
	#cfg_relife_event{id=11225,evts="你养了一只价值数十万的猫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11226) ->
	#cfg_relife_event{id=11226,evts="你买了几辆数百万、上千万的豪车。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11227) ->
	#cfg_relife_event{id=11227,evts="你买了一栋大别墅，一套汤臣一品。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11228) ->
	#cfg_relife_event{id=11228,evts="国家开始打击娱乐圈。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11229) ->
	#cfg_relife_event{id=11229,evts="有明星因犯罪入狱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10966]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11230) ->
	#cfg_relife_event{id=11230,evts="你因涉嫌性侵被捕。",attrs_change=[[3,-5]],is_rand_evt=,prev_conds="EVT?[11203]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11231) ->
	#cfg_relife_event{id=11231,evts="你被判十年监禁，正式入狱。",attrs_change=[[2,-2],[4,-5]],is_rand_evt=,prev_conds="EVT?[11230]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11232) ->
	#cfg_relife_event{id=11232,evts="枯燥的监狱生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11230]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11233) ->
	#cfg_relife_event{id=11233,evts="你出狱了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11230]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11234) ->
	#cfg_relife_event{id=11234,evts="你减刑提前出狱。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11230])&(TLT?[1117])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11235) ->
	#cfg_relife_event{id=11235,evts="世界的变化很大，你无所适从。",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="EVT?[11233,11234]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11236) ->
	#cfg_relife_event{id=11236,evts="你找了份普通工作勉强度日。",attrs_change=[[2,-1],[3,-1]],is_rand_evt=,prev_conds="EVT?[11235]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11237) ->
	#cfg_relife_event{id=11237,evts="你的事业遭受沉重打击，热度不复从前。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[11229]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11238) ->
	#cfg_relife_event{id=11238,evts="你急流勇退，转居幕后，运营公司。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11229]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11239) ->
	#cfg_relife_event{id=11239,evts="你怀孕了，公司找借口把你辞退了。",attrs_change=[[3,-1],[4,-1]],is_rand_evt=,prev_conds="(EVT?[11123,11126])&(EVT?[11171])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11240) ->
	#cfg_relife_event{id=11240,evts="你们的孩子出生了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171,11093]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11241) ->
	#cfg_relife_event{id=11241,evts="你们的二胎出生了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11242) ->
	#cfg_relife_event{id=11242,evts="你们的二胎出生了。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11240])&(TLT?[1113])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11243) ->
	#cfg_relife_event{id=11243,evts="你们的三胎出生了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11241,11242]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11244) ->
	#cfg_relife_event{id=11244,evts="你们的三胎出生了。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11241,11242])&(TLT?[1113])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11245) ->
	#cfg_relife_event{id=11245,evts="照顾小孩非常麻烦。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11246) ->
	#cfg_relife_event{id=11246,evts="你的生活被孩子占据了大半。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11247) ->
	#cfg_relife_event{id=11247,evts="你为孩子计划未来。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11248) ->
	#cfg_relife_event{id=11248,evts="工作很忙，你很难有时间照顾孩子。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11123,11126])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11249) ->
	#cfg_relife_event{id=11249,evts="公司占据了你的私人家庭时间，但你无能为力。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11123,11126])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11250) ->
	#cfg_relife_event{id=11250,evts="你的科研产出被家庭事务束缚。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11162,11163])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11251) ->
	#cfg_relife_event{id=11251,evts="你觉得和孩子打交道比实验和论文难多了。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11162,11163])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11252) ->
	#cfg_relife_event{id=11252,evts="你将一套房产划到孩子名下。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11124])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11253) ->
	#cfg_relife_event{id=11253,evts="你像你父母一样给了孩子最丰厚的条件。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11124])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11254) ->
	#cfg_relife_event{id=11254,evts="你经常陪孩子玩。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11127])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11255) ->
	#cfg_relife_event{id=11255,evts="你给孩子买了很多玩具。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11127])&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11256) ->
	#cfg_relife_event{id=11256,evts="你财务自由，退居幕后。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11257) ->
	#cfg_relife_event{id=11257,evts="你的父亲去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11258) ->
	#cfg_relife_event{id=11258,evts="你的母亲去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11259) ->
	#cfg_relife_event{id=11259,evts="你当上了副教授。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11162,11163]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11260) ->
	#cfg_relife_event{id=11260,evts="你当上了正教授。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11259]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11261) ->
	#cfg_relife_event{id=11261,evts="同学笑你是怪物。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(EVT?[10110,10111])&(EVT?[10009,10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11262) ->
	#cfg_relife_event{id=11262,evts="你常常因为性别而遭受暴力和冷暴力。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="(EVT?[10110,10111])&(EVT?[10009,10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11263) ->
	#cfg_relife_event{id=11263,evts="可控核聚变技术实现。全球迅速向无限能源时代转变。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11264) ->
	#cfg_relife_event{id=11264,evts="航天技术取得巨大突破。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11265) ->
	#cfg_relife_event{id=11265,evts="你前往太空旅行。",attrs_change=[],is_rand_evt=,prev_conds="(STR>6)&(MNY>8)&(EVT?[11264,11263])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11266) ->
	#cfg_relife_event{id=11266,evts="你前往月球旅行。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11266]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11267) ->
	#cfg_relife_event{id=11267,evts="你前往火星旅行。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11267]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11268) ->
	#cfg_relife_event{id=11268,evts="你在太空旅行中意外身亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11264]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11269) ->
	#cfg_relife_event{id=11269,evts="生产资料所有制正在深刻改变，许多国家向社会主义国家过渡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11270) ->
	#cfg_relife_event{id=11270,evts="专家声称燃料是资本主义社会的基础，可控核聚变是共产主义社会的基础。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11271) ->
	#cfg_relife_event{id=11271,evts="各个产业都取得了巨大的突破，一年的进步顶过去10年。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11272) ->
	#cfg_relife_event{id=11272,evts="电力彻底免费。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11273) ->
	#cfg_relife_event{id=11273,evts="你的公司制造出可植入大脑的芯片。可以显著提升人类记忆力。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11124])&(EVT?[11263])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11274) ->
	#cfg_relife_event{id=11274,evts="你研发出可植入大脑的芯片。可以直接将知识信息植入大脑。",attrs_change=[[1,2]],is_rand_evt=,prev_conds="(EVT?[11162,11163])&(EVT?[11263])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11275) ->
	#cfg_relife_event{id=11275,evts="社会内卷程度大幅降低，全球全面小康。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[11263]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11276) ->
	#cfg_relife_event{id=11276,evts="你和一个学生发生激烈争执。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11162,11163]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21276) ->
	#cfg_relife_event{id=21276,evts="学生掏出小刀捅了你。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11277) ->
	#cfg_relife_event{id=11277,evts="因为你颜值过高，有个嫉妒的人突然从天而降把你杀了。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>9)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11278) ->
	#cfg_relife_event{id=11278,evts="你被一个骗子骗得倾家荡产。",attrs_change=[[3,-5],[4,-5]],is_rand_evt=,prev_conds="(INT<2)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11279) ->
	#cfg_relife_event{id=11279,evts="你升官了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11280) ->
	#cfg_relife_event{id=11280,evts="你经常在网上晒生活。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>4)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11281) ->
	#cfg_relife_event{id=11281,evts="Web3.0时代完全到来。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11282) ->
	#cfg_relife_event{id=11282,evts="6G信号覆盖全球大多数地区。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11283) ->
	#cfg_relife_event{id=11283,evts="手机消亡了，取而代之的是全息投影。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11284) ->
	#cfg_relife_event{id=11284,evts="据说传送装置正在研制中。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11271]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11285) ->
	#cfg_relife_event{id=11285,evts="人造食物火遍全球。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11286) ->
	#cfg_relife_event{id=11286,evts="你的生活日新月异，感觉时代飞速前进着。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263,11281,11282,11283,11285]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11287) ->
	#cfg_relife_event{id=11287,evts="虚拟现实技术取得巨大突破。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11272,11184]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11288) ->
	#cfg_relife_event{id=11288,evts="第一个可真实进入的虚拟世界出现了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11287]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11289) ->
	#cfg_relife_event{id=11289,evts="你终日沉迷在虚拟世界之中。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<9)&(EVT?[11288])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11290) ->
	#cfg_relife_event{id=11290,evts="你依靠生命维持装置活着。所有时间都在虚拟中度过。",attrs_change=[[1,-1],[2,-1],[4,1]],is_rand_evt=,prev_conds="EVT?[11289]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11291) ->
	#cfg_relife_event{id=11291,evts="外界一年，虚拟世界中十年。",attrs_change=[[1,-1],[2,-1],[4,1]],is_rand_evt=,prev_conds="EVT?[11290]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11292) ->
	#cfg_relife_event{id=11292,evts="你开始投资搞虚拟现实。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>8)&(EVT?[11288])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11293) ->
	#cfg_relife_event{id=11293,evts="“虚拟瘾”者们失去了现实竞争力，各项能力逐渐退化。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11292]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11294) ->
	#cfg_relife_event{id=11294,evts="你离婚了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11295) ->
	#cfg_relife_event{id=11295,evts="你的爱人去世了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11296) ->
	#cfg_relife_event{id=11296,evts="高超的洞察力使你发现：现实世界是虚拟的。",attrs_change=[],is_rand_evt=,prev_conds="(INT>10)&(EVT?[11288])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21296) ->
	#cfg_relife_event{id=21296,evts="突然，时间停止了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21297) ->
	#cfg_relife_event{id=21297,evts="你向下方跑，想要逃离这个世界。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21298) ->
	#cfg_relife_event{id=21298,evts="跑",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21299) ->
	#cfg_relife_event{id=21299,evts="         跑",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21300) ->
	#cfg_relife_event{id=21300,evts="                    跑",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21301) ->
	#cfg_relife_event{id=21301,evts="            跑",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21302) ->
	#cfg_relife_event{id=21302,evts="   跑",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21303) ->
	#cfg_relife_event{id=21303,evts="             跑",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21304) ->
	#cfg_relife_event{id=21304,evts="                        跑 ",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21305) ->
	#cfg_relife_event{id=21305,evts="你的行为终于触发了这个满是BUG的虚拟世界的防卫机制。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21304]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21306) ->
	#cfg_relife_event{id=21306,evts="世界开始对你做出审判。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21307) ->
	#cfg_relife_event{id=21307,evts="你相貌还可以，世界决定抹去你这段记忆让你继续生活。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21308) ->
	#cfg_relife_event{id=21308,evts="你相貌不行，世界决定消灭你。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11297) ->
	#cfg_relife_event{id=11297,evts="我国进入共产主义社会。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11298) ->
	#cfg_relife_event{id=11298,evts="第三次世界大战爆发。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11299) ->
	#cfg_relife_event{id=11299,evts="超级核战争，世界毁灭了。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11263])&(EVT?[11298])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11300) ->
	#cfg_relife_event{id=11300,evts="探索飞船发现了有低等生命的地外行星。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11264]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11301) ->
	#cfg_relife_event{id=11301,evts="人类派遣船队去地外行星进行改造工作，便于未来殖民。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11300]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11302) ->
	#cfg_relife_event{id=11302,evts="科学家声称外星上可能有未知的致命细菌或病毒，去了就不可贸然返回。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11300]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11303) ->
	#cfg_relife_event{id=11303,evts="人类又发现另外三个有生命的地外行星。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11300]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11304) ->
	#cfg_relife_event{id=11304,evts="有外星人乘飞船来到地球想要占领地球，却不知被谁瞬间消灭。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11300]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11305) ->
	#cfg_relife_event{id=11305,evts="癌症被攻克了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11306) ->
	#cfg_relife_event{id=11306,evts="你因为癌症去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11307) ->
	#cfg_relife_event{id=11307,evts="你重重摔了一跤。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11308) ->
	#cfg_relife_event{id=11308,evts="你的身体状况越来越差。",attrs_change=[[2,-1]],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11309) ->
	#cfg_relife_event{id=11309,evts="你得了不治之症去世。",attrs_change=[],is_rand_evt=,prev_conds="(STR<3)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11310) ->
	#cfg_relife_event{id=11310,evts="你在睡梦中安然离世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11311) ->
	#cfg_relife_event{id=11311,evts="你的孩子去世。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11312) ->
	#cfg_relife_event{id=11312,evts="你被人谋杀了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11124]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11313) ->
	#cfg_relife_event{id=11313,evts="你因抑郁症去世。",attrs_change=[],is_rand_evt=,prev_conds="(SPR<2)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11314) ->
	#cfg_relife_event{id=11314,evts="你意外落水身亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11315) ->
	#cfg_relife_event{id=11315,evts="世界大战结束了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11298]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11316) ->
	#cfg_relife_event{id=11316,evts="充满各种几乎没有成本的娱乐的老年生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263,11281,11282,11283,11285]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11317) ->
	#cfg_relife_event{id=11317,evts="和儿时相比，世界早已改天换地。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11318) ->
	#cfg_relife_event{id=11318,evts="你因为受贿被逮捕。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11127]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11319) ->
	#cfg_relife_event{id=11319,evts="因数额巨大，你被判处终身监禁。",attrs_change=[[3,-5],[4,-5]],is_rand_evt=,prev_conds="EVT?[11318]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11320) ->
	#cfg_relife_event{id=11320,evts="监狱生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11319]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11321) ->
	#cfg_relife_event{id=11321,evts="你获得了减刑，提前出狱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11320]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11322) ->
	#cfg_relife_event{id=11322,evts="你获得了减刑，提前出狱。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11320])&(TLT?[1117])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11323) ->
	#cfg_relife_event{id=11323,evts="你在狱中被人打死。",attrs_change=[],is_rand_evt=,prev_conds="(STR<6)&(EVT?[11320])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11324) ->
	#cfg_relife_event{id=11324,evts="你因病去世。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11320]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11325) ->
	#cfg_relife_event{id=11325,evts="有一个按钮，按下去后你能得到大量金钱，但人类在1000年内会灭亡。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21315) ->
	#cfg_relife_event{id=21315,evts="你按了。你获得了大量金钱。",attrs_change=[[3,3]],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11326) ->
	#cfg_relife_event{id=11326,evts="科学家发现，有一颗直径20千米的小行星可能在990年后接近地球。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21315]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11327) ->
	#cfg_relife_event{id=11327,evts="科学家认为一颗距离我们32光年的红超巨星将在100万年内爆发。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21315]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11328) ->
	#cfg_relife_event{id=11328,evts="出现了可以在虚拟世界中创造虚拟世界的虚拟游戏。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11287]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11329) ->
	#cfg_relife_event{id=11329,evts="你一天有半数时间泡在虚拟世界中。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11287]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11330) ->
	#cfg_relife_event{id=11330,evts="交通彻底免费了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11263]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11331) ->
	#cfg_relife_event{id=11331,evts="你去世界各地旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11330]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11332) ->
	#cfg_relife_event{id=11332,evts="你定居空间站。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11265]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11333) ->
	#cfg_relife_event{id=11333,evts="你定居月球。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11266]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11334) ->
	#cfg_relife_event{id=11334,evts="你定居火星。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11267]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11335) ->
	#cfg_relife_event{id=11335,evts="▓#▓……*▓▓▓⊙▓&▓▓▓▓￥（▓▓▓*-+▓▓",attrs_change=[[1,-1],[2,1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11336) ->
	#cfg_relife_event{id=11336,evts="▓▓▓▓▓▓▓&……▓↖▓▓▓▓▓&*￥▓∞▓▓▓▓",attrs_change=[[1,-1],[3,1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11337) ->
	#cfg_relife_event{id=11337,evts="▓▓▓▓*▓*▓▓&▓^▓^▓▓▓▓⊙▓▓▓▓▓&",attrs_change=[[1,-1],[4,1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11338) ->
	#cfg_relife_event{id=11338,evts="￥%▓▓▓∞▓▓▓▓▓▓▓（（**",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11339) ->
	#cfg_relife_event{id=11339,evts="▓￥@∞▓▓▓▓╱╲▓↖▓▓▓▓▓▓@@▓▓▓▓",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11340) ->
	#cfg_relife_event{id=11340,evts="▓▓▓▓▓▓▓▓▓▓▓▓……&*%+-*",attrs_change=[[1,-1],[2,2]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11341) ->
	#cfg_relife_event{id=11341,evts="▓》《▓▓▓▓▓▓▓▓▓》》▓",attrs_change=[[1,-1],[3,2]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11342) ->
	#cfg_relife_event{id=11342,evts="▓▓▓“{}|▓▓▓▓▓▓—▓▓▓▓&",attrs_change=[[1,-1],[4,2]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11343) ->
	#cfg_relife_event{id=11343,evts="：▓▓▓：∞▓▓▓▓▓▓……╱╲▓▓▓▓》",attrs_change=[[1,-1],[2,3]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11344) ->
	#cfg_relife_event{id=11344,evts="▓▓▓▓▓▓▓▓▓！~▓！▓+▓=▓‘",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11345) ->
	#cfg_relife_event{id=11345,evts="；’▓╱╲，▓Й*-▓▓▓",attrs_change=[[1,-1],[3,3]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11346) ->
	#cfg_relife_event{id=11346,evts="；【▓】▁▂▃▓▓▓▓▓▓▓▓、、▓▓▓▓▓？",attrs_change=[[1,-1],[4,3]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11347) ->
	#cfg_relife_event{id=11347,evts="▁▂▃▄▅▆▇█▇▆▅▄▃▂▁",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11348) ->
	#cfg_relife_event{id=11348,evts="★☆↑◎¤★☆◎↑¤★☆◎¤◎↑¤★☆↑",attrs_change=[[1,-1]],is_rand_evt=,prev_conds="TLT?[1128]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11349) ->
	#cfg_relife_event{id=11349,evts="你没有这段记忆。",attrs_change=[],is_rand_evt=,prev_conds="TLT?[1129]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11350) ->
	#cfg_relife_event{id=11350,evts="婚后你的丈夫没有之前对你那么好了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11351) ->
	#cfg_relife_event{id=11351,evts="家务几乎全是你在干。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11352) ->
	#cfg_relife_event{id=11352,evts="丈夫和你见面的时间越来越少。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11353) ->
	#cfg_relife_event{id=11353,evts="结婚周年纪念日，丈夫给了你一个红包，没有准备礼物。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11354) ->
	#cfg_relife_event{id=11354,evts="你和婆婆吵架，丈夫站在婆婆那边。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11355) ->
	#cfg_relife_event{id=11355,evts="你怀疑丈夫有外遇。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11356) ->
	#cfg_relife_event{id=11356,evts="你经常在一个群里和大家一起吐槽婚后生活。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11357) ->
	#cfg_relife_event{id=11357,evts="你的丈夫对你始终如一。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11358) ->
	#cfg_relife_event{id=11358,evts="结婚周年纪念日，你们一家出去旅游。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11359) ->
	#cfg_relife_event{id=11359,evts="丈夫的父母通情达理，和你关系如同朋友。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11360) ->
	#cfg_relife_event{id=11360,evts="闺蜜向你吐槽她的丈夫多么不好。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11361) ->
	#cfg_relife_event{id=11361,evts="丈夫做了大多数家务，做菜还特别好吃。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11362) ->
	#cfg_relife_event{id=11362,evts="丈夫特别尊重你的意见，大多数家事都请你做决定。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11363) ->
	#cfg_relife_event{id=11363,evts="每天睡前你们都会聊很长时间的天。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11364) ->
	#cfg_relife_event{id=11364,evts="很少有时间陪伴家人，你有些愧疚。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11365) ->
	#cfg_relife_event{id=11365,evts="你的妻子把行动不便的父母接到你们家里住。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11366) ->
	#cfg_relife_event{id=11366,evts="你每月都上缴工资给妻子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11367) ->
	#cfg_relife_event{id=11367,evts="你们家的生活费采用AA。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11368) ->
	#cfg_relife_event{id=11368,evts="自从结婚后，你上网和娱乐时间越来越少了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11369) ->
	#cfg_relife_event{id=11369,evts="你无微不至地照顾照顾妻子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11370) ->
	#cfg_relife_event{id=11370,evts="你和妻子之间更像是朋友。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11371) ->
	#cfg_relife_event{id=11371,evts="妻子的一个亲戚沉迷赌博，骗了她娘家不少钱。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11372) ->
	#cfg_relife_event{id=11372,evts="妻子的父亲去世，继承了一些遗产。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="EVT?[11365]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11373) ->
	#cfg_relife_event{id=11373,evts="婚前的彩礼全部用于运营你们的小家。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11374) ->
	#cfg_relife_event{id=11374,evts="你考了驾照。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11375) ->
	#cfg_relife_event{id=11375,evts="妻子经常和你一起看动画。",attrs_change=[],is_rand_evt=,prev_conds="(EVT?[11171])&(EVT?[10007,10008])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11376) ->
	#cfg_relife_event{id=11376,evts="你经常和妻子一起看综艺和电视剧。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11171]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11377) ->
	#cfg_relife_event{id=11377,evts="孩子的健康状况不太好，你们家操碎了心。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11378) ->
	#cfg_relife_event{id=11378,evts="可能是遗传你，孩子不大聪明的样子。",attrs_change=[],is_rand_evt=,prev_conds="(INT<4)&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11379) ->
	#cfg_relife_event{id=11379,evts="可能是遗传你，孩子非常聪明。",attrs_change=[],is_rand_evt=,prev_conds="(INT>6)&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11380) ->
	#cfg_relife_event{id=11380,evts="可能是遗传你，孩子不大好看。",attrs_change=[],is_rand_evt=,prev_conds="(CHR<4)&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11381) ->
	#cfg_relife_event{id=11381,evts="可能是遗传你，孩子非常好看。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>6)&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11382) ->
	#cfg_relife_event{id=11382,evts="孩子不小心烫伤了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11383) ->
	#cfg_relife_event{id=11383,evts="孩子得了重病，家里花了很多钱。",attrs_change=[[3,-1]],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11384) ->
	#cfg_relife_event{id=11384,evts="你第一次揍孩子。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11385) ->
	#cfg_relife_event{id=11385,evts="你们带着孩子一起旅游。",attrs_change=[[4,1]],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11386) ->
	#cfg_relife_event{id=11386,evts="为孩子准备升学考试，家里更忙了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11387) ->
	#cfg_relife_event{id=11387,evts="孩子在学校闯祸了，你去挨老师批评。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11388) ->
	#cfg_relife_event{id=11388,evts="孩子成绩退步了，你决定切断孩子的一切娱乐活动。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11389) ->
	#cfg_relife_event{id=11389,evts="学校不允许排成绩，但你还是设法弄到了排名。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11390) ->
	#cfg_relife_event{id=11390,evts="孩子的英语出奇的好。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11391) ->
	#cfg_relife_event{id=11391,evts="孩子喜欢上了看动漫。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11392) ->
	#cfg_relife_event{id=11392,evts="孩子在学校早恋，你十分生气。",attrs_change=[[4,-1]],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11393) ->
	#cfg_relife_event{id=11393,evts="孩子的成绩进步了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11394) ->
	#cfg_relife_event{id=11394,evts="政府宣布禁止开办补习班。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11395) ->
	#cfg_relife_event{id=11395,evts="政府发文件要求学校放学不得晚于下午5点。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11396) ->
	#cfg_relife_event{id=11396,evts="教育体系对体育越发重视，你们经常要抽时间带孩子去运动。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11240]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11397) ->
	#cfg_relife_event{id=11397,evts="参加家长会，你的颜值震惊全场，直接有家长要你的联系方式。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>8)&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11398) ->
	#cfg_relife_event{id=11398,evts="你的智慧指导孩子功课绰绰有余。",attrs_change=[],is_rand_evt=,prev_conds="(INT>6)&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11399) ->
	#cfg_relife_event{id=11399,evts="你发现孩子学的东西连你都不会。",attrs_change=[],is_rand_evt=,prev_conds="(INT<4)&(EVT?[11240])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11400) ->
	#cfg_relife_event{id=11400,evts="你的家庭越来越困难，温饱都成问题。",attrs_change=[],is_rand_evt=,prev_conds="(MNY<3)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11401) ->
	#cfg_relife_event{id=11401,evts="你买彩票中了奖。家境回暖。",attrs_change=[[3,1]],is_rand_evt=,prev_conds="(MNY<3)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11402) ->
	#cfg_relife_event{id=11402,evts="因为很有钱，总是有人和你家攀亲戚。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11403) ->
	#cfg_relife_event{id=11403,evts="总是有人找你借钱。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>5)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11404) ->
	#cfg_relife_event{id=11404,evts="你感觉自己的知识有些跟不上时代。",attrs_change=[],is_rand_evt=,prev_conds="(INT<4)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11405) ->
	#cfg_relife_event{id=11405,evts="你总是能跟上时代的潮流。",attrs_change=[],is_rand_evt=,prev_conds="(INT>6)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11406) ->
	#cfg_relife_event{id=11406,evts="你的健康状况非常不好。",attrs_change=[],is_rand_evt=,prev_conds="(STR<3)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11407) ->
	#cfg_relife_event{id=11407,evts="你的精神状况非常不好。",attrs_change=[],is_rand_evt=,prev_conds="(SPR<3)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11408) ->
	#cfg_relife_event{id=11408,evts="你依然和年轻时一样强壮。",attrs_change=[],is_rand_evt=,prev_conds="(STR>7)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11409) ->
	#cfg_relife_event{id=11409,evts="有健美杂志找你做模特。",attrs_change=[],is_rand_evt=,prev_conds="(STR>8)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11410) ->
	#cfg_relife_event{id=11410,evts="你家买了最新款的飞车。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>7)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11411) ->
	#cfg_relife_event{id=11411,evts="你家里家具设施弄了全套物联网。",attrs_change=[],is_rand_evt=,prev_conds="(MNY>5)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11412) ->
	#cfg_relife_event{id=11412,evts="总有人问你是不是整过容。",attrs_change=[],is_rand_evt=,prev_conds="(CHR>7)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11413) ->
	#cfg_relife_event{id=11413,evts="因为相貌不佳，生活中平添了不少麻烦。",attrs_change=[],is_rand_evt=,prev_conds="(CHR<4)&(EVT?[10010])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11414) ->
	#cfg_relife_event{id=11414,evts="生物学家突破性完成了猫狗杂交实验。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11415) ->
	#cfg_relife_event{id=11415,evts="反环保团体在西方国家游行。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11416) ->
	#cfg_relife_event{id=11416,evts="美国掀起第四次女性主义浪潮。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11417) ->
	#cfg_relife_event{id=11417,evts="一位哲学家开辟了虚拟主义哲学，从世界是虚拟游戏为起点建构了整个体系。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11418) ->
	#cfg_relife_event{id=11418,evts="国家统一全国户口。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11419) ->
	#cfg_relife_event{id=11419,evts="国家进一步推出限制未成年人消费的法案。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11420) ->
	#cfg_relife_event{id=11420,evts="生物学家宣称，因为人类过于依赖人造工具，人类天生的工具眼耳手脚等已经停止进化了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11421) ->
	#cfg_relife_event{id=11421,evts="为保护言论自由，国家发文禁止媒体设置“评论精选”功能。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11422) ->
	#cfg_relife_event{id=11422,evts="学者研究发现，人的意识可能是模因复制过程中的副产物。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11423) ->
	#cfg_relife_event{id=11423,evts="美国为保护人权，禁止出版以“他人的出丑或不幸”作为笑点的作品。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11424) ->
	#cfg_relife_event{id=11424,evts="调查显示，84%的人认为自己的颜值是“中上”。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11425) ->
	#cfg_relife_event{id=11425,evts="调查显示，50%的人认为自己比大多数人多点儿小聪明，另外30%的人认为自己的智商显著优于身边的人。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11426) ->
	#cfg_relife_event{id=11426,evts="调查显示，75%的人认为自己的人品好过绝大多数人。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11427) ->
	#cfg_relife_event{id=11427,evts="你前两年开始使用的一个小众线上社交平台，现在突然火了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11428) ->
	#cfg_relife_event{id=11428,evts="一位社会学家发表《人类永生时代的社会学》，引起轰动。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11429) ->
	#cfg_relife_event{id=11429,evts="有研究表明，历史上所有的生命都可以算成一个个体的一部分。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11430) ->
	#cfg_relife_event{id=11430,evts="诺贝尔奖停办了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11431) ->
	#cfg_relife_event{id=11431,evts="欧盟合并成了一个国家。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11432) ->
	#cfg_relife_event{id=11432,evts="印度成为了联合国第六常。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11433) ->
	#cfg_relife_event{id=11433,evts="联合国解散了。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11434) ->
	#cfg_relife_event{id=11434,evts="朝鲜统一韩国。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11435) ->
	#cfg_relife_event{id=11435,evts="教师行业越来越受到重视，教师工资显著提高。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11436) ->
	#cfg_relife_event{id=11436,evts="国家宣布演员歌手收入需按工资发放，且不得超过当地公务员平均工资的三倍。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11437) ->
	#cfg_relife_event{id=11437,evts="动物保护组织游行，宣传放猫狗宠物自由。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11438) ->
	#cfg_relife_event{id=11438,evts="肉食主义者游行抗议没有纯肉餐厅。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11439) ->
	#cfg_relife_event{id=11439,evts="世界第一个八星级酒店在空间站建成。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11440) ->
	#cfg_relife_event{id=11440,evts="广州出现十几平方公里大的巨型蟑螂。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11441) ->
	#cfg_relife_event{id=11441,evts="某游戏公司向教会出资，将圣经中的“诺亚”冠名成“明日”。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11442) ->
	#cfg_relife_event{id=11442,evts="有学者预言：22世纪是生物的世纪。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11443) ->
	#cfg_relife_event{id=11443,evts="由于“缩写效应”，汉语已经简化为纯字母语言。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11444) ->
	#cfg_relife_event{id=11444,evts="美国将小学入学年龄推迟到10-12岁。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11445) ->
	#cfg_relife_event{id=11445,evts="本地一醉酒男子路边被人侵犯，媒体称原因是其衣着暴露。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11446) ->
	#cfg_relife_event{id=11446,evts="无声音乐开始流行。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11447) ->
	#cfg_relife_event{id=11447,evts="生育率仍在下降，国家取消了父母生育前需要考试的规定。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11448) ->
	#cfg_relife_event{id=11448,evts="物理学家发现地球可能真的是宇宙的中心。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11449) ->
	#cfg_relife_event{id=11449,evts="前领导人打破最长寿的人吉尼斯纪录。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11450) ->
	#cfg_relife_event{id=11450,evts="一颗小行星即将击中地球时突然折返离开。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[10010]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11451) ->
	#cfg_relife_event{id=11451,evts="你使用魔法棒，变身成了魔法少女。",attrs_change=[[2,80]],is_rand_evt=,prev_conds="(TLT?[1131])&(EVT?[10002])&(EVT?[10007,10008])",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11452) ->
	#cfg_relife_event{id=11452,evts="你和人类看不见的怪物战斗。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11451]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11453) ->
	#cfg_relife_event{id=11453,evts="你守护着这个星球。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11451]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11454) ->
	#cfg_relife_event{id=11454,evts="你不再是少女，魔法棒离开了你寻找下一个主人。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11451]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11455) ->
	#cfg_relife_event{id=11455,evts="你和侵入地球的银河帝王战斗。它十分强大。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11456]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11456) ->
	#cfg_relife_event{id=11456,evts="一个外星人来地球宣称要统治地球，被你秒杀。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11451]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11457) ->
	#cfg_relife_event{id=11457,evts="你遭到了触手女王的攻击。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[11451]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(21457) ->
	#cfg_relife_event{id=21457,evts="你意志力不足，被诱导恶堕了。",attrs_change=[],is_rand_evt=1,prev_conds="",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11458) ->
	#cfg_relife_event{id=11458,evts="你在地球上肆意破坏。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11459) ->
	#cfg_relife_event{id=11459,evts="你引诱其他魔法少女恶堕。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11460) ->
	#cfg_relife_event{id=11460,evts="你摧毁了美国。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11461) ->
	#cfg_relife_event{id=11461,evts="你摧毁了英国。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11462) ->
	#cfg_relife_event{id=11462,evts="法国臣服在你裙下。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11463) ->
	#cfg_relife_event{id=11463,evts="你消灭了日本所有的男性。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11464) ->
	#cfg_relife_event{id=11464,evts="你摧毁了俄罗斯。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11465) ->
	#cfg_relife_event{id=11465,evts="你遭遇了一个强大的魔法少女。",attrs_change=[[2,88]],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11466) ->
	#cfg_relife_event{id=11466,evts="一个会飞的人对你出手，他称自己是筑基期修士。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(11467) ->
	#cfg_relife_event{id=11467,evts="一个会飞的人对你出手，他称自己是渡劫期修士。",attrs_change=[],is_rand_evt=,prev_conds="EVT?[21457]",out_conds="EVT?[10507]",first_branch="",branch=""};
get(_) ->
	undefined.

get_id(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.id;
get_id(_) ->
	undefined.

get_evts(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.evts;
get_evts(_) ->
	undefined.

get_attrs_change(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.attrs_change;
get_attrs_change(_) ->
	undefined.

get_is_rand_evt(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.is_rand_evt;
get_is_rand_evt(_) ->
	undefined.

get_prev_conds(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.prev_conds;
get_prev_conds(_) ->
	undefined.

get_out_conds(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.out_conds;
get_out_conds(_) ->
	undefined.

get_first_branch(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.first_branch;
get_first_branch(_) ->
	undefined.

get_branch(Val=#cfg_relife_event{}) ->
	Val#cfg_relife_event.branch;
get_branch(_) ->
	undefined.


