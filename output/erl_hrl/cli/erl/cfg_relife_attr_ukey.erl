-module(cfg_relife_attr_ukey).

-export[get_attr/1].

-include("../include/cfg.hrl").

get_attr({" STR"}) ->
	[#cfg_relife_attr_ukey{id=2,attr=" STR",name="体质"}];
get_attr({" INT"}) ->
	[#cfg_relife_attr_ukey{id=3,attr=" INT",name="智力"}];
get_attr({" MNY"}) ->
	[#cfg_relife_attr_ukey{id=4,attr=" MNY",name="家境"}];
get_attr({" SPR"}) ->
	[#cfg_relife_attr_ukey{id=5,attr=" SPR",name="快乐"}];
get_attr({" LIF"}) ->
	[#cfg_relife_attr_ukey{id=6,attr=" LIF",name="生命"}];
get_attr({" CHR"}) ->
	[#cfg_relife_attr_ukey{id=1,attr=" CHR",name="颜值"}];
get_attr(_) ->
	[].


