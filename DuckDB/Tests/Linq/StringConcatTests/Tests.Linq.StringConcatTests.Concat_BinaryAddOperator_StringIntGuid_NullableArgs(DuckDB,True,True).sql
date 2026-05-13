-- DuckDB

SELECT
	Coalesce(t.Value1, '') || Coalesce(CAST(t.Value2 AS VARCHAR), '') || Coalesce(CAST(t.Value3 AS VARCHAR), '')
FROM
	StringConcatIntGuidNullEntity t
ORDER BY
	t.ID

-- DuckDB

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2,
	t1.Value3
FROM
	StringConcatIntGuidNullEntity t1

