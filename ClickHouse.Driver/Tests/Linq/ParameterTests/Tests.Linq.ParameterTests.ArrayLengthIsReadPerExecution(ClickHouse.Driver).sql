-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.Value
FROM
	ArrayLengthTable t
WHERE
	t.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.Value
FROM
	ArrayLengthTable t
WHERE
	t.Id = 2
LIMIT 2

