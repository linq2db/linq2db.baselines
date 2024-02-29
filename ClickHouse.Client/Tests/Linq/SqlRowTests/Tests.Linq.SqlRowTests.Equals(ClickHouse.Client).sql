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
(toInt32(1),toInt32(2),toInt32(3),toInt32(4),toInt32(5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	i.One = i.One AND i.Two = i.One * toInt32(2) AND i.Three = i.Four - toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	i.One = i.One AND i.Two = i.Two AND i.Four = i.Three

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	i.One = i.One AND i.Nil = i.Two AND i.Three = i.Three

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	toInt32(1) = i.One AND i.Nil = i.Nil AND toInt32(3) = i.Three

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	toInt32(1) = i.One AND NULL >= i.Nil AND toInt32(3) = i.Three

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Ints

