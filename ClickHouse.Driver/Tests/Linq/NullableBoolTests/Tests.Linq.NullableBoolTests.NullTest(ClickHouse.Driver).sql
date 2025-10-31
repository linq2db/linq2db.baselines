-- ClickHouse.Driver ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

