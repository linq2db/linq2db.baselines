-- YDB Ydb

SELECT
	Coalesce(t.Value1, ''u) || Coalesce(CAST(t.Value2 AS Text), ''u) || Coalesce(CAST(t.Value3 AS Text), ''u) as c1
FROM
	StringConcatIntGuidNullEntity t
ORDER BY
	t.ID

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value3 as Value3
FROM
	StringConcatIntGuidNullEntity t1

