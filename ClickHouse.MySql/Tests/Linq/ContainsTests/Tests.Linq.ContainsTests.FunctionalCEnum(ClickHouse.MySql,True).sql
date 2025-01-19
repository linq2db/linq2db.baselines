BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN ('___Value3___', '___Value4___')
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.CEnum IN ('___Value3___') OR s.CEnum IS NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN ('___Value3___', '___Value2___')
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN ('___Value2___') AND s.CEnum IS NOT NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN ('___Value3___', '___Value2___') OR s.CEnum IS NULL)
LIMIT 1

