BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.Int, 2)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.Int, 4)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int = 4

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 4

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Int
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableInt, 2)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt = 2 OR s.NullableInt IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 2 OR s.NullableInt IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableInt, 4)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt = 4 OR s.NullableInt IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 4 OR s.NullableInt IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.NullableInt
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

