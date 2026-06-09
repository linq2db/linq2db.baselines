-- YDB Ydb

SELECT
	t.Value1 || Coalesce(t.Value2, ''u) as c1
FROM
	StringConcatNullEntity t
ORDER BY
	t.ID

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value1 as Value1,
	t1.Value2 as Value2
FROM
	StringConcatNullEntity t1

