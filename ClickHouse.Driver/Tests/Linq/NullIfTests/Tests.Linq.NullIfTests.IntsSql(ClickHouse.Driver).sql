-- ClickHouse.Driver ClickHouse

SELECT
	NULLIF(s.Int, 2)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int = 2

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int <> 2

-- ClickHouse.Driver ClickHouse

SELECT
	NULLIF(s.Int, 4)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int = 4

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.Int <> 4

-- ClickHouse.Driver ClickHouse

SELECT
	s.Int
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	1 = 0

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x

-- ClickHouse.Driver ClickHouse

SELECT
	NULLIF(s.NullableInt, 2)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt = 2 OR x.NullableInt IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	NOT (x.NullableInt = 2 OR x.NullableInt IS NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	NULLIF(s.NullableInt, 4)
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt = 4 OR x.NullableInt IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	NOT (x.NullableInt = 4 OR x.NullableInt IS NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	s.NullableInt
FROM
	Src s
ORDER BY
	s.Int

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src x
WHERE
	x.NullableInt IS NOT NULL

