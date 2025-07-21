-module(cfg_relife_attr_ukey).

-export[get_attr/1].

-record(cfg, {id, attr, name}).

get_attr({" CHR"}) ->
	[#cfg{id=1,attr=" CHR",name="颜值"}];
get_attr({" STR"}) ->
	[#cfg{id=2,attr=" STR",name="体质"}];
get_attr({" INT"}) ->
	[#cfg{id=3,attr=" INT",name="智力"}];
get_attr({" MNY"}) ->
	[#cfg{id=4,attr=" MNY",name="家境"}];
get_attr({" SPR"}) ->
	[#cfg{id=5,attr=" SPR",name="快乐"}];
get_attr({" LIF"}) ->
	[#cfg{id=6,attr=" LIF",name="生命"}];
get_attr(_) ->
	[].


