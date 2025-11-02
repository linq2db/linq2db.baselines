-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	1 = 0

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL

