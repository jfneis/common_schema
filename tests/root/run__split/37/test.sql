update test_cs.test_split set nval = 0;

SET @s := '
  split({foo: bar}: update test_cs.test_split set nval = 1)
  {
  }
  ';
call run(@s);

select distinct nval = 1 from test_cs.test_split;

