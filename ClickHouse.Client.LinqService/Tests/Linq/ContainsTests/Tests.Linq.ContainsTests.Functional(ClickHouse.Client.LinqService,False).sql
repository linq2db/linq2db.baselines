BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (-1, -2)
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (-1, NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (-1, 2)
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int NOT IN (NULL, 2)
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int NOT IN (-1, 2)
LIMIT 1

