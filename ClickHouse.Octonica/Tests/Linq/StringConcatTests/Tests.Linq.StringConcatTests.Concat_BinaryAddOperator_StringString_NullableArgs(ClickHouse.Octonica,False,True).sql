-- ClickHouse.Octonica ClickHouse

SELECT
	concat(t.Value1, Coalesce(t.Value2, ''))
FROM
	StringConcatNullEntity t
ORDER BY
	t.ID

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2
FROM
	StringConcatNullEntity t1

