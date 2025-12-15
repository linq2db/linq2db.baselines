-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NULL OR s.String <> 'xyz'

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NULL OR s.NullableString <> 'xyz'

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.String IS NULL OR s.String <> 'xyz')

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableString IS NULL OR s.NullableString <> 'xyz')

