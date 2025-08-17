BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN ('___Value3___', '___Value4___')
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN ('___Value3___', NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN ('___Value3___', '___Value2___')
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum NOT IN (NULL, '___Value2___')
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum NOT IN ('___Value3___', '___Value2___')
LIMIT 1

