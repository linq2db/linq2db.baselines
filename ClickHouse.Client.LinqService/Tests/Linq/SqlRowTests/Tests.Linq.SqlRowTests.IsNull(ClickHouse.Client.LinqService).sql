BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Ints

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Ints
(
	One   Int32,
	Two   Int32,
	Three Int32,
	Four  Int32,
	Five  Int32,
	Nil   Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Ints
(
	One,
	Two,
	Three,
	Four,
	Five,
	Nil
)
VALUES
(
	1,
	2,
	3,
	4,
	5,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.One IS NULL AND i.Two IS NULL AND i.Three IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.One IS NULL AND i.Nil IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Nil IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Ints

