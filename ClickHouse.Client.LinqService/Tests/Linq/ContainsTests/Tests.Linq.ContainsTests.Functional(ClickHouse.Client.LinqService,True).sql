BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Src

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Src
(
	Id    Int32,
	Int   Nullable(Int32),
	Enum  Nullable(String),
	CEnum Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
	(s.Int IN (-1) OR s.Int IS NULL)
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
	(s.Int NOT IN (2) AND s.Int IS NOT NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.Int NOT IN (-1, 2) OR s.Int IS NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Src

