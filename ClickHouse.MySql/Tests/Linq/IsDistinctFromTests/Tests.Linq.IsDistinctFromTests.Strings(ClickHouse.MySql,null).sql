-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NOT NULL

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NOT NULL

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NULL

