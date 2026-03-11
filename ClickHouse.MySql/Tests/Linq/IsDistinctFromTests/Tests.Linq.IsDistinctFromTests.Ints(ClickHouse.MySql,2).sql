-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 2

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL OR s.NullableInt <> 2

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int = 2

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt IS NULL OR s.NullableInt <> 2)

