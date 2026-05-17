-- ClickHouse.Driver ClickHouse

SELECT
	concat(t.Value1, t.Value2)
FROM
	StringConcatNullEntity t
ORDER BY
	t.ID

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2
FROM
	StringConcatNullEntity t1

