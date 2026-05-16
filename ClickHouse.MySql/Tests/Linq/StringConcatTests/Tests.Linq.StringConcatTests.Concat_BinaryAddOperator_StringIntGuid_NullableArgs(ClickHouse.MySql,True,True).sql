-- ClickHouse.MySql ClickHouse

SELECT
	concat(Coalesce(t.Value1, ''), Coalesce(toString(t.Value2), ''), Coalesce(lowerUTF8(toString(t.Value3)), ''))
FROM
	StringConcatIntGuidNullEntity t
ORDER BY
	t.ID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2,
	t1.Value3
FROM
	StringConcatIntGuidNullEntity t1

