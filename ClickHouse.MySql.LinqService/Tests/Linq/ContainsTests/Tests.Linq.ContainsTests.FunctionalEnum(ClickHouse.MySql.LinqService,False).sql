﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', NULL)
LIMIT 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum NOT IN (NULL, 'TWO')
LIMIT 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum NOT IN ('THREE', 'TWO')
LIMIT 1

