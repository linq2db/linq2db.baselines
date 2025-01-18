BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NULL OR s.String <> 'abc'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NULL OR s.NullableString <> 'abc'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.String IS NULL OR s.String <> 'abc')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableString IS NULL OR s.NullableString <> 'abc')

