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
	COUNT(*)
FROM
	Src s
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Src

