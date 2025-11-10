-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	1 = 0

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t

