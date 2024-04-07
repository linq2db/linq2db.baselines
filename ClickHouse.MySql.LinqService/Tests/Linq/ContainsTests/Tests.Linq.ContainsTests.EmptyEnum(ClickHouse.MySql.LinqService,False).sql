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
	toInt32(1),
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
	toInt32(2),
	toInt32(2),
	'TWO',
	'___Value2___'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Src s
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Src s
WHERE
	1 = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Src s
WHERE
	1 = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

