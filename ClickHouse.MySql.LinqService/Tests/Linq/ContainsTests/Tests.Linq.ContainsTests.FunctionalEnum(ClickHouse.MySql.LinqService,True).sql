BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Src
(
	Id    Int32,
	Int   Nullable(Int32),
	Enum  Nullable(String),
	CEnum Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Src
(
	Id,
	Int,
	Enum,
	CEnum
)
VALUES
(
	1,
	NULL,
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Src
(
	Id,
	Int,
	Enum,
	CEnum
)
VALUES
(
	2,
	2,
	'TWO',
	'___Value2___'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.Enum IN ('THREE') OR s.Enum IS NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.Enum NOT IN ('TWO') AND s.Enum IS NOT NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.Enum NOT IN ('THREE', 'TWO') OR s.Enum IS NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

