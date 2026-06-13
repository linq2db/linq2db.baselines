-- YDB Ydb

SELECT
	t.Value1 || Unwrap(CAST(t.Value2 AS Text)) || Unwrap(CAST(t.Value3 AS Text)) as c1
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

