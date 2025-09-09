BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int <> 4

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL OR s.NullableInt <> 4

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Int = 4

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt IS NULL OR s.NullableInt <> 4)

