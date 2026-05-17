-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

