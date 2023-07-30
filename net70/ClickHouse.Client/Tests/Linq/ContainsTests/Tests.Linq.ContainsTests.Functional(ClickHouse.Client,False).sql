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
(toInt32(1),NULL,NULL,NULL),
(toInt32(2),toInt32(2),'TWO','___Value2___')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (toInt32(-1), toInt32(-2))
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (toInt32(-1), NULL)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (toInt32(-1), toInt32(2))
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int NOT IN (NULL, toInt32(2))
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int NOT IN (toInt32(-1), toInt32(2))
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Src

