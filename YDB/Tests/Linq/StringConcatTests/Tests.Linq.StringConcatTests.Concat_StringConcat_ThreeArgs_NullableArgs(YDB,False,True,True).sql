-- YDB Ydb

SELECT
	t.Value1 || Coalesce(t.Value2, ''u) || Coalesce(t.Value3, ''u) as c1
FROM
	StringConcatThreeNullEntity t
ORDER BY
	t.ID

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value3 as Value3
FROM
	StringConcatThreeNullEntity t1

