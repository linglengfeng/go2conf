-module(cfg_relife_attr).

-export[get/1, get_id/1, get_attr/1, get_name/1].

-record(cfg, {id, attr, name}).

get(1) ->
	#cfg{id=1,attr=" CHR",name="颜值"};
get(2) ->
	#cfg{id=2,attr=" STR",name="体质"};
get(3) ->
	#cfg{id=3,attr=" INT",name="智力"};
get(4) ->
	#cfg{id=4,attr=" MNY",name="家境"};
get(5) ->
	#cfg{id=5,attr=" SPR",name="快乐"};
get(6) ->
	#cfg{id=6,attr=" LIF",name="生命"};
get(_) ->
	undefined.

get_id(Val=#cfg{}) ->
	Val#cfg.id;
get_id(_) ->
	undefined.

get_attr(Val=#cfg{}) ->
	Val#cfg.attr;
get_attr(_) ->
	undefined.

get_name(Val=#cfg{}) ->
	Val#cfg.name;
get_name(_) ->
	undefined.


