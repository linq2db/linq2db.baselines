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
	Src s
WHERE
	s.Int = 2

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 2

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
	Src s
WHERE
	s.Int = 4

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 4

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
	Src s
WHERE
	1 = 0

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s

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
	Src s
WHERE
	s.NullableInt = 2 OR s.NullableInt IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 2 OR s.NullableInt IS NULL)

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
	Src s
WHERE
	s.NullableInt = 4 OR s.NullableInt IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 4 OR s.NullableInt IS NULL)

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
	Src s
WHERE
	s.NullableInt IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

