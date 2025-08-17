BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 2

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL OR s.NullableInt <> 2

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt IS NULL OR s.NullableInt <> 2)

