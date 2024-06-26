-module(cfg_test_svr1_ukey).

-export[get_id/1, get_name/1, get_age_name/1, get_id_name/1, get_id_age_sex/1].

-record(cfg, {id, name, age, sex, items}).

get_id({1}) ->
	[#cfg{id=1,name="name2",age=10,sex=1,items=[1,2,3]}];
get_id({2}) ->
	[#cfg{id=2,name="name2",age=10,sex=2,items=[1,2,4]}];
get_id(_) ->
	[].

get_name({"name2"}) ->
	[#cfg{id=1,name="name2",age=10,sex=1,items=[1,2,3]},
	#cfg{id=2,name="name2",age=10,sex=2,items=[1,2,4]}];
get_name(_) ->
	[].

get_age_name({10, "name2"}) ->
	[#cfg{id=1,name="name2",age=10,sex=1,items=[1,2,3]},
	#cfg{id=2,name="name2",age=10,sex=2,items=[1,2,4]}];
get_age_name(_) ->
	[].

get_id_name({1, "name2"}) ->
	[#cfg{id=1,name="name2",age=10,sex=1,items=[1,2,3]}];
get_id_name({2, "name2"}) ->
	[#cfg{id=2,name="name2",age=10,sex=2,items=[1,2,4]}];
get_id_name(_) ->
	[].

get_id_age_sex({1, 10, 1}) ->
	[#cfg{id=1,name="name2",age=10,sex=1,items=[1,2,3]}];
get_id_age_sex({2, 10, 2}) ->
	[#cfg{id=2,name="name2",age=10,sex=2,items=[1,2,4]}];
get_id_age_sex(_) ->
	[].


