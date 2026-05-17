-- ClickHouse.MySql ClickHouse

SELECT
	concat(Coalesce(t.Value1, ''), t.Value2, Coalesce(t.Value3, ''))
FROM
	StringConcatThreeNullEntity t
ORDER BY
	t.ID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2,
	t1.Value3
FROM
	StringConcatThreeNullEntity t1

