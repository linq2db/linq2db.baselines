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
(1,NULL,NULL,NULL),
(2,2,'TWO','___Value2___')

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
	s.Enum IN ('THREE', NULL)
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
	s.Enum NOT IN (NULL, 'TWO')
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Enum NOT IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

