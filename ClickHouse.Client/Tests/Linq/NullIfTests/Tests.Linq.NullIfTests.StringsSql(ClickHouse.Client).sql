﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	NULLIF(s.String, 'abc')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	NULLIF(s.String, 'xyz')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	NULLIF(s.String, NULL)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	NULLIF(s.NullableString, 'abc')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	NULLIF(s.NullableString, 'xyz')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	NULLIF(s.NullableString, NULL)
FROM
	Src s
ORDER BY
	s.Int

