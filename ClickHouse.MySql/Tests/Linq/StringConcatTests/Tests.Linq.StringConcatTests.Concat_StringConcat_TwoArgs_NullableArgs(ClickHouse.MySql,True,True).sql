-- ClickHouse.MySql ClickHouse

SELECT
	concat(Coalesce(t.Value1, ''), Coalesce(t.Value2, ''))
FROM
	StringConcatNullEntity t
ORDER BY
	t.ID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2
FROM
	StringConcatNullEntity t1

