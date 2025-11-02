-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.Int, 2)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int = 2

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int <> 2

-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.Int, 4)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int = 4

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int <> 4

-- ClickHouse.MySql ClickHouse

SELECT
	s.Int
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	1 = 0

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x

-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableInt, 2)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt = 2 OR x.NullableInt IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	NOT (x.NullableInt = 2 OR x.NullableInt IS NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableInt, 4)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt = 4 OR x.NullableInt IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	NOT (x.NullableInt = 4 OR x.NullableInt IS NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	s.NullableInt
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt IS NOT NULL

