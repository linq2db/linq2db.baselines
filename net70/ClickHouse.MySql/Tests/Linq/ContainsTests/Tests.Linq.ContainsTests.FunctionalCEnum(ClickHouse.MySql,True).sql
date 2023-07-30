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
(toInt32(1),NULL,NULL,NULL),
(toInt32(2),toInt32(2),'TWO','___Value2___')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN ('___Value3___', '___Value4___')
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.CEnum IN ('___Value3___') OR s.CEnum IS NULL)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN ('___Value3___', '___Value2___')
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN ('___Value2___') AND s.CEnum IS NOT NULL)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN ('___Value3___', '___Value2___') OR s.CEnum IS NULL)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

