BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Src

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Src
(
	Id    Int32,
	Int   Nullable(Int32),
	Enum  Nullable(String),
	CEnum Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (-1, -2)
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (-1, NULL)
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int IN (-1, 2)
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int NOT IN (NULL, 2)
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	s.Id
FROM
	Src s
WHERE
	s.Int NOT IN (-1, 2)
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Src

