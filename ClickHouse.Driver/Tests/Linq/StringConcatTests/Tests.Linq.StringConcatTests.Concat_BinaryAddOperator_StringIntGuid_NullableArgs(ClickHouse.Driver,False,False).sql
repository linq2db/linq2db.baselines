-- ClickHouse.Driver ClickHouse

SELECT
	concat(concat(t.Value1, toString(t.Value2)), lowerUTF8(toString(t.Value3)))
FROM
	StringConcatIntGuidNullEntity t
ORDER BY
	t.ID

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2,
	t1.Value3
FROM
	StringConcatIntGuidNullEntity t1

