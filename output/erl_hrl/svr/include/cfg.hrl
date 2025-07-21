-record(cfg_test11_people, {id, name, age, sex, items, desc}).

-record(cfg_test11_people_ukey, {id, name, age, sex, items, desc}).

-record(cfg_test11_people1, {id, name, age, sex, items, desc}).

-record(cfg_test11_people1_ukey, {id, name, age, sex, items, desc}).

-record(cfg_test_people, {id, name, age, sex, items, desc}).

-record(cfg_relife_age, {id, evts}).

-record(cfg_relife_event, {id, evts, attrs_change, is_rand_evt, prev_conds, out_conds, first_branch, branch}).

-record(cfg_relife_attr, {id, attr, name}).

-record(cfg_relife_attr_ukey, {id, attr, name}).

-record(cfg_relife_talent, {id, name, desc, conds, grade, attr_num, attr_change, exclusive}).

