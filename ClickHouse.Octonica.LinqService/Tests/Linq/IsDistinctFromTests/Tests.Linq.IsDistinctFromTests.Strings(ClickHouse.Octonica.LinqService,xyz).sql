BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NULL OR s.String <> 'xyz'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NULL OR s.NullableString <> 'xyz'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.String IS NULL OR s.String <> 'xyz')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableString IS NULL OR s.NullableString <> 'xyz')

