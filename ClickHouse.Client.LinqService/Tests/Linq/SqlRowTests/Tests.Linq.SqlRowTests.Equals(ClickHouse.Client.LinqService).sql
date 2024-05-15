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
	i.Two = i.One * 2 AND i.Three = i.Four - 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Four = i.Three

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Nil = i.Two

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	1 = i.One AND i.Nil = i.Nil AND 3 = i.Three

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	1 = i.One AND NULL >= i.Nil AND 3 = i.Three

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Ints

