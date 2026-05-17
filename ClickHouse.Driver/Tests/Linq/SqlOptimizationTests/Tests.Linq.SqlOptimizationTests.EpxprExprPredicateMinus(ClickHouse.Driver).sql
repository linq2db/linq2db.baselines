-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	t.Id > 6

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	5 < t.Id - 1

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	2 > t.Id

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	t.Id < 2

