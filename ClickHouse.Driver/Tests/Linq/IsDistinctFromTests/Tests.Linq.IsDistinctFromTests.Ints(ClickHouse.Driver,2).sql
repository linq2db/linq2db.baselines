-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 2

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL OR s.NullableInt <> 2

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int = 2

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt IS NULL OR s.NullableInt <> 2)

