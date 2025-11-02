-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NULL

