BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Ints

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
	toInt32(1),
	toInt32(2),
	toInt32(3),
	toInt32(4),
	toInt32(5),
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.One > i.One OR i.One = i.One AND i.Two > i.One * toInt32(2) OR i.One = i.One AND i.Two = i.One * toInt32(2) AND i.Three >= i.Four - toInt32(1))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.One > i.One OR i.One = i.One AND i.Two > i.Two OR i.One = i.One AND i.Two = i.Two AND i.Four >= i.Three)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.One > i.One OR i.One = i.One AND i.Two > i.Five OR i.One = i.One AND i.Two = i.Five AND i.Four >= i.Three)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.One > i.One OR i.One = i.One AND i.Nil > i.Two OR i.One = i.One AND i.Nil = i.Two AND i.Four >= i.Three)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(toInt32(2) > i.One OR toInt32(2) = i.One AND NULL > i.Two OR toInt32(2) = i.One AND i.Two IS NULL AND toInt32(3) >= i.Three)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Ints

